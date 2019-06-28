//
// $Revision: $
// $Date: 2018-02-14 10:26:52 +0100 (śro) $
//
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include<fstream>
#include<sstream>
#include<iostream>
#include<cstring>
#include<cstdlib>
#include<ctime>
#include<time.h>
#include<vector>
#include<fromParser.hh>
#include<limits>
#include <quadmath.h>

#if PREC128
#include "cubaq.h"
#else
#include "cuba.h"
#endif



using namespace std;


const string VERSION  = "devel";
const string name   = "integrand";
string method_force = "";
std::map< string , Ptr > functions;
string intname;
stringstream intro;

#ifdef PREC128
const __float128 min___float128 = 1e-30;
#else
const double min_double = 1e-30;
#endif
//const double min_double = 1e100*(std::numeric_limits<double>::min());

////-----------------------------------------------------------------------------
////
////-----------------------------------------------------------------------------
//#ifdef PREC128
//void adjust_xx(__float128 *xarg) {
//#else
//void adjust_xx(double *xarg) {
//#endif
//  for (unsigned i=0; i<6; i++) {
//    if (xarg[i] < min_double) {
//      xarg[i] = min_double;
//      //cout << "adjusted: " << xarg[i] << endl;
//    } else if (1-xarg[i] < min_double) {
//      xarg[i] = 1-min_double;
//      //cout << "adjusted: " << xarg[i] << endl;
//    }
//  }
//}

	
//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
#ifdef PREC128
static int Integrand(const int *ndim, const __float128 xx[],
  const int *ncomp, __float128 ff[], void *userdata) {

  	#define f ff[0]

	__float128* par = reinterpret_cast<__float128*>(userdata);

	__float128 xarg[6];
#else
static int Integrand(const int *ndim, const double xx[],
  const int *ncomp, double ff[], void *userdata) {

  	#define f ff[0]

	double* par = reinterpret_cast<double*>(userdata);

	double xarg[6];
#endif
	for (unsigned i =0; i<6; i++) xarg[i] = xx[i];

	//adjust_xx(xarg);

        stringstream funcstr;
	funcstr << intname << "_ap" << (int) par[3] << "_ep" << (int) par[4];
	f=(functions[funcstr.str()])(xarg, par);

        //cout << xx[0] << " "<< xx[1] << " " << xx[2] << " " << xx[3] << " "  << ff[0] << endl;
        //if (isnan(ff[0]) || isinf(ff[0])) return -999;

        //if (isnan(ff[0]) || isinf(ff[0]))  {
	//  printf("xx: %.20f  %.20f  %.20f  %.20f  %.20f  %.20f\n", 
	//          xx[0], xx[1], xx[2], xx[3], xx[4], xx[5]);
	//  printf("xarg: %.20f  %.20f  %.20f  %.20f  %.20f  %.20f\n", 
	//          xarg[0], xarg[1], xarg[2], xarg[3], xarg[4], xarg[5]);
	//}


  	return 0;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
int main( int argc, char* argv[]) {

  intro << "#---------------------------------------------------------------\n";
  intro << "# sfcalc " << VERSION << "\n";
  #ifdef PREC128
  intro << "#  128 bit\n";
  #else
  intro << "#  64 bit\n";
  #endif
  intro << "#---------------------------------------------------------------\n";

	if( argc != 2 ) {
	  cerr << "Usage:  ./sfcalc inputfile"<<endl;
          exit(1);
	}

	InsertMap();

	string method;
	string comment;
	string outfile;
	// par[0] beta 
	// par[1] theta
	// par[2] number of integral to do
	// par[3] ap
	// par[4] ep
        #ifdef PREC128
	__float128 par[5];
	string parstr[5];
        #else
	double par[5];
        #endif
	vector< pair< int, int > > ap_ep_to_compute;

	string ap,ep;


        //----------------------------------------------------------------------
        // read from card_file
        //----------------------------------------------------------------------
	redo:
	ifstream read_data(argv[1]);

	do {read_data >> comment ;} while(comment[0]!='@');	
	read_data >> intname;

	do {read_data >> comment ;} while(comment[0]!='@');	
	read_data >> ap >> ep;
        ap_ep_to_compute.push_back(pair<int,int> (atoi(ap.c_str()), 
	                                          atoi(ep.c_str())));


        #ifdef PREC128
	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>parstr[0];	

	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>parstr[1];	

	par[0]  = strtoflt128 (parstr[0].c_str(), NULL);
	par[1]  = strtoflt128 (parstr[1].c_str(), NULL);
        #else
	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>par[0];	

	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>par[1];	
        #endif

	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>outfile;	

	do {read_data >> comment ;} while(comment[0]!='@');
	read_data>>method;	

        cout << intro.str() << endl;
        cout << "intname: " << intname << endl;
	cout << "ap, ep: "  << ap_ep_to_compute[0].first << ", "
                           << ap_ep_to_compute[0].second << endl;
//	cout<<"beta: "      <<par[0]<<endl;
//	cout<<"theta: "     <<par[1]<<endl;
	cout<<"outfile: "   <<outfile<<endl;
	cout<<"method: "    << method<<endl;


        if (method_force != "") method = method_force;
        //----------------------------------------------------------------------
	// Integrate with Vegas
        //----------------------------------------------------------------------
	if( method == "Vegas" ) {	

	  int NDIM;
	  int NCOMP;
          #ifdef PREC128
	  __float128 EPSREL;
	  __float128 EPSABS;
	  string EPSRELstr;
	  string EPSABSstr;
          #else
	  double EPSREL;
	  double EPSABS;
          #endif
	  int SEED;
	  long long int MINEVAL;
	  long long int MAXEVAL;
	  long long int NSTART;
	  long long int NINCREASE;
	  long long int NBATCH;
	  int GRIDNO;
	  char* STATEFILE=NULL;		//in the beginning - NULL
	  void* USERDATA=NULL;		//in the beginning -  NULL
	  int verbose;

	  int NVEC;		//CUBA 4_2
	  void* SPIN = NULL;	//CUBA 4_2 ,in the beginning- NULL


	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> NDIM; 	cout<<"NDIM: "<<NDIM<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
          #ifdef PREC128
	  read_data >> EPSRELstr;	//cout<<"EPSREL: "<<EPSREL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> EPSABSstr;	//cout<<"EPSABS: "<<EPSABS<<endl; 
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  EPSREL  = strtoflt128 (EPSRELstr.c_str(), NULL);
	  EPSABS  = strtoflt128 (EPSABSstr.c_str(), NULL);
          #else
	  read_data >> EPSREL;	//cout<<"EPSREL: "<<EPSREL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> EPSABS;	//cout<<"EPSABS: "<<EPSABS<<endl; 
	  do {read_data >> comment ;} while(comment[0]!='@');  
          #endif
	  read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> NVEC; cout<<"NVEC: "<<NVEC<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;

	  string line;
	  read_data>>line;
	  
	  while(line !="@Vegas") {read_data >> line;}
	  
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> SEED;	cout<<"SEED: "<<SEED<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> NSTART;	cout<<"NSTART: "<<NSTART<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> NINCREASE;  cout<<"NINCREASE: "<<NINCREASE<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> NBATCH;	cout<<"NBATCH: "<<NBATCH<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> GRIDNO;	cout<<"GRIDNO: "<<GRIDNO<<endl;
	  

  	  int  comp, fail;
	  long long int neval;
          #ifdef PREC128
  	  __float128 integral[NCOMP], error[NCOMP], prob[NCOMP];
          #else
  	  double integral[NCOMP], error[NCOMP], prob[NCOMP];
          #endif
  	  
	  ofstream result(outfile.c_str());

	  par[3]=ap_ep_to_compute[0].first;
	  par[4]=ap_ep_to_compute[0].second;

	  USERDATA= par;	

	  #ifdef CUBA4_2		//CUBA 4_2 version
	  llVegas(NDIM, NCOMP, Integrand, USERDATA, NVEC,
	  	EPSREL, EPSABS, verbose, SEED,
	  	MINEVAL, MAXEVAL, NSTART, NINCREASE, 
		NBATCH, GRIDNO, STATEFILE, SPIN,
	  	&neval, &fail, integral, error, prob);
	  #endif
	  
	  

          result << "# " << method << endl;
          result.precision(10);
	  result << "# ap = "  << (int) par[3] << " ep = "    << (int) par[4]
	         << " beta = " << (double) par[0] << " theta = " << (double) par[1] << endl;


          comp = 0;
           
	  result << "neval = "  << neval << endl;
	  result << "fail = "   << fail << endl;
	  result << "prob = "   << (double) prob[comp] << endl;
	  result << "result = " << (double) integral[comp] 
	         << " +/- "     << (double) error[comp] << endl;

          result.close();

        //----------------------------------------------------------------------
	// Integrate with Cuhre
        //----------------------------------------------------------------------
	} else if(method == "Cuhre") {
	
	  int NDIM;
	  int NCOMP;
          #ifdef PREC128
	  __float128 EPSREL;
	  __float128 EPSABS;
	  string EPSRELstr;
	  string EPSABSstr;
          #else
	  double EPSREL;
	  double EPSABS;
	  #endif
	  int LAST;
	  long long int MINEVAL;
	  long long int MAXEVAL;
	  int KEY;
	  void* USERDATA=par;	// in the beginning - NULL
	  int verbose;

	  long long int NVEC; 		//CUBA 4_2
	  char* STATEFILE = NULL;//CUBA 4_2, in the begining - NULL
	  void * SPIN = NULL;	//CUBA 4_2, in the beginning - NULL

	  do {read_data >> comment ;} while(comment[0]!='@');	
	  read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');	
	  read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');	
          #ifdef PREC128
	  read_data >> EPSRELstr;	//cout<<"EPSREL: "<<EPSREL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> EPSABSstr;	//cout<<"EPSABS: "<<EPSABS<<endl; 
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  EPSREL  = strtoflt128 (EPSRELstr.c_str(), NULL);
	  EPSABS  = strtoflt128 (EPSABSstr.c_str(), NULL);
          #else
	  read_data >> EPSREL;	//cout<<"EPSREL: "<<EPSREL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');	
	  read_data >> EPSABS;	//cout<<"EPSABS: "<<EPSABS<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');	
	  #endif
	  read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');	
	  read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  	
	  read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');  
	  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;

	  string line; read_data>>line; 
	  while(line !="@Cuhre" ) { read_data >> line; } 

	  do {read_data >> comment ;} while(comment[0]!='@');
	  read_data >> LAST;	cout<<"LAST: "<<LAST<<endl;
	  do {read_data >> comment ;} while(comment[0]!='@');
	  read_data >> KEY;	cout<<"KEY: "<<KEY<<endl;	



  	  int  comp = 0, nregions, fail = 1;
	  long long int neval;
          #ifdef PREC128
  	  __float128 integral[NCOMP], error[NCOMP], prob[NCOMP];
	  #else
	  double integral[NCOMP], error[NCOMP], prob[NCOMP];
	  #endif

	  ofstream result(outfile.c_str());

	  par[3]=ap_ep_to_compute[0].first;
	  par[4]=ap_ep_to_compute[0].second;

	  USERDATA= par;	

          MAXEVAL /= 1e2;
          
	  while (fail == 1) {
            #ifdef CUBA4_2	//CUBA 4_2 version
              llCuhre(NDIM, NCOMP, Integrand, USERDATA, NVEC,
              EPSREL, EPSABS, verbose | LAST,
              (int) MINEVAL, (int) MAXEVAL, KEY, STATEFILE, SPIN,
              &nregions, &neval, &fail, integral, error, prob);
            #endif

            if (isnan((double) integral[comp]) || isinf((double) integral[comp])) {
	    method_force = "Vegas";
	    goto redo;
	    }

            MAXEVAL *= 1e2;
	  }

          result << "# " << method << endl;
          result.precision(10);
	  result << "# ap = "  << (int) par[3] << " ep = "    << (int) par[4]
	         << " beta = " << (double) par[0] << " theta = " << (double) par[1] << endl;


            
	  result << "neval = "  << neval << endl;
	  result << "fail = "   << fail << endl;
	  result << "prob = "   << (double) prob[comp] << endl;
	  result << "result = " << (double) integral[comp]  
	         << " +/- "     << (double) error[comp] << endl;


          result.close();

  }

//        } else if( method == "Suave") {
//	
//	  int NDIM;
//	  int NCOMP;
//	  double EPSREL;
//	  double EPSABS;
//	  int LAST;
//	  int SEED;
//	  double MINEVAL;
//	  double MAXEVAL;
//	  double NNEW;
//	  double FLATNESS;
//	  void* USERDATA=NULL;	   //in the beginning - NULL
//	  int verbose;
//
//	  int NVEC;	// CUBA 4_2
//	  int NMIN;	// CUBA 4_2
//	  char* STATEFILE = NULL;	// CUBA 4_2, in the beginning - NULL
//	  void* SPIN = NULL;	// CUBA 4_2, in the beginning - NULL
//
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;	
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 	
//	  read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');  	
//	  read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');  
//	  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;
//
//	  string line;
//	  read_data>>line;
//	  
//	  while(line !="@Suave" ) { read_data >> line; }
//
//
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> LAST;	cout<<"LAST: "<<LAST<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> SEED;	cout<<"SEED: "<<SEED<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> NNEW;	cout<<"NNEW: "<<NNEW<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> FLATNESS;	cout<<"FLATNESS: "<<FLATNESS<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');  	
//	  read_data >> NMIN;	cout<<"NMIN: "<<NMIN<<endl;
//
//
//
//  	  int  comp, nregions, neval, fail;
//  	  double integral[NCOMP], error[NCOMP], prob[NCOMP];
//  	  
//
//	  ofstream result(outfile.c_str());
//
//	  par[3]=ap_ep_to_compute[0].first;
//	  par[4]=ap_ep_to_compute[0].second;
//
//	  USERDATA= par;	
//
//          #ifdef CUBA4_2	//CUBA 4_2 version
//          Suave(NDIM, NCOMP, Integrand, USERDATA, NVEC,
//                EPSREL, EPSABS, verbose | LAST, SEED,
//                (int) MINEVAL, (int) MAXEVAL, (int) NNEW, NMIN, FLATNESS, 
//	        STATEFILE, SPIN,
//                &nregions, &neval, &fail, integral, error, prob);
//          #else		//CUBA 3 version
//          Suave(NDIM, NCOMP, Integrand, USERDATA,
//                EPSREL, EPSABS, verbose | LAST, SEED,
//                (int) MINEVAL, (int) MAXEVAL, (int) NNEW, NMIN, FLATNESS, 
//                &nregions, &neval, &fail, integral, error, prob);
//          #endif
//	   
//
//           result << "# " << method << endl;
//           result.precision(10);
//	   result << "# ap = "  << par[3] << " ep = "    << par[4]
//	          << " beta = " << par[0] << " theta = " << par[1] << endl;
//
//
//           comp = 0;
//            
//	   result << "neval = " << neval << endl;
//	   result << "fail = "  << fail << endl;
//	   result << "prob = "  << prob[comp] << endl;
//	   result << "result = " << integral[comp]  << " +/- " 
//	          << error[comp] << endl;
//
//           result.close();
//
//
//	} else if(method == "Divonne") {
//          int NDIM;
//          int NCOMP;
//          double EPSREL;
//          double EPSABS;
//          int SEED;
//          double MINEVAL;
//          double MAXEVAL;
//          int KEY1;
//          int KEY2;
//          int KEY3;
//          int MAXPASS;
//          double BORDER;
//          double MAXCHISQ;
//          double MINDEVIATION;
//          int NGIVEN;
//          int LDXGIVEN;
//          int NEXTRA;
//          void* USERDATA=NULL;  
//          int verbose;
//          
//          int NVEC;			//CUBA 4_2
//          char* STATEFILE = NULL; 	//CUBA 4_2
//          void* SPIN = NULL;		//CUBA 4_2
//		
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');	
//	  read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');  	
//	  read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@');  
//	  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;
//
//	  string line;
//	  read_data>>line;
//	  
//	  while(line !="@Divonne" ) { read_data >> line; }
//
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> SEED;		cout<<"SEED: "<<SEED<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> KEY1;		cout<<"KEY1: "<<KEY1<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> KEY2;		cout<<"KEY2: "<<KEY2<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> KEY3;		cout<<"KEY3: "<<KEY3<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> MAXPASS;	cout<<"MAXPASS: "<<MAXPASS<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> BORDER;	cout<<"BORDER: "<<BORDER<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> MAXCHISQ;	cout<<"MAXCHISQ: "<<MAXCHISQ<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> MINDEVIATION; cout<<"MINDEVIATION: "<<MINDEVIATION<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> NGIVEN;	cout<<"NGIVEN: "<<NGIVEN<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> LDXGIVEN;	cout<<"LDXGIVEN: "<<LDXGIVEN<<endl;
//	  do {read_data >> comment ;} while(comment[0]!='@'); 
//	  read_data >> NEXTRA;	cout<<"NEXTRA: "<<NEXTRA<<endl;
//
//  	  int  comp, nregions, neval, fail;
//  	  double integral[NCOMP], error[NCOMP], prob[NCOMP];
//  	  
//
//	  ofstream result(outfile.c_str());
//
//	  par[3]=ap_ep_to_compute[0].first;
//	  par[4]=ap_ep_to_compute[0].second;
//
//	  USERDATA= par;	
//
//          #ifdef CUBA4_2	//CUBA 4_2 version
//          Divonne(NDIM, NCOMP, Integrand, USERDATA, NVEC,
//	          EPSREL, EPSABS, verbose, SEED,
//	          (int) MINEVAL, (int) MAXEVAL, KEY1, KEY2, KEY3, MAXPASS,
//	          BORDER, MAXCHISQ, MINDEVIATION,
//	          NGIVEN, LDXGIVEN, NULL, NEXTRA, NULL, STATEFILE, SPIN,
//	          &nregions, &neval, &fail, integral, error, prob);
//          #endif
//	   
//
//           result << "# " << method << endl;
//           result.precision(10);
//	   result << "# ap = "  << par[3] << " ep = "    << par[4]
//	          << " beta = " << par[0] << " theta = " << par[1] << endl;
//
//
//           comp = 0;
//            
//	   result << "neval = " << neval << endl;
//	   result << "fail = "  << fail << endl;
//	   result << "prob = "  << prob[comp] << endl;
//	   result << "result = " << integral[comp]  << " +/- " 
//	          << error[comp] << endl;
//
//           result.close();
//
 
  return 0;
}	
