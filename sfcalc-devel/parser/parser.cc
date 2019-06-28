#include <iostream>
#include <cmath>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <string>
#include <vector>
#include <glob.h>
#include <typeinfo>

#include <utility>     //pair
#include "InputDat.hh"


using namespace std;


const string name   ="integrand";
const string fromParser= "fromParser";
const string libdirname ="../libint";
const string prefix = "int";
string redundantlist[] = {
// tadpole + abelian redundancies
"int13_17", "int13_18", "int14_17", "int14_18", "int34_13",
"int1313_1", "int1313_3", "int1414_1", "int1414_3", "int3434_1",

"col13_17", "col13_18", "col14_17", "col14_18", "col34_13",
"col1313_1", "col1313_3", "col1414_1", "col1414_3", "col3434_1",

//symmetries
"int13_2", "int13_6", "int13_8", "int13_10", "int14_2", "int14_1",
"int14_6", "int14_5", "int14_8", "int14_7", "int14_10", "int14_9",
"int34_2", "int34_7", "int34_8", "int34_9", "int34_12",
"int1433_3", "int3334_2",

"col13_2", "col13_6", "col13_8", "col13_10", "col14_2", "col14_1",
"col14_6", "col14_5", "col14_8", "col14_7", "col14_10", "col14_9",
"col34_2", "col34_7", "col34_8", "col34_9", "col34_12",
"col1433_3", "col3334_2"
};

string redundantints;

