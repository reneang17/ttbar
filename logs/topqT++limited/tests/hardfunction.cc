//
//
// These results are to be compared with numbers from CheckHSiinm.nb
//
//
#include <iostream>
#include <string>
#include <stdio.h>
#include "../hard.hh"

using namespace std;

double hardmatrixqq[2][2];
double hardmatrixgg[3][3];

//-----------------------------------------------------------------------------
void print_hardmatrix_qq(string name) {
   cout << "------------------------------------" << endl;
   cout << "# " << name << endl;
   //cout << "------------------------------------" << endl;
   printf("%10g  %10g\n",hardmatrixqq[0][0], hardmatrixqq[0][1]);
   printf("%10g  %10g\n",hardmatrixqq[1][0], hardmatrixqq[1][1]);
   cout << endl;
}

//-----------------------------------------------------------------------------
void print_hardmatrix_gg(string name) {
   cout << "------------------------------------" << endl;
   cout << "# " << name << endl;
   //cout << "------------------------------------" << endl;
   printf("%10g  %10g  %10g\n",hardmatrixgg[0][0],hardmatrixgg[0][1], hardmatrixgg[0][2]);
   printf("%10g  %10g  %10g\n",hardmatrixgg[1][0],hardmatrixgg[1][1], hardmatrixgg[1][2]);
   printf("%10g  %10g  %10g\n",hardmatrixgg[2][0],hardmatrixgg[2][1], hardmatrixgg[2][2]);
   cout << endl;
}


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

   double M     = 800;
   double theta = 0.01;
   double mt    = 173.2;
   double mu    = 2*mt;

   // LO
   hardqq0(M, theta, mt, mu, hardmatrixqq);
   print_hardmatrix_qq("Hqq0");

   hardgg0(M, theta, mt, mu, hardmatrixgg);
   print_hardmatrix_gg("Hgg0");

   // NLO
   hardqq1(M, theta, mt, mu, hardmatrixqq);
   print_hardmatrix_qq("Hqq1");

   hardgg1(M, theta, mt, mu, hardmatrixgg);
   print_hardmatrix_gg("Hgg1");

}
