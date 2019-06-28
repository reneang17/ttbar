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


using namespace std;

	
//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
int main( int argc, char* argv[]) {

  #ifdef PREC128
    //int width = 46;
    //char buf0[128], buf1[128];


    __float128 parameters[2] = {0.1, 0.7853981634};

    __float128 args1[6] = {
     0.99999999263991412590, 0.55698307900102239643, 0.00000002684938037651,
     0.85998566842615564720, 0.08705622232343346312, 0.78381441323279255062
    };

    args1[0] = 0.9999999;
    for (unsigned i = 1; i<100; i++) {
      args1[0] += 0.000000001;

      //quadmath_snprintf(buf0, sizeof buf0, "%+-#*.20Qe", width, args1[0]);
      //quadmath_snprintf(buf1, sizeof buf1, "%+-#*.20Qe", width,
      //                  colqbub23_int9_12_6_ap0_ep5(args1, parameters));
      //cout << buf0 << "   " << buf1 << endl;

      printf("%.20Qe  %.20Qe\n", args1[0], colqbub23_int9_10_6_ap0_ep5(args1, parameters));

    }

  #else
    ////const double delta = std::numeric_limits<double>::min();
    ////cout << delta << endl;
    //const double min_double = std::numeric_limits<double>::min();

    double parameters[2] = {0.1, 0.7853981634};
    double args1[6] = {
     0.99999999263991412590, 0.55698307900102239643, 0.00000002684938037651,
     0.85998566842615564720, 0.08705622232343346312, 0.78381441323279255062
    };

    //cout << colqbub34_int4_24_6_ap0_ep5(args1, parameters) << endl;
    //cout << min_double << endl;
    //cout << (min_double > 0.00000000000000000000) << endl;

    args1[0] = 0.9999999;
    for (unsigned i = 0; i<100; i++) {
      args1[0] += 0.000000001;
      cout.precision(20);
      cout << args1[0] << "   " << colqbub23_int9_10_6_ap0_ep5(args1, parameters) << endl;
    }

  #endif

  return 0;
}	
