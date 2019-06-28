/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <stdio.h>
#include <stack>
#include <algorithm>

#include "Utilities.hpp"

/******************************************************************************
 *                                                                            *
 * IPCPipe                                                                    *
 *                                                                            *
 ******************************************************************************/

IPCPipe::IPCPipe(const char* command)
{
  int in_pipe[2];
  int out_pipe[2];
  
  if (pipe(in_pipe))
    {
      cerr << "IPCPipe:: \"" << command << "\" input pipe failed" << endl;
      exit(1);
    }
  
  if (pipe(out_pipe))
    {
      cerr << "IPCPipe:: \"" << command << "\" output pipe failed" << endl;
      exit(1);
    }
  
  _pid = fork();

  if (_pid == 0)
    {
      close(in_pipe[1]);
      close(out_pipe[0]);
      
      dup2(in_pipe[0], 0);
      dup2(out_pipe[1], 1);
      dup2(out_pipe[1], 2);

      close(in_pipe[0]);
      close(out_pipe[1]);

      if (!execlp(command, command, NULL))
	{
	  cerr << "IPCPipe:: \"" << command << "\" exec failed" << endl;
	  exit(1);
	}
    }
  else if (_pid < 0)
    {
      cerr << "IPCPipe:: \"" << command << "\" fork failed" << endl;
      exit(1);
    }
  else
    {
      close(in_pipe[0]);
      close(out_pipe[1]);

      _in_fd = in_pipe[1];
      _out_fd = out_pipe[0];
    }
}

void
IPCPipe::write(const string& message)
{
#ifdef IO_DEBUG
  cout << "in: " << message << endl;
#endif

  if (::write(_in_fd, message.c_str(), message.size()) < 0)
    {
      perror("IPCPipe::write");
      exit(1);
    }
}

string
IPCPipe::read(const char delimiter)
{
  string output;

  const int buffer_size = 4096;
  char buffer[buffer_size];
  char* position;
  int size;

  do
    {
      size = ::read(_out_fd, buffer, buffer_size);
      if (size < 0)
	{
	  perror("IPCPipe::read");
	  exit(1);
	}

      position = std::find(buffer, buffer+size, delimiter);

      if (position == buffer+size) output.append(buffer, buffer+size);
    }
  while (position == buffer+size);

  output.append(buffer, position);

#if IO_DEBUG
  cout << "out: " << output << endl;
#endif

  return output;
}

/******************************************************************************
 *                                                                            *
 * MathematicaInterface                                                       *
 *                                                                            *
 ******************************************************************************/

#ifdef MATHLINK

void
MathematicaInterface::connect()
{
  _environment = MLInitialize((MLParametersPointer) 0);

  if (_environment == (MLENV) 0)
    {
      cerr << "MathematicaInterface:: Could not initialize MathLink" << endl;

      exit(1);
    }

  long error;
  const char connection[] = "-linkname \"math -mathlink -noinit\"";
  _link = MLOpenString(_environment, connection, &error);

  if (_link == (MLINK) 0)
    {
      cerr << "MathematicaInterface:: Could not open link" << endl;

      exit(1);
    }

  if (!MLConnect(_link))
    {
      cerr << "MathematicaInterface:: Could not connect" << endl;
    }

  while (MLNextPacket(_link) != INPUTNAMEPKT) MLNewPacket(_link);
  MLNewPacket(_link);
}

void
MathematicaInterface::disconnect()
{
  MLPutFunction(_link, "EvaluatePacket", 1);
  MLPutFunction(_link, "Exit", 0);
  MLEndPacket(_link);

  if (_link) MLClose(_link);

  if (_environment) MLDeinitialize(_environment);
}

void
MathematicaInterface::clear_cache()
{
  MLPutFunction(_link, "EvaluatePacket", 1);
  MLPutFunction(_link, "Developer`ClearCache", 0);
  MLEndPacket(_link);
  
  while (MLNextPacket(_link) != RETURNPKT) MLNewPacket(_link);
  MLNewPacket(_link);
}

int
MathematicaInterface::memory_in_use() const
{
  MLPutFunction(_link, "EvaluatePacket", 1);
  MLPutFunction(_link, "MemoryInUse", 0);
  MLEndPacket(_link);

  while (MLNextPacket(_link) != RETURNPKT) MLNewPacket(_link);

  int mem;
  MLGetInteger(_link, &mem);

  return mem;
}

string
MathematicaInterface::evaluate(const string& expression)
{
  if (_memory_in_use_limit && memory_in_use() > _memory_in_use_limit)
    {
      reinitialize();
      //clear_cache();
    }

  string input("("+expression+")");
  stack<int> function_level;
  int parenthesis_level = 0;
  int pos = -1;

  while ((pos = input.find_first_of("()", pos+1)) != string::npos)
    switch (input[pos])
      {
      case '(':
	if (pos && isalnum(input[pos-1]))
	  {
	    input[pos] = '[';
	    function_level.push(parenthesis_level);
	  }
	++parenthesis_level;
	break;
      case ')':
	--parenthesis_level;
	if (!function_level.empty() && function_level.top() == parenthesis_level)
	  {
	    input[pos] = ']';
	    function_level.pop();
	  }
	break;
      }

  MLPutFunction(_link, "EvaluatePacket", 1);
  MLPutFunction(_link, "ToString", 1);
  MLPutFunction(_link, "InputForm", 1);
  MLPutFunction(_link, "ToExpression", 1);
  MLPutString(_link, input.c_str());
  MLEndPacket(_link);
  
  int pkt;
  const char* output;

  while ((pkt = MLNextPacket(_link)) != RETURNPKT)
    {
      switch (pkt)
	{
	case MESSAGEPKT:
	  break;
	case TEXTPKT:
	  MLGetString(_link, &output);
	  cerr << "MathematicaInterface:: In input" << endl;
	  cerr << expression << endl;
	  cerr << output << endl;
	  MLDisownString(_link, output);
	  exit(1);
	  break;
	case ILLEGALPKT:
	  if (MLError(_link))
	    {
	      cerr << MLErrorMessage(_link) << endl;
	      exit(1);
	    }
	default:
	  cerr << "MathematicaInterface:: Unexpected packet type " << pkt << endl;
	  exit(1);
	}

      MLNewPacket(_link);
    }

  MLGetString(_link, &output);
  string result(output);
  MLDisownString(_link, output);
  pos = -1;

  while ((pos = result.find_first_of("[]", pos+1)) != string::npos)
    switch (result[pos])
      {
      case '[':
	result[pos] = '(';
	break;
      case ']':
	result[pos] = ')';
	break;
      }

  return result;
}

#endif

/******************************************************************************
 *                                                                            *
 * FermatInterface                                                            *
 *                                                                            *
 ******************************************************************************/

FermatInterface::FermatInterface() : _fermat("ferl")
{
  // initialization: no numeric, no prompt, no spaces, no newlines

  _fermat.write("&d\n0\n");
  evaluate("&(M=\'\')");
  evaluate("&U");
  evaluate("&E");
}

string
FermatInterface::evaluate(const string& expression)
{
  const string input = erase_characters(expression, "\n")+";!!(\';\'):\n";
  _fermat.write(input);

  const string output = _fermat.read(';');
  if (output.find("error") != string::npos ||
      output.find("Error") != string::npos ||
      output.find("warning") != string::npos ||
      output.find("Warning") != string::npos)
    {
      cerr << "FermatInterface::evaluate(): error\n\n"
	   << output << "\n\nfor\n\n"
	   << expression << endl;
      exit(1);
    }

  return erase_characters(output, "\n `");
}
