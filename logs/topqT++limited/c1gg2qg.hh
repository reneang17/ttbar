#ifndef __C1GG2QG_H__
#define __C1GG2QG_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c1gg2qg_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1gg2qg_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (2*CF*HSgg00*(2 - 2*z + Power(z,2)))/(qT2*Power(z,2));

}

inline double c1gg2qg_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1gg2qg_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1gg2qg_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (2*CF*HSgg00*(Power(z,2) - (2 - 2*z + Power(z,2))*Log(Power(mu,2)/qT2)))/Power(z,2);

}

inline double c1gg2qg_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

#endif /*__C1GG2QG_H__*/
