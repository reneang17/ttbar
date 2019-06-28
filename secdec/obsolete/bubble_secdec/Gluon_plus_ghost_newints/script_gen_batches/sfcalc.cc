#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include<fstream>
#include<iostream>
#include<cstring>
#include<ctime>
#include<time.h>
#include<vector>
#include"fromParser.hh"// 
#include<chrono>

#if REALSIZE == 16
#include "cubaq.h"
#elif REALSIZE == 10
#include "cubal.h"
#else
#include "cuba.h"
#endif

//#include<gperftools/profiler.h>


using namespace std;




const string name   ="integrand"; 
std::map< string , Ptr > functions;


	
static int Integrand(const int *ndim, const double xx[],
  const int *ncomp, double ff[], void *userdata) {

  	#define f ff[0]
	double* par = reinterpret_cast<double*>(userdata);
	string function ="integrand_int_" + to_string((int)par[2]) + "ap_" + to_string((int)par[3]) + "_ep_" + to_string((int)par[4]);


	f=(functions[function])(xx, par);
 
  	return 0;
}


int main( int argc, char* argv[])
{
	cout<<"Start program"<<endl;
//	ProfilerStart("Prof.prof");	//CPU PROFILER

 	auto t1 = std::chrono::high_resolution_clock::now();

	if( argc != 2 )
	{
		cout<<"Incorrect input format. You have to use 2 arguments - ./program2.x cardfile"<<endl;
		exit(0);
	}


	InsertMap();


	string method;
	string comment;
	string outfile;
	double par[5];			//par[0]=beta , par[1]= Theta , par[2]= number of integral to do, par[3] ap, par[4] - ep
	vector< pair< int, int > > ap_ep_to_compute;

	string ap,ep;


	ifstream read_data(argv[1]);	//read from card_file


	do {read_data >> comment ;} while(comment[0]!='@');	//ignoring prefix from file
	read_data>> comment;

	do {read_data >> comment ;} while(comment[0]!='@');	//ignore path
	read_data>> comment;

	do {read_data >> comment ;} while(comment[0]!='@'); read_data>> comment;	//ignore numbers of integrals files
	do										
	{
		read_data>>comment;

	} while(comment[0]!='@');

	do {read_data >> comment ;} while(comment[0]!='@');	//ignore ap ep for Parser
	do
	{
		read_data>>comment;

	} while(comment[0]!='@');


	do {read_data >> comment ;} while(comment[0]!='@');	//get ap_ep to calculate, we calculate for all integral files
	 read_data >> ap;

	if( ap[0] == '2' )					//if number 2, means - use all options
	{
		ap_ep_to_compute.push_back( pair<int,int>(0, 0) );
		ap_ep_to_compute.push_back( pair<int,int>(0, 1) );
		ap_ep_to_compute.push_back( pair<int,int>(1, 0) );
		ap_ep_to_compute.push_back( pair<int,int>(1, 1) );

		read_data >>comment;
	}
	else
	{
		read_data >> ep;
		
		
		while( ap[0] != '@' && ep[0] != '@')
		{

			ap_ep_to_compute.push_back( pair<int,int> ( atoi( ap.c_str()) , atoi(ep.c_str()) ) );

			read_data >> ap;
			read_data >> ep;
		}
	}

	

	do {read_data >> comment ;} while(comment[0]!='@');		//get beta
	read_data>>par[0];	cout<<"param beta:"<<par[0]<<endl;

	do {read_data >> comment ;} while(comment[0]!='@');		//get Theta
	read_data>>par[1];	cout<<"param Theta:"<<par[1]<<endl;

	do {read_data >> comment ;} while(comment[0]!='@');		//get Theta

	read_data>>outfile;	cout<<"param outfile:"<<outfile<<endl;

	do {read_data >> comment ;} while(comment[0]!='@');		// get method		
	read_data>>method;	cout<<"method:"<< method<<endl;



	if( method == "Vegas" )						//VEGAS
	{	
		int NDIM;
		int NCOMP;
		double EPSREL;
		double EPSABS;
		int SEED;
		int MINEVAL;
		int MAXEVAL;
		int NSTART;
		int NINCREASE;
		int NBATCH;
		int GRIDNO;
		char* STATEFILE=NULL;			//in the beginning - NULL
		void* USERDATA=NULL;			//in the beginning -  NULL
		int verbose;

		int NVEC;		//CUBA 4_2
		void* SPIN = NULL;	//CUBA 4_2 ,in the beginning- NULL
	
	
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> NDIM; 	cout<<"NDIM: "<<NDIM<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl; 
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> NVEC;		cout<<"NVEC: "<<NVEC<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;
	
	
		string line;
		read_data>>line;
		
		while(line !="@Vegas" )
		{
			read_data >> line;
		}
		
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> SEED;	cout<<"SEED: "<<SEED<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NSTART;	cout<<"NSTART: "<<NSTART<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NINCREASE;	cout<<"NINCREASE: "<<NINCREASE<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NBATCH;	cout<<"NBATCH: "<<NBATCH<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> GRIDNO;	cout<<"GRIDNO: "<<GRIDNO<<endl;
		
	
	  	int  comp, nregions, neval, fail;
	  	double integral[NCOMP], error[NCOMP], prob[NCOMP];
	
	  	
	 	double sum=0;
		double sum_error=0;

		ofstream result(outfile);		//make file for results

			for( int j =1; j <= number_of_integrals; ++j )	// loop for integral files
			{
				par[2]=j;

				result<< "integral: "<< j <<endl;
		
				for( auto i= ap_ep_to_compute.begin(); i!=ap_ep_to_compute.end(); ++i)	//loop for ap ep files
				{	 	 	
					par[3]=(*i).first;
					par[4]=(*i).second;
	
					USERDATA= par;	
					cout<<"Vegas dla ap ep : "<<par[3]<<" "<<par[4]<<endl;
	
					//printf("-------------------- Vegas test --------------------\n");
				
					#ifdef CUBA4_2					//CUBA 4_2 version
	 	 			Vegas(NDIM, NCOMP, Integrand, USERDATA, NVEC,
	 	   				EPSREL, EPSABS, verbose, SEED,
	 	   				MINEVAL, MAXEVAL, NSTART, NINCREASE, NBATCH,
	 	   				GRIDNO, STATEFILE, SPIN,
	 	   				&neval, &fail, integral, error, prob);
					#else						//Cuba 3 version
					Vegas(NDIM, NCOMP, Integrand, USERDATA,
	 	   				EPSREL, EPSABS, verbose, SEED,
	 	   				MINEVAL, MAXEVAL, NSTART, NINCREASE, NBATCH,
	 	   				GRIDNO, STATEFILE,
	 	   				&neval, &fail, integral, error, prob);
					#endif
				
	 	 			printf("VEGAS RESULT:\tneval %d\tfail %d\n",neval, fail);
					
	 	 			for( comp = 0; comp < NCOMP; ++comp )
					{
					 	sum+=integral[comp];
						sum_error+= error[comp];

					result<<"ap ep "<<par[3]<<" "<<par[4]<< " VEGAS RESULT: integral[comp] "<<integral[comp]<<
						" error[comp] "<<error[comp]<<" prob[comp]= "<< prob[comp]<<endl;

						result<<"neval: "<<neval<<" fail: "<<fail<<endl;
	 	   				printf("VEGAS RESULT:\t%.8f +- %.8f\tp = %.3f\n", integral[comp], error[comp], prob[comp]);
					}
				} 
				result<<endl;	

			} result<<"RESULT SUM: "
			        << par[0] <<  " " << par[1] << " "
			        << sum << " +/- " << sum_error << endl;   
				result.close();
	}	
	else
	if( method == "Suave")	//SUAVE
	{
	
		int NDIM;
		int NCOMP;
		double EPSREL;
		double EPSABS;
		int LAST;
		int SEED;
		int MINEVAL;
		int MAXEVAL;
		int NNEW;
		double FLATNESS;
		void* USERDATA=NULL;			//in the beginning - NULL
		int verbose;
	
		int NVEC;			// CUBA 4_2
		int NMIN;			// CUBA 4_2
		char* STATEFILE = NULL;		// CUBA 4_2, in the beginning - NULL
		void* SPIN = NULL;		// CUBA 4_2, in the beginning - NULL
	
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;	
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); 	read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;

		string line;
		read_data>>line;
		
		while(line !="@Suave" )
		{
			read_data >> line;
		}
		
	
	
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> LAST;	cout<<"LAST: "<<LAST<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> SEED;	cout<<"SEED: "<<SEED<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NNEW;	cout<<"NNEW: "<<NNEW<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> FLATNESS;	cout<<"FLATNESS: "<<FLATNESS<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NMIN;	cout<<"NMIN: "<<NMIN<<endl;
	
	
	
	  	int  comp, nregions, neval, fail;
	  	double integral[NCOMP], error[NCOMP], prob[NCOMP];
	  	
	   	double sum=0;
		double sum_error=0;

		ofstream result("result.txt");

			for( int j =1; j <= number_of_integrals; ++j )		// loop for integral files
			{
				par[2]=j;

				result<< "integral: "<< j <<endl;
		
				for( auto i= ap_ep_to_compute.begin(); i!=ap_ep_to_compute.end(); ++i)	//loop for ap ep files
				{	 	 	
					par[3]=(*i).first;
					par[4]=(*i).second;
	
					USERDATA= par;	cout<<"Suave dla: "<<par[3]<<" "<<par[4]<<endl;

		 	 		printf("\n-------------------- Suave test --------------------\n");
	
					#ifdef CUBA4_2							//CUBA 4_2 version
	  				Suave(NDIM, NCOMP, Integrand, USERDATA, NVEC,
	    					EPSREL, EPSABS, verbose | LAST, SEED,
	    					MINEVAL, MAXEVAL, NNEW, NMIN, FLATNESS, STATEFILE, SPIN,
	    					&nregions, &neval, &fail, integral, error, prob);
					#else								//CUBA 3 version
	  				Suave(NDIM, NCOMP, Integrand, USERDATA,
	    					EPSREL, EPSABS, verbose | LAST, SEED,
	    					MINEVAL, MAXEVAL, NNEW, FLATNESS,
	    					&nregions, &neval, &fail, integral, error, prob);
					#endif

	  				printf("SUAVE RESULT:\tnregions %d\tneval %d\tfail %d\n",
	    					nregions, neval, fail);
					
	 	 			for( comp = 0; comp < NCOMP; ++comp )
					{
					 	sum+=integral[comp];
						sum_error+= error[comp];

					result<<"ap ep "<<par[3]<<" "<<par[4]<< " Suave RESULT: integral[comp] "<<integral[comp]<<
						" error[comp] "<<error[comp]<<" prob[comp]= "<< prob[comp]<<endl;
						result<<"neval: "<<neval<<" fail: "<<fail<<endl;
	 	   				printf("Suave RESULT:\t%.8f +- %.8f\tp = %.3f\n", integral[comp], error[comp], prob[comp]);
					}
				} 
				result<<endl;	

	
			} result<<"RESULT SUM: "<<sum; result<<" RESULT ERROR: "<<sum_error<<endl;   result.close();

	}
	else
	if( method == "Divonne" )
	{
		int NDIM;
		int NCOMP;
		double EPSREL;
		double EPSABS;
		int SEED;
		int MINEVAL;
		int MAXEVAL;
		int KEY1;
		int KEY2;
		int KEY3;
		int MAXPASS;
		double BORDER;
		double MAXCHISQ;
		double MINDEVIATION;
		int NGIVEN;
		int LDXGIVEN;
		int NEXTRA;
		void* USERDATA=NULL;    	//wstepnie inicjalizujemy NULL
		int verbose;

		int NVEC;			//CUBA 4_2
		char* STATEFILE = NULL; 	//CUBA 4_2
		void* SPIN = NULL;		//CUBA 4_2
		
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;
	
		string line;
		read_data>>line;
		
		while(line !="@Divonne" )
		{
			read_data >> line;
		}

		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> SEED;		cout<<"SEED: "<<SEED<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> KEY1;		cout<<"KEY1: "<<KEY1<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> KEY2;		cout<<"KEY2: "<<KEY2<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> KEY3;		cout<<"KEY3: "<<KEY3<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> MAXPASS;	cout<<"MAXPASS: "<<MAXPASS<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> BORDER;	cout<<"BORDER: "<<BORDER<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> MAXCHISQ;	cout<<"MAXCHISQ: "<<MAXCHISQ<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> MINDEVIATION;	cout<<"MINDEVIATION: "<<MINDEVIATION<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> NGIVEN;	cout<<"NGIVEN: "<<NGIVEN<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> LDXGIVEN;	cout<<"LDXGIVEN: "<<LDXGIVEN<<endl;
		do {read_data >> comment ;} while(comment[0]!='@'); read_data >> NEXTRA;	cout<<"NEXTRA: "<<NEXTRA<<endl;
	
	
	  	int  comp, nregions, neval, fail;
	  	double integral[NCOMP], error[NCOMP], prob[NCOMP];
	 
	 	double sum=0;
		double sum_error=0;

		ofstream result("result.txt");

			for( int j =1; j <= number_of_integrals; ++j )		// loop for integral files
			{
				par[2]=j;

				result<< "integral: "<< j <<endl;
		
				for( auto i= ap_ep_to_compute.begin(); i!=ap_ep_to_compute.end(); ++i)	//loop for ap ep files		
				{	 	 	
					par[3]=(*i).first;
					par[4]=(*i).second;
	
					USERDATA= par;	cout<<"Divonne dla: "<<par[3]<<" "<<par[4]<<endl;

	
	  				printf("\n------------------- Divonne test -------------------\n");
	
					#ifdef CUBA4_2					//CUBA 4_2 version 
	  				Divonne(NDIM, NCOMP, Integrand, USERDATA, NVEC,
	  		  			EPSREL, EPSABS, verbose, SEED,
	  		  			MINEVAL, MAXEVAL, KEY1, KEY2, KEY3, MAXPASS,
	  		  			BORDER, MAXCHISQ, MINDEVIATION,
	  		  			NGIVEN, LDXGIVEN, NULL, NEXTRA, NULL, STATEFILE, SPIN,
	  		  			&nregions, &neval, &fail, integral, error, prob);
					#else						//CUBA 3 version
	  				Divonne(NDIM, NCOMP, Integrand, USERDATA,
	  		  			EPSREL, EPSABS, verbose, SEED,
	  		  			MINEVAL, MAXEVAL, KEY1, KEY2, KEY3, MAXPASS,
	  		  			BORDER, MAXCHISQ, MINDEVIATION,
	  		  			NGIVEN, LDXGIVEN, NULL, NEXTRA, NULL,
	  		  			&nregions, &neval, &fail, integral, error, prob);
					#endif
					
	  				printf("DIVONNE RESULT:\tnregions %d\tneval %d\tfail %d\n",
	  		  			nregions, neval, fail);
							
 	 				for( comp = 0; comp < NCOMP; ++comp )
					{
					 	sum+=integral[comp];
						sum_error+= error[comp];
	
						result<<"ap ep "<<par[3]<<" "<<par[4]<< " Divonne RESULT: integral[comp] "<<\
							integral[comp]<<" error[comp] "<<error[comp]<<" prob[comp]= "<< prob[comp]<<endl;
						result<<"neval: "<<neval<<" fail: "<<fail<<endl;
	 	   				printf("Divonne RESULT:\t%.8f +- %.8f\tp = %.3f\n", integral[comp], error[comp],\
							prob[comp]);
					}
				} 
				 result<<endl;	

	
			} result<<"RESULT SUM: "<<sum; result<<" RESULT ERROR: "<<sum_error<<endl;   result.close();

			
	
	
	}
	else
	if( method == "Cuhre")
	{
	
		int NDIM;
		int NCOMP;
		double EPSREL;
		double EPSABS;
		int LAST;
		int MINEVAL;
		int MAXEVAL;
		int KEY;
		void* USERDATA=par;			// in the beginning - NULL
		int verbose;

		int NVEC; 				//CUBA 4_2
		char* STATEFILE = NULL;			//CUBA 4_2, in the begining - NULL
		void * SPIN = NULL;			//CUBA 4_2, in the beginning - NULL
	
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NDIM;	cout<<"NDIM: "<<NDIM<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> NCOMP;	cout<<"NCOMP: "<<NCOMP<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSREL;	cout<<"EPSREL: "<<EPSREL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> EPSABS;	cout<<"EPSABS: "<<EPSABS<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> MINEVAL;	cout<<"MINEVAL: "<<MINEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');	read_data >> MAXEVAL;	cout<<"MAXEVAL: "<<MAXEVAL<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  	read_data >> NVEC;	cout<<"NVEC: "<<NVEC<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');  read_data >> verbose;	cout<<"verbose: "<<verbose<<endl;

		string line;
		read_data>>line;
		
		while(line !="@Cuhre" )
		{
			read_data >> line;
		}
		
	
		do {read_data >> comment ;} while(comment[0]!='@');read_data >> LAST;	cout<<"LAST: "<<LAST<<endl;
		do {read_data >> comment ;} while(comment[0]!='@');read_data >> KEY;	cout<<"KEY: "<<KEY<<endl;	
	
	
	  	int  comp, nregions, neval, fail;
	  	double integral[NCOMP], error[NCOMP], prob[NCOMP];
	
	 	double sum=0;
		double sum_error=0;

		ofstream result("result.txt");

			for( int j =1; j <= number_of_integrals; ++j )			// loop for integral files
			{
				par[2]=j;

				result<< "integral: "<< j <<endl;
		
				for( auto i= ap_ep_to_compute.begin(); i!=ap_ep_to_compute.end(); ++i)	//loop for ap ep files
				{	 	 	
					par[3]=(*i).first;
					par[4]=(*i).second;
	
					USERDATA= par;	cout<<"Cuhre dla: "<<par[3]<<" "<<par[4]<<endl;

	 
	  				printf("\n-------------------- Cuhre test --------------------\n");
	
					#ifdef CUBA4_2					//Cuba 4_2 version
	  				Cuhre(NDIM, NCOMP, Integrand, USERDATA, NVEC,
	    					EPSREL, EPSABS, verbose | LAST,
	    					MINEVAL, MAXEVAL, KEY, STATEFILE, SPIN,
	    					&nregions, &neval, &fail, integral, error, prob);
					#else						//Cuba 3 version
	  				Cuhre(NDIM, NCOMP, Integrand, USERDATA,
	    					EPSREL, EPSABS, verbose | LAST,
	    					MINEVAL, MAXEVAL, KEY,
	    					&nregions, &neval, &fail, integral, error, prob);
					#endif					

	  				printf("CUHRE RESULT:\tnregions %d\tneval %d\tfail %d\n",
	    					nregions, neval, fail);

					
	 	 			for( comp = 0; comp < NCOMP; ++comp )
					{
					 	sum+=integral[comp];
						sum_error+= error[comp];

					result<<"ap ep "<<par[3]<<" "<<par[4]<< " Cuhre RESULT: integral[comp] "<<integral[comp]<<\
						" error[comp] "<<error[comp]<<" prob[comp]= "<< prob[comp]<<endl;
						result<<"neval: "<<neval<<" fail: "<<fail<<endl;
	 	   				printf("Cuhre RESULT:\t%.8f +- %.8f\tp = %.3f\n", integral[comp], error[comp], prob[comp]);
					}
				} 
				 result<<endl;	

	
			} result<<"RESULT SUM: "<<sum; result<<" RESULT ERROR: "<<sum_error<<endl;   result.close();

			

	}

 	auto t2 = std::chrono::high_resolution_clock::now();

    	std::cout << "f() took "
              << std::chrono::duration_cast<std::chrono::milliseconds>(t2-t1).count()
              << " milliseconds\n";
//		ProfilerFlush();	//CPU PROFILER
//		ProfilerStop();		//CPU PROFILER 
return 0;
}	
