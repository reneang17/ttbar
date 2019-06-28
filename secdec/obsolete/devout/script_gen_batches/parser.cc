#include<iostream>
#include<cmath>
#include<sstream>
#include<fstream>
#include<cstdlib>
#include<string>
#include<vector>

#include<sys/types.h> //getpid()
#include<unistd.h>    //getpid()

#include<utility>     //pair


using namespace std;


const string name   ="integrand";
const string integral ="integral";	
const string fromParser= "fromParser";

void CreateMap(stringstream & map)
{
 	map << "inline void InsertMap()"<<endl;
	map << "{"<<endl;
}

void CreateFunction (int& integral_file_number, int& number, 
                     stringstream & parser, const string & prefix, 
		     const string& path) // number numer
{
	string s_number = to_string(number);

	ifstream read_parser1( (path  + prefix + to_string(integral_file_number)
	+"_" +  s_number + ".dat") );

	parser << read_parser1.rdbuf();  

	read_parser1.close();

}

//ścieżka do pliku z całkami, rozszerzenie .dat
int getNumberOfFiles(const string& path){
	string name= "."+to_string(getpid());
	name+= ".txt";
	int number;

	std::ofstream outfile ( name );				// create file
	string command = "ls  " + path +" -l |wc -l > "+name;
	system(command.c_str());

	ifstream read (name);	//open file to read
	read >> number;

	outfile.close();	//close created, temporary file
	read.close();		//close file from read 
	remove(name.c_str());	//delete , temporary file 

	return number-1;
}




