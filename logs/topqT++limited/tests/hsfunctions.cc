//
//
// These results are to be compared witheta numbers from CheckHSiinm.nb
//
//
#include <iostream>
#include <heplib/MathematicaC.hh>
#include "../common.hh"
#include "../obsolete/hsqq00.hh"
#include "../obsolete/hsgg00.hh"
#include "../obsolete/hsqq10.hh"
#include "../obsolete/hsgg10.hh"
#include "../obsolete/hsqq11.hh"
#include "../obsolete/hsgg11.hh"
#include "../obsolete/hsqq22.hh"
#include "../obsolete/hsqq21.hh"
//#include "../obsolete/hsgg22.hh"
//#include "../obsolete/hsgg21.hh"

#include "../soft.hh"
#include "../hard.hh"
using namespace std;


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

   double M  = 800;
   double theta = 0.01;
   double mt = 173.2;
   double mu = 2*mt;

   // S and H functions for quark
   double sqq00[2][2]; // LT^0
   double sqq11[2][2]; // LT^1
   double sqq10[2][2]; // LT^0
   double sqq22[2][2]; // LT^2
   double sqq21[2][2]; // LT^1

   double hqq0[2][2];
   double hqq1[2][2];

   softqq00(M, theta, mt, sqq00);
   softqq11(M, theta, mt, sqq11);
   softqq10(M, theta, mt, sqq10);
   softqq22(M, theta, mt, sqq22);
   softqq21(M, theta, mt, sqq21);

   hardqq0(M, theta, mt, mu, hqq0);
   hardqq1(M, theta, mt, mu, hqq1);

   // S and H functions for gluon
   double sgg00[3][3];
   double sgg11[3][3];
   double sgg10[3][3];
   double sgg22[3][3];
   double sgg21[3][3];

   double hgg0[3][3];
   double hgg1[3][3];

   softgg00(M, theta, mt, sgg00);
   softgg11(M, theta, mt, sgg11);
   softgg10(M, theta, mt, sgg10);
   softgg22(M, theta, mt, sgg22);
   softgg21(M, theta, mt, sgg21);

   hardgg0(M, theta, mt, mu, hgg0);
   hardgg1(M, theta, mt, mu, hgg1);

   // result matrices
   double hsqq00matrix_s00h0[2][2];
   double hsqq11matrix_s11h0[2][2];
   double hsqq11matrix_s10h0[2][2];
   double hsqq11matrix_s00h1[2][2];
   double res1qq[2][2], res2qq[2][2];

   double hsgg00matrix_s00h0[3][3];
   double hsgg11matrix_s11h0[3][3];
   double hsgg11matrix_s10h0[3][3];
   double hsgg11matrix_s00h1[3][3];
   double res1gg[3][3], res2gg[3][3];



   //-----------------------------------------------------------------------------
   // Print results for qq
   //-----------------------------------------------------------------------------

   // HSqq00
   multiply2(sqq00, hqq0, hsqq00matrix_s00h0);
   cout << "HSqq00 " << hsqq00(M, theta, mt, mu) << " " << trace2(hsqq00matrix_s00h0) << endl;

   // HSqq11
   multiply2(sqq11, hqq0, hsqq11matrix_s11h0);
   cout << "HSqq11 " << hsqq11(M, theta, mt, mu) << " " << trace2(hsqq11matrix_s11h0) << endl;

   // HSqq10
   multiply2(sqq10, hqq0, hsqq11matrix_s10h0);
   multiply2(sqq00, hqq1, hsqq11matrix_s00h1);
   cout << "HSqq10 " << hsqq10(M, theta, mt, mu) << " " << trace2(hsqq11matrix_s10h0) +
                                              trace2(hsqq11matrix_s00h1) << endl;

   // HSqq22
   multiply2(sqq22, hqq0, res1qq);
   cout << "HSqq22 " << hsqq22(M, theta, mt, mu) << " " << trace2(res1qq) << endl;

   // HSqq21
   multiply2(sqq21, hqq0, res1qq);
   multiply2(sqq11, hqq1, res2qq);
   cout << "HSqq21 " << hsqq21(M, theta, mt, mu) << " " << trace2(res1qq) + trace2(res2qq) 
        << " <- difference" << endl;

   //-----------------------------------------------------------------------------
   // Print results for gg
   //-----------------------------------------------------------------------------

   // HSgg00
   multiply3(sgg00,hgg0, hsgg00matrix_s00h0);
   cout << "HSqq00 " << hsgg00(M, theta, mt, mu) << " " << trace3(hsgg00matrix_s00h0) << endl;

   // HSgg11
   multiply3(sgg11, hgg0, hsgg11matrix_s11h0);
   cout << "HSqq11 " << hsgg11(M, theta, mt, mu) << " " << trace3(hsgg11matrix_s11h0) << endl;

   // HSgg10
   multiply3(sgg10, hgg0, hsgg11matrix_s10h0);
   multiply3(sgg00, hgg1, hsgg11matrix_s00h1);
   cout << "HSqq10 " << hsgg10(M, theta, mt, mu) << " " << trace3(hsgg11matrix_s10h0) +
                                              trace3(hsgg11matrix_s00h1) << endl;

   // -----------------------------------------------------------------------------
   // simplified version
   // -----------------------------------------------------------------------------
   // HSgg22
   multiply3(sgg22, hgg0, res1gg);
   cout << "HSgg22 " << trace3(res1gg) << endl;

   // HSgg21
   multiply3(sgg21, hgg0, res1gg);
   multiply3(sgg11, hgg1, res2gg);
   cout << "HSgg21 " << trace3(res1gg) + trace3(res2gg) << endl;
   // -----------------------------------------------------------------------------
   // -----------------------------------------------------------------------------

   //// HSgg22
   //multiply3(sgg22, hgg0, res1gg);
   //cout << "HSgg22 " << hsgg22(M, theta, mt, mu) << " " << trace3(res1gg) << endl;

   //// HSgg21
   //multiply3(sgg21, hgg0, res1gg);
   //multiply3(sgg11, hgg1, res2gg);
   //cout << "HSgg21 " << hsgg21(M, theta, mt, mu) << " " << trace3(res1gg) + trace3(res2gg) 
   //     << " <- difference" << endl;
}
