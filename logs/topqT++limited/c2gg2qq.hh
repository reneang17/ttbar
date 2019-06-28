#ifndef __C2GG2QQ_H__
#define __C2GG2QQ_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c2gg2qq_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2gg2qq_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*Power(CF,2)*HSgg00*(-Power(-1 + z,2) + Power(z,2)*Log(z) + Log(qT2/Power(mu,2))*(-2*(-3 + 2*z + Power(z,2)) + Power(2 + z,2)*Log(z))))/(qT2*Power(z,2));

}

inline double c2gg2qq_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2gg2qq_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

inline double c2gg2qq_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-4*Power(CF,2)*HSgg00*(Power(z,2)*Log(z) - Log(Power(mu,2)/qT2)*(-2*Power(-1 + z,2) + 2*Power(z,2)*Log(z) + Log(qT2/Power(mu,2))*(-2*(-3 + 2*z + Power(z,2)) + Power(2 + z,2)*Log(z)))))/Power(z,2);

}

inline double c2gg2qq_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return 0;

}

#endif /*__C2GG2QQ_H__*/
