#ifndef __C2QQ2GG_H__
#define __C2QQ2GG_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c2qq2gg_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2qq2gg_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*HSqq00*Power(TF,2)*(-1 - 6*z + 7*Power(z,2) - 4*z*(1 + z)*Log(z) + Log(qT2/Power(mu,2))*(2 + 4*z - 6*Power(z,2) + Power(1 + 2*z,2)*Log(z))))/(qT2*z);

}

inline double c2qq2gg_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2qq2gg_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2qq2gg_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*HSqq00*Power(TF,2)*(2*z*(2 - 2*z + (1 + z)*Log(z)) + Log(Power(mu,2)/qT2)*(1 + 6*z - 7*Power(z,2) + 4*z*(1 + z)*Log(z)) - (Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2))*(2 + 4*z - 6*Power(z,2) + Power(1 + 2*z,2)*Log(z)))/2.))/z;

}

inline double c2qq2gg_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

#endif /*__C2QQ2GG_H__*/