//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
string tostr(int i) {
  stringstream str;
  str << i;
  return str.str();
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
int ctoi (const char c) { return (int) c - 48; }


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
void CreateMap(stringstream & map) { map << "inline void InsertMap() {"<<endl; }


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
void add_variable_definitions(int flag, stringstream &stream, int precision) {

    if (precision == 64) {
      if (flag == 4 || flag == 6) {
        stream <<"  double be = par[0];"<<endl;
        stream <<"  double CT = cos(par[1]);"<<endl;
      }
      if (flag == 6) {
        stream <<"  double ST = sin(par[1]);"<<endl;
      }
    } else if (precision == 128) {
      if (flag == 4 || flag == 6) {
        stream <<"  __float128 be = par[0];"<<endl;
        stream <<"  __float128 CT = cosq(par[1]);"<<endl;
      }
      if (flag == 6) {
        stream <<"  __float128 ST = sinq(par[1]);"<<endl;
      }
    }
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
int CreateFunction (string name, stringstream & parser, const string& path,
                    bool wgt = false) {

  int val = 0;
  
  ifstream read_parser1(name.c_str());
  string str0 = "0\n";
  stringstream sstr_read;
  sstr_read << read_parser1.rdbuf(); 
  // if the value of the parsed function is exaclty zero  and it is not 
  // a weight file - do not parse it 
  if(sstr_read.str().compare(str0) == 0 && !wgt) {return -1;
  // otherwise, parse the function
  }else {
    parser << "+ " << sstr_read.str();  
    read_parser1.close();
    // determine whether our function depends on CT, ST, be
    // npos means that the string has not been found
    bool found_ct = (sstr_read.str().find("CT") != string::npos);
    bool found_st = (sstr_read.str().find("ST") != string::npos);
    bool found_be = (sstr_read.str().find("be") != string::npos);
    if (found_ct) val +=1;
    if (found_st) val +=2;
    if (found_be) val +=3;
    return val;
  }

}

//-----------------------------------------------------------------------------
// Get list of files in a directory.
// The returned object has two memeber functions: gl_pathc, which gives the
// number of files and gl_pathv, which provides a pointer to a list of files.
//-----------------------------------------------------------------------------
glob_t getfiles(const string& path) {

  glob_t glob_result;
  string command = path+"/int*";
  glob(command.c_str(), GLOB_TILDE, NULL, &glob_result); 
  return glob_result;

}


//-----------------------------------------------------------------------------
// 
//-----------------------------------------------------------------------------
int main( int argc, char* argv[]) {

  // ---------------------------------------------------------------------------
  // create redundancies string
  for (unsigned i=0;i< sizeof(redundantlist)/sizeof(redundantlist[0]); i++) {
    redundantints += (redundantlist[i]+"#");
  }

  // ---------------------------------------------------------------------------
  // read from card_file
  InputDat inputdat("input.dat");

  vector<string> dirs = inputdat.value_list("dirs+");
  bool combine = inputdat.value<bool>("combine");
  string poles = inputdat.value<string>("poles");
  string ints = inputdat.value<string>("ints");
  int precision = inputdat.value<int>("precision");
  bool with_redundant = inputdat.value<bool>("withredundant");
  cout << inputdat.description() << endl;

  // ---------------------------------------------------------------------------
  // choose the poles
  vector  < pair<int,int> >  ap_ep;
  if (poles == "all" || poles == "low") { 
    const string allpoles[] = {"20", "21", "22", "23",
                               "10", "11", "12", "13",
			       "00", "01", "02", "03",
			       "15", "25", "05"};
			    
    for (unsigned i=0; i<sizeof(allpoles)/sizeof(allpoles[0]);i++) {
      if (poles == "low" && allpoles[i] == "00") continue;
      cout << "Generating files for pole: "  << allpoles[i] << endl;
      ap_ep.push_back(pair<int,int>(ctoi(allpoles[i][0]),ctoi(allpoles[i][1])));
    }
  
  } else {
    cout << "Generating files for pole: "  << poles << endl;
    ap_ep.push_back(pair<int,int>(ctoi(poles[0]), ctoi(poles[1])));
  }


  //------------------------------------
  // creating  beginning of the .hh file 
  stringstream header;

  //------------------------------------
  // creating integrals.dat file 
  stringstream intstream;
  
  header << "#include<map>" << endl;
  //header << "#include<gsl/gsl_sf_psi.h>" << endl;
  header << "#include<iostream>" << endl;
  header << "#include<cstdlib>" << endl;
  header << "#ifndef fromParser_hh" <<endl;
  header << "#define fromParser_hh" << endl << endl;
  if (precision == 64) {
    header << "#define Power(x,n) pow(x,n)"<<endl << endl;
    header << "#define Sqrt(x) sqrt(x)" <<endl;
    header << "#define Log(x) log(x)" <<endl;
    header << "#define Cos(x) cos(x)" <<endl;
    header << "#define Sin(x) sin(x)" <<endl;
    header << "#define Csc(x) (1.0/sin(x))" <<endl;
  } else if (precision == 128) {
    header << "#include<quadmath.h>" << endl;
    header << "#define Power(x,n) powq(x,n)"<<endl << endl;
    header << "#define Sqrt(x) sqrtq(x)" <<endl;
    header << "#define Log(x) logq(x)" <<endl;
    header << "#define Cos(x) cosq(x)" <<endl;
    header << "#define Sin(x) sinq(x)" <<endl;
    header << "#define Csc(x) (1.0/sinq(x))" <<endl;
  }
  //header << "#define PolyGamma(2,1) -2.4041138063191885708" <<endl;
  header << "#define EulerGamma 0.57721566490153286061" << endl;
  //header << "#define PolyGamma(x,y) gsl_sf_psi_n(x,y)" <<endl;
  header << "#define Pi 3.141592654" <<endl <<endl;
  //header << "#define Pi M_PI" <<endl <<endl;
  header << "using namespace std;" << endl;
  header << endl << endl; 

  if (precision == 64) {
    header << "typedef double (*Ptr)( const double xx[], double* par);" << endl;
    header << "inline double Zeta(const int n) {" << endl;
    header << "  if (n == 3) { return 1.2020569031595942854;" << endl;
    header << "  } else {" << endl;
    header << "    cerr << \"Error: Unknown Zeta argument:!\" << endl;" << endl;
    header << "    exit(1);" << endl;
    header << "  }" << endl;
    header << "}" << endl;
    header << "inline double PolyGamma(const int n, const int m) {" << endl;
    header << "  if (n == 2 && m == 1) { return -2.4041138063191885708;" << endl;
    header << "  } else {" << endl;
    header << "    cerr << \"Error: Unknown argument:!\" << endl;" << endl;
    header << "    exit(1);" << endl;
    header << "  }" << endl;
    header << "}" << endl;
    header << "inline double PolyGamma(const int n, const double m) {" << endl;
    header << "  if (n == 0 && (fabs(m-0.5)<1e-10)) { return -1.963510026;" << endl;
    header << "  } else {" << endl;
    header << "    cerr << \"Error: Unknown argument:!\" << endl;" << endl;
    header << "    exit(1);" << endl;
    header << "  }" << endl;
    header << "}" << endl;
  } else if (precision == 128 ) {
    header << "typedef __float128 (*Ptr)( const __float128 xx[], __float128* par);" << endl;
    header << endl << endl; 
  }

  
  stringstream map;
  CreateMap(map);
  
  //----------------------------------------------------------------------------
  // Loop over colour structures (int13, int1333, ...)
  //----------------------------------------------------------------------------
  vector<int> integrals; 
  for (unsigned ndir=0; ndir < dirs.size(); ndir++) {
  
        // determine whether we have to do with 'int' or 'col' directory
        // npos means that the string has not been found
        //bool found_int = (dirs[ndir].find("int") != string::npos);
        bool found_col = (dirs[ndir].find("col") != string::npos);

        // list of integrals within the colour strucutre (int1, int2, ...)
  	glob_t integrals_in_colour_structure = getfiles("../"+dirs[ndir]);

        cout << "[directory/nint] " << dirs[ndir] <<  "/" 
	     << integrals_in_colour_structure.gl_pathc << endl;

        // create list of integrals
  	integrals.clear();	
  	for(unsigned int i=0 ; i<integrals_in_colour_structure.gl_pathc; ++i) {
	  integrals.push_back(i+1);}


        //----------------------------------------------------------------------
	// Loop over integrals in the colour structure
        //----------------------------------------------------------------------
        for(unsigned int i=0; i <integrals_in_colour_structure.gl_pathc; ++i) {

          string tmp_path_part = 
	                (string) integrals_in_colour_structure.gl_pathv[i]+"/";


	  string tmpstr (tmp_path_part);
	  size_t beg= tmpstr.find_last_of("int")+1;
	  size_t end= tmpstr.find_last_of("/");
	  string intnum = tmpstr.substr(beg,end-beg);

	  string weight_func_name = "W" + dirs[ndir] + "_" + intnum;

          string mark = dirs[ndir] + "_" + intnum + "#";

	  string weight_file_nameW  = tmp_path_part+"int"+intnum+"_WDef1.dat";
	  string weight_file_nameWW = tmp_path_part+"int"+intnum+"_WDef2.dat";

          if (ints != "-999" && ints.find(mark) == string::npos) continue;
          if (redundantints.find(mark) != string::npos
	      && !with_redundant) continue;


          // creating weight file
          stringstream weight;
          if (found_col) {
	    stringstream strexpr;
	    weight << "#include <quadmath.h>" << endl << endl;
            weight <<"#define W(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11) " 
	           << weight_func_name 
		   << "(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11, par)\n" <<endl;
	    // W
	    int flag = -100;
            if (precision == 64) {
              weight <<"inline double " << weight_func_name;
	      weight << " (const double x5, const double x6, ";
              weight << "const double k1, const double k2, const double k3, ";
              weight << "const double l1, const double l2, const double l3, ";
              weight << "const double kl1, const double kl2, const double kl3, ";
              weight << "double* par) {" << endl;
            } else if (precision == 128) {
              weight <<"inline __float128 " << weight_func_name;
	      weight << " (const __float128 x5, const __float128 x6, ";
              weight << "const __float128 k1, const __float128 k2, const __float128 k3, ";
              weight << "const __float128 l1, const __float128 l2, const __float128 l3, ";
              weight << "const __float128 kl1, const __float128 kl2, const __float128 kl3, ";
              weight << "__float128* par) {" << endl;
	    }

            //weight << "  double be = par[0];"<<endl;
            //weight << "  double CT = cos(par[1]);"<<endl;
            //weight << "  double ST = sin(par[1]);"<<endl<<endl;
  

            ////////////////// to be removed ////
            //cout << weight_func_name  << endl;
            //cout << tmp_path_part << endl;
	    //cout << weight_file_nameW << endl;
	    /////////////////////////////////////

            flag = CreateFunction(weight_file_nameW, strexpr, tmp_path_part, 
	                          true);

            add_variable_definitions(flag, weight, precision);

            weight << "  return ";
            weight << strexpr.str();
            weight << ";"; 
            weight << "}"; 
	    weight << endl << endl;

            // WW
	    flag = -100;
	    strexpr.str(std::string());
	    strexpr.clear();
            if (precision == 64) {
              weight <<"inline double W" << weight_func_name;
	      weight << " (const double x5, const double x6, ";
              weight << "const double k1, const double k2, const double k3, ";
              weight << "const double l1, const double l2, const double l3, ";
              weight << "const double kl1, const double kl2, const double kl3, ";
              weight << "double* par) {" << endl;
            } else if (precision == 128) {
              weight <<"inline __float128 W" << weight_func_name;
	      weight << " (const __float128 x5, const __float128 x6, ";
              weight << "const __float128 k1, const __float128 k2, const __float128 k3, ";
              weight << "const __float128 l1, const __float128 l2, const __float128 l3, ";
              weight << "const __float128 kl1, const __float128 kl2, const __float128 kl3, ";
              weight << "__float128* par) {" << endl;
	    }

            flag = CreateFunction(weight_file_nameWW, strexpr, tmp_path_part, 
	                          true);

            add_variable_definitions(flag, weight, precision);

            //weight << "  return 0";
            weight << "  return ";
            weight << strexpr.str();
            weight << ";"; 
            weight << "}"; 
          }

	  string weight_name = dirs[ndir] + "_weight_" + intnum+ ".hh";
          //--------------------------------------------------------------------
          // Loop over poles in the integral 
          //--------------------------------------------------------------------
          for(unsigned j=0; j<ap_ep.size(); ++j) {
            string line;
	    // creating .cc file
            stringstream parser;
            string tmp_path = tmp_path_part + prefix +
            intnum + "_ap_ep_" +  
            tostr(ap_ep[j].first) +"_"+\
            tostr(ap_ep[j].second) +"_C/";

            // if file does not contains integrals, we do not create file
            //if( getfiles(tmp_path ).gl_pathc == 0 )	{ continue; }
  
            string file =  dirs[ndir] + "_int_" + 
            intnum + "ap_" + 
            tostr( ap_ep[j].first) + "_ep_" +\
            tostr( ap_ep[j].second) +"_.cc";

            string name_parser = libdirname+"/"+file;

  
            parser <<"#include <iostream>"<<endl;
            parser <<"#include <cmath>"<<endl;
            parser <<"#include \"fromParser.hh\""<<endl<<endl;
	    if (found_col) {
	      parser << "#include \"" << weight_name << "\"" <<endl << endl;
	    }
            
            parser <<"using namespace std;"<<endl<<endl;
            
	    if (found_col) {
              parser << "#define W(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11) " 
	             << weight_func_name 
	  	     << "(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11, par)"
	  	     << endl;
              parser << "#define WW(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11) W" 
	             << weight_func_name 
	  	     << "(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11, par)"
	  	     << endl;
            }

            parser <<"#define x1 xx[0]"<<endl;
            parser <<"#define x2 xx[1]"<<endl;
            parser <<"#define x3 xx[2]"<<endl;
            parser <<"#define x4 xx[3]"<<endl;
            parser <<"#define x5 xx[4]"<<endl;
            parser <<"#define x6 xx[5]"<<endl<<endl;
  
             
            //------------------------------------------------------------------
	    // Loop over integrands
            //------------------------------------------------------------------
            // List of integrands inside of each int?/int?_ap_ep_?_?/
            glob_t integrals_in_poles;	
            integrals_in_poles =getfiles(tmp_path); 

            //------------------------------------------------------------------
	    // Combine integrands for a given pole structure into a single
	    // function
            if (combine) {
	      // Function name
	      stringstream strfunc;
              string funcname = dirs[ndir] +  "_int" + intnum + "_comb_6" + 
	                        "_ap" + tostr( ap_ep[j].first) + 
				"_ep" + tostr( ap_ep[j].second);

              if (precision == 64) {
                parser << "double " << funcname
                       << "(const double xx[], double* par) {" << endl;
              } else if (precision == 128) {
                parser << "__float128 " << funcname
                       << "(const __float128 xx[], __float128* par) {" << endl;
              }


              for(unsigned int l=0; l<integrals_in_poles.gl_pathc; ++l) {
                 CreateFunction(integrals_in_poles.gl_pathv[l], 
				strfunc, tmp_path);

                 //cout << integrals_in_poles.gl_pathv[l] << endl;
	      }
              // Correspond to the case where the integrand is identacally zero.
	      // We choose not to generate the cc file in such situation.
	      if (strfunc.str().size() == 0) {
	        //cout << "Skipping " << tmp_path << endl;
	        continue; 
	      } 
	      // Add definition of variales if they appear in the function body
              if (strfunc.str().find("CT") != string::npos) {
                if (precision == 64) {
                  parser <<"	double CT = cos(par[1]);"<<endl;
                } else if (precision == 128) {
                  parser <<"	__float128 CT = cos(par[1]);"<<endl;
		}
              }
              if (strfunc.str().find("ST") != string::npos) {
                if (precision == 64) {
                  parser <<"	double ST = sin(par[1]);"<<endl;
                } else if (precision == 128) {
                  parser <<"	__float128 ST = sin(par[1]);"<<endl;
		}
              }
              if (strfunc.str().find("be") != string::npos) {
                if (precision == 64) {
                  parser <<"	double be = par[0];"<<endl;
                } else if (precision == 128) {
                  parser <<"	__float128 be = par[0];"<<endl;
		}
              } else if (!found_col) {
	        cout << funcname << " is constant" << endl;
	        parser << "// constant" << endl;
              }

              // If function is nontrivial - add it to the cc stream 
	      parser << endl << "  return ";
	      parser << strfunc.str();
              parser <<";}"<<endl << endl;;

              // Add function definition to the header
              if (precision == 64) {
                header << "double " << funcname 
                          << "(const double xx[], double* par);" << endl;
              } else if (precision == 128) {
                header << "__float128 " << funcname 
                          << "(const __float128 xx[], __float128* par);" << endl;
              }
              map <<"functions[\""<<funcname<<"\"] = "<<funcname << ";"
                     << endl;
  
              intstream << funcname << endl;
  
	    } else {
	      int flag = -100;

	      if (integrals_in_poles.gl_pathc == 0) {
	        //cout << "Skipping " << tmp_path << endl;
	        continue; 
	      } 

              string funcsum = "";
              string funcsumname = dirs[ndir] +  "_int" + intnum + "_comb_6" + 
	                        "_ap" + tostr( ap_ep[j].first) + 
				"_ep" + tostr( ap_ep[j].second);

              for(unsigned int l=0; l<integrals_in_poles.gl_pathc; ++l) {
	         stringstream strfunc;
	         stringstream strexpr;

	         string tmpstr (integrals_in_poles.gl_pathv[l]);
	         size_t beg = tmpstr.find_last_of("/")+1;
	         size_t end = tmpstr.find(".dat");
	         string middle = tmpstr.substr(beg,end-beg);

                 string funcname = dirs[ndir] + "_"+ middle + "_ap" + 
                                   tostr( ap_ep[j].first) + "_ep" +
                                   tostr( ap_ep[j].second);

                if (precision == 64) {
                   strfunc << "double " << funcname
                           << "(const double xx[], double* par) {" << endl;
                } else if (precision == 128) {
                   strfunc << "__float128 " << funcname
                           << "(const __float128 xx[], __float128* par) {" << endl;
	        }
	         strexpr << endl << "  return ";
                 flag = CreateFunction(integrals_in_poles.gl_pathv[l], 
	                               //i+1,l+1, 
				       strexpr, tmp_path);


		 // Correspond to the case where the integrand is identacally
		 // zero.  We choose not to generate the cc file in such
		 // situation.
	         if (flag == -1) {
	           //cout << "Skipping " << tmp_path << endl;
	           continue; 
	         } 
	         if (flag == 4 || flag == 6) {
                  if (precision == 64) {
                     strfunc <<"	double be = par[0];"<<endl;
                     strfunc <<"	double CT = cos(par[1]);"<<endl;
                  } else if (precision == 128) {
                     strfunc <<"	__float128 be = par[0];"<<endl;
                     strfunc <<"	__float128 CT = cos(par[1]);"<<endl;
		  }
                 }
	         if (flag == 6) {
                  if (precision == 64) {
                    strfunc <<"	double ST = sin(par[1]);"<<endl;
                  } else if (precision == 128) {
                    strfunc <<"	__float128 ST = sin(par[1]);"<<endl;
		  }
                 }
	         parser << strfunc.str();
	         parser << strexpr .str();
                 parser <<";}"<<endl << endl;;

                  if (precision == 64) {
                    header << "double " << funcname 
                           << "(const double xx[], double* par);" << endl;
                  } else if (precision == 128) {
                    header << "__float128 " << funcname 
                           << "(const __float128 xx[], __float128* par);" << endl;
		  }
                 map <<"functions[\""<<funcname<<"\"] = "<<funcname << ";"
                        << endl;
  
                 intstream << funcname << endl;
  
                 funcsum += " + " + funcname + "(xx, par)";
              }

              // construct the sum-function
                  if (precision == 64) {
                    parser << "double " << funcsumname
                           << "(const double xx[], double* par) {" << endl;
                    parser << "  return " << funcsum << ";}" <<  endl;
                    header << "double " << funcsumname 
                           << "(const double xx[], double* par);" << endl;
                  } else if (precision == 128) {
                    parser << "__float128 " << funcsumname
                           << "(const __float128 xx[], __float128* par) {" << endl;
                    parser << "  return " << funcsum << ";}" <<  endl;
                    header << "__float128 " << funcsumname 
                           << "(const __float128 xx[], __float128* par);" << endl;
		  }
              map << "functions[\""<<funcsumname<<"\"] = "<<funcsumname << ";"
                  << endl;
              intstream << funcsumname << endl;
	    }

               

            //------------------------------------------------------------------
	    // Save content of 'parser' string stream to a file
            ofstream file_cc(name_parser.c_str());
            file_cc << parser.str();
            file_cc.close();

	    string command = "wc -l " + name_parser + 
	    " | sed 's/\\// /g' | awk '{print $4 \" \" $1}'";
	    //string command = "wc -l < " + name_parser;
	    int syserr= system(command.c_str());
	    if (syserr != 0 ) {
	      cerr << "Error: " << syserr << endl;
            }
          }

          if (found_col) {
            string weight_file_name = libdirname+"/"+weight_name.c_str();
            ofstream save_weight(weight_file_name.c_str());
            save_weight << weight.str();
            save_weight.close();
          }
        }
  }

  header <<"void InsertMap();"<<endl<<endl;
  header << endl <<"extern std::map< std:: string , Ptr > functions;"
         << endl <<endl; 
  
  
  map <<"}"<<endl<<endl;
  map <<"#endif"<<endl;
  
  //------------------------------------------------------------------
  // Save content of 'header' string stream to a file
  string name_header = libdirname+"/fromParser.hh";
  ofstream file_hh(name_header.c_str());
  file_hh << header.str();
  file_hh << map.str();
  file_hh.close();

  //------------------------------------------------------------------
  // Save content of 'integral' string stream to a file
  string name_integrals = libdirname+"/integrals.dat";
  ofstream file_dat(name_integrals.c_str());
  file_dat<< intstream.str();
  file_dat.close();
  
  return 0;
}
