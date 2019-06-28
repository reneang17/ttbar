#ifndef __COMMON_H__
#define __COMMON_H__

#include <ginac/ginac.h>
#include <gsl/gsl_sf.h>
#include <heplib/Constants.hh>
#include <iostream>

using namespace std;
using namespace constants;

#define QTTECH 1e-10

const double nf = 5.0;
const double dq = Nc;
const double dg = Nc*Nc-1; // Li et al, around Eqs. (19) and (20)

//-----------------------------------------------------------------------------
// We keep imaginary parts in the soft and hard function matrices. Tr[HS] is
// real by construction hence our numerical results here cannot depend on the
// value of cI. And that is why we leave it here as a paremeter to allow for
// consistency checks.
#define cI 10

//-----------------------------------------------------------------------------
#define HSqq00  hsqq00(M, theta, mt, mu)
#define HSqq11  hsqq11(M, theta, mt, mu)
#define HSqq10  hsqq10(M, theta, mt, mu)
#define HSqq22  hsqq22(M, theta, mt, mu)
#define HSqq21  hsqq21(M, theta, mt, mu)
#define HSqq20  1.0

#define HSgg00  hsgg00(M, theta, mt, mu)
#define HSgg11  hsgg11(M, theta, mt, mu)
#define HSgg10  hsgg10(M, theta, mt, mu)
#define HSgg22  1.0
#define HSgg21  1.0
#define HSgg20  1.0

//-----------------------------------------------------------------------------
inline double trace2(double m[2][2]) {

  double res = 0.0;
  for (unsigned n = 0; n < 2; n++) {
    res += m[n][n];
  }
  return res;
}

//-----------------------------------------------------------------------------
inline double trace3(double m[3][3]) {

  double res = 0.0;
  for (unsigned n = 0; n < 3; n++) {
    res += m[n][n];
  }
  return res;
}

//-----------------------------------------------------------------------------
inline void multiply2(double m1[2][2], double m2[2][2], double out[2][2]) {

  unsigned int sz = 2;

  // initialize elements
  for (unsigned nrow = 0; nrow < sz; nrow++) {
    for (unsigned ncol = 0; ncol < sz; ncol++) {
        out[nrow][ncol]  = 0.0;
    }
  }

  // fill entries
  for (unsigned nrow = 0; nrow < sz; nrow++) {
    for (unsigned ncol = 0; ncol < sz; ncol++) {
      for (unsigned k = 0; k < sz; k++) {
        out[nrow][ncol] += m1[nrow][k]*m2[k][ncol];
      }
    }
  }
}

//-----------------------------------------------------------------------------
inline void multiply3(double m1[3][3], double m2[3][3], double out[3][3]) {

  unsigned int sz = 3;

  // initialize elements
  for (unsigned nrow = 0; nrow < sz; nrow++) {
    for (unsigned ncol = 0; ncol < sz; ncol++) {
        out[nrow][ncol]  = 0.0;
    }
  }

  // fill entries
  for (unsigned nrow = 0; nrow < sz; nrow++) {
    for (unsigned ncol = 0; ncol < sz; ncol++) {
      for (unsigned k = 0; k < sz; k++) {
        out[nrow][ncol] += m1[nrow][k]*m2[k][ncol];
      }
    }
  }
}

//-----------------------------------------------------------------------------
//inline double plusdist(double x) { return 1.0;}
inline double plusdist(double x) { return x;}

//-----------------------------------------------------------------------------
inline double HeavisideTheta(double x) { return (x>0)?1:0; }

//-----------------------------------------------------------------------------
inline double PolyLog(int n, double x) {
  if (n==2) {
    return gsl_sf_dilog(x);
  } else {
    GiNaC::ex res = GiNaC::Li(n,x).evalf();
    return GiNaC::ex_to<GiNaC::numeric>(res).to_double();
  }
}

//-----------------------------------------------------------------------------
inline double Zeta(const int n) {

  if (n == 2) {
    return 1.6449340668482264365;
  } else if (n == 3) {
    return 1.2020569031595942854;
  } else {
    cerr << "Error: Unknown Zeta argument: '" << n << "'!" << endl;
    exit(1);
  }

}

#endif /* __COMMON_H__ */
