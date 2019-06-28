#include "hsqq.hh"
#include "soft.hh"
#include "hard.hh"

//-----------------------------------------------------------------------------
double hsqq00(double M, double theta, double mt, double mu) {

   double sqq00[2][2];
   double hqq0[2][2];
   double res[2][2];

   softqq00(M, theta, mt, sqq00);
   hardqq0(M, theta, mt, mu, hqq0);
   multiply2(sqq00, hqq0, res);

   return trace2(res);
}

//-----------------------------------------------------------------------------
double hsqq11(double M, double theta, double mt, double mu) {

   double sqq11[2][2];
   double hqq0[2][2];
   double res[2][2];

   softqq11(M, theta, mt, sqq11);
   hardqq0(M, theta, mt, mu, hqq0);
   multiply2(sqq11, hqq0, res);

   return trace2(res);
}

//-----------------------------------------------------------------------------
double hsqq10(double M, double theta, double mt, double mu) {

   double sqq00[2][2];
   double sqq10[2][2];
   double hqq0[2][2];
   double hqq1[2][2];
   double res1[2][2], res2[2][2];

   softqq10(M, theta, mt, sqq10);
   softqq00(M, theta, mt, sqq00);
   hardqq0(M, theta, mt, mu, hqq0);
   hardqq1(M, theta, mt, mu, hqq1);

   multiply2(sqq10, hqq0, res1);
   multiply2(sqq00, hqq1, res2);

   return trace2(res1) + trace2(res2);
}

//-----------------------------------------------------------------------------
double hsqq22(double M, double theta, double mt, double mu) {

   double sqq22[2][2];
   double hqq0[2][2];
   double res[2][2];

   softqq22(M, theta, mt, sqq22);
   hardqq0(M, theta, mt, mu, hqq0);
   multiply2(sqq22, hqq0, res);

   return trace2(res);
}

//-----------------------------------------------------------------------------
double hsqq21(double M, double theta, double mt, double mu) {

   double sqq11[2][2];
   double sqq21[2][2];
   double hqq0[2][2];
   double hqq1[2][2];
   double res1[2][2], res2[2][2];

   softqq21(M, theta, mt, sqq21);
   softqq11(M, theta, mt, sqq11);
   hardqq0(M, theta, mt, mu, hqq0);
   hardqq1(M, theta, mt, mu, hqq1);

   multiply2(sqq21, hqq0, res1);
   multiply2(sqq11, hqq1, res2);

   return trace2(res1) + trace2(res2);
}
