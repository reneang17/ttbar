//
//
// These results are to be compared with numbers from CheckHSiinm.nb
//
//
#include <iostream>
#include <string>
#include <stdio.h>
#include "../soft.hh"

using namespace std;

double softmatrixqq[2][2];
double softmatrixgg[3][3];

//-----------------------------------------------------------------------------
void print_softmatrix_qq(string name) {
   cout << "------------------------------------" << endl;
   cout << "# " << name << endl;
   //cout << "------------------------------------" << endl;
   printf("%10g  %10g\n",softmatrixqq[0][0], softmatrixqq[0][1]);
   printf("%10g  %10g\n",softmatrixqq[1][0], softmatrixqq[1][1]);
   cout << endl;
}

//-----------------------------------------------------------------------------
void print_softmatrix_gg(string name) {
   cout << "------------------------------------" << endl;
   cout << "# " << name << endl;
   //cout << "------------------------------------" << endl;
   printf("%10g  %10g  %10g\n",softmatrixgg[0][0],softmatrixgg[0][1], softmatrixgg[0][2]);
   printf("%10g  %10g  %10g\n",softmatrixgg[1][0],softmatrixgg[1][1], softmatrixgg[1][2]);
   printf("%10g  %10g  %10g\n",softmatrixgg[2][0],softmatrixgg[2][1], softmatrixgg[2][2]);
   cout << endl;
}


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

   double M     = 8000;
   double theta = 0.01;
   double mt    = 173.2;

   // LO
   softqq00(M, theta, mt, softmatrixqq);
   print_softmatrix_qq("Sqq00");

   softgg00(M, theta, mt, softmatrixgg);
   print_softmatrix_gg("Sg00");

   // NLO
   softqq11(M, theta, mt, softmatrixqq);
   print_softmatrix_qq("Sqq11");

   softqq10(M, theta, mt, softmatrixqq);
   print_softmatrix_qq("Sqq10");

   softgg11(M, theta, mt, softmatrixgg);
   print_softmatrix_gg("Sgg11");

   softgg10(M, theta, mt, softmatrixgg);
   print_softmatrix_gg("Sgg10");

   // NNLO
   softqq22(M, theta, mt, softmatrixqq);
   print_softmatrix_qq("Sqq22");

   softqq21(M, theta, mt, softmatrixqq);
   print_softmatrix_qq("Sqq21");

   softgg22(M, theta, mt, softmatrixgg);
   print_softmatrix_gg("Sgg22");

   softgg21(M, theta, mt, softmatrixgg);
   print_softmatrix_gg("Sgg21");
}
