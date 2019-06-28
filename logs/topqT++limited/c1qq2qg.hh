#ifndef __C1QQ2QG_H__
#define __C1QQ2QG_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c1qq2qg_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1qq2qg_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (2*HSqq00*TF*(1 - 2*z + 2*Power(z,2)))/(qT2*z);

}

inline double c1qq2qg_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1qq2qg_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c1qq2qg_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-2*HSqq00*TF*(2*(-1 + z)*z + (1 - 2*z + 2*Power(z,2))*Log(Power(mu,2)/qT2)))/z;

}

inline double c1qq2qg_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

#endif /*__C1QQ2QG_H__*/
