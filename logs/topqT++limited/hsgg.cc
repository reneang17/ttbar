#include "hsgg.hh"
#include "soft.hh"
#include "hard.hh"

//-----------------------------------------------------------------------------
double hsgg00(double M, double theta, double mt, double mu) {

   double sgg00[3][3];
   double hgg0[3][3];
   double res[3][3];

   softgg00(M, theta, mt, sgg00);
   hardgg0(M, theta, mt, mu, hgg0);
   multiply3(sgg00, hgg0, res);

   return trace3(res);
}

//-----------------------------------------------------------------------------
double hsgg11(double M, double theta, double mt, double mu) {

   double sgg11[3][3];
   double hgg0[3][3];
   double res[3][3];

   softgg11(M, theta, mt, sgg11);
   hardgg0(M, theta, mt, mu, hgg0);
   multiply3(sgg11, hgg0, res);

   return trace3(res);
}

//-----------------------------------------------------------------------------
double hsgg10(double M, double theta, double mt, double mu) {

   double sgg00[3][3];
   double sgg10[3][3];
   double hgg0[3][3];
   double hgg1[3][3];
   double res1[3][3], res2[3][3];

   softgg10(M, theta, mt, sgg10);
   softgg00(M, theta, mt, sgg00);
   hardgg0(M, theta, mt, mu, hgg0);
   hardgg1(M, theta, mt, mu, hgg1);

   multiply3(sgg10, hgg0, res1);
   multiply3(sgg00, hgg1, res2);

   return trace3(res1) + trace3(res2);
}