int main( int argc, char* argv[]) {

  cout<<"Parsing..."<<endl;
  
  string comment;
  string prefix;
  string path;
  int number;	//number of integrals in file
  
  vector<int> integrals;	//contains numbers of integrals files to compute
  int number_of_integrals;	// number of integrals files
  
  vector  < pair<int,int> >  ap_ep;
  string ap, ep;
  
  //bool map_ready = false;
  
  //creating  beginning of header
  stringstream header;
  ofstream save_header("fromParser.hh");
  
  header <<"#include<map>"<<endl;
  header << "#ifndef fromParser_hh"<<endl;
  header << "#define fromParser_hh"<<endl<<endl;
  
  
  
  header << "typedef double (*Ptr)( const double xx[], double* par);"
  <<endl<<endl; 
  // end of beginning of header
  
  
  stringstream map;
  CreateMap( map);
  
  if (argc  != 2) {
    cerr << "Usage:" << endl << endl;
    cerr << "  " << argv[0] << " file" << endl;
    exit(1);
  }
  ifstream read_data(argv[1]);	//read from card_file
  
  do {read_data >> comment ;} while(comment[0]!='@');	
  //get prefix from file
  read_data>> prefix;
  
  do {read_data >> comment ;} while(comment[0]!='@');	//get path
  read_data>> path;
  
  do {read_data >> comment ;} while(comment[0]!='@'); read_data>> comment;	//get numbers of integrals files
  do										
  {
  	integrals.push_back(atoi(comment.c_str()));
  	read_data>>comment;
  
  } while(comment[0]!='@');
  
  do {read_data >> comment ;} while(comment[0]!='@');	//get ap ep
  read_data >> ap;
  
  if( ap[0] == '2' )	// do for all ap ep
  {
  	ap_ep.push_back( pair<int,int>(0, 0) );
  	ap_ep.push_back( pair<int,int>(0, 1) );
  	ap_ep.push_back( pair<int,int>(1, 0) );
  	ap_ep.push_back( pair<int,int>(1, 1) );
  
  	read_data >>comment;
  } else {
  	read_data >> ep;
  	
  	while( ap[0] != '@' && ep[0] != '@') {
  
  	  ap_ep.push_back( pair<int,int> (atoi( ap.c_str()) , 
  	                                  atoi(ep.c_str()) ) );
  
  	read_data >> ap;
  	read_data >> ep;
  	}
  }
  
  read_data.close();
  
  
  
  if( integrals[0] == 0 )	//we do all integrals
  {
  	number_of_integrals = getNumberOfFiles(path);
  	integrals.clear();	
  
  	for( int i=1 ; i <= number_of_integrals; ++i )
  	{
  		integrals.push_back(i);
  	}
  }
  else			// we do only these written in card_file
  {
  	number_of_integrals = integrals.size();
  }
  
  header << "#define number_of_integrals "<<number_of_integrals
         << endl << endl;
  
  for( int i=0; i <number_of_integrals; ++i) {
  	string tmp_path;
  
  	tmp_path=path + integral + to_string(integrals[i]) + "/";
  
  	for( int j=0; j< ap_ep.size(); ++j )
  	{	
  		string line;
  		stringstream parser;
  		string tmp1_path = tmp_path+ integral +  
  		to_string(integrals[i]) + "_ap_ep_" +  
  		to_string( ap_ep[j].first) +"_"+\
  		to_string( ap_ep[j].second) +"_C/";
  
  		// if file does not contains integrals, we do not create
  		// file
  		if( getNumberOfFiles(tmp1_path ) == 0 )	{ continue; }
  
  
  		string file = fromParser + "_int_" + 
  		to_string(integrals[i]) + "ap_" + 
  		to_string( ap_ep[j].first) + "_ep_" +\
  		to_string( ap_ep[j].second) +"_.cc";
  
  		ofstream save_parser(file);
  
                  cout << file << endl;
  
  
  		parser <<"#include <iostream>"<<endl;
  		parser <<"#include <cmath>"<<endl;
  		parser <<"#include \"fromParser.hh\""<<endl<<endl;
  	
  		parser <<"using namespace std;"<<endl<<endl;
  	
  		parser <<"#define Power(x,n) pow(x,n)"<<endl;
  		parser <<"#define Sqrt(x) sqrt(x)"<<endl;
  		parser <<"#define Log(x) log(x)"<<endl;
  		parser <<"#define Cos(x) cos(x)"<<endl;
  		parser <<"#define Sin(x) sin(x)"<<endl;
  		parser <<"#define Csc(x) 1.0/sin(x)"<<endl;
  	
  		parser <<"#define Pi M_PI"<<endl<<endl;
  	
  		parser <<"#define x1 xx[0]"<<endl;
  		parser <<"#define x2 xx[1]"<<endl;
  		parser <<"#define x3 xx[2]"<<endl;
  		parser <<"#define x4 xx[3]"<<endl;
  		parser <<"#define x5 xx[4]"<<endl<<endl;
  
  		string napis=name  + "_int_" + 
  		to_string(integrals[i]) + "ap_" + 
  		to_string( ap_ep[j].first) + "_ep_" +\
  	        to_string( ap_ep[j].second) ;
  
  		parser << "double " << napis
  		       << "( const double xx[], double* par)" << endl;
  		parser <<"{"<<endl;
  		parser <<"	double be = par[0];"<<endl;
  		parser <<"	double CT = cos(par[1]);"<<endl;
  		parser <<"	double ST = sin(par[1]);"<<endl<<endl;
  	
  		parser <<"	return ";
  
  		number=getNumberOfFiles(tmp1_path); // number integrands
  
  
  		for(int l=1; l<=  number; ++l) {	
  	          CreateFunction(integrals[i],l, parser, prefix, 
  		                  tmp1_path);
  			if(l!=number) { parser<<" + "; }
  		}
  
  		parser <<";"<<endl;
  		parser <<"}"<<endl<<endl;
  
  		header << "double " << napis 
  		       << "( const double xx[], double* par);" << endl;
  		map <<"functions[\""<<napis<<"\" ] ="<<napis << " ;"
  		    << endl;
  
  		save_parser << parser.str();
  
  		save_parser.close();
  	}
  }
  
  header <<"void InsertMap();"<<endl<<endl;
  header << endl <<"extern std::map< std:: string , Ptr > functions;"
         << endl <<endl; 
  
  
  map <<"}"<<endl<<endl;
  map <<"#endif"<<endl;
  
  save_header << header.str();
  save_header << map.str();
  
  save_header.close();
  
  return 0;
}
