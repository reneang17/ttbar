#ifndef __C1GG2GG_H__
#define __C1GG2GG_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c1gg2gg_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -((HSgg11 - 4*CA*HSgg00*Log(Power(M,2)/Power(mu,2)) + 4*CA*HSgg00*Log(qT2/Power(mu,2)))/qT2);

}

inline double c1gg2gg_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*CA*HSgg00*(-1 + z - Power(z,2) + Power(z,3)))/(qT2*Power(z,2));

}

inline double c1gg2gg_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (8*CA*HSgg00*plusdist(1/(1 - zp)))/qT2;

}

inline double c1gg2gg_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return HSgg10 - (CA*HSgg00*Power(Pi,2))/3. + Log(Power(mu,2)/qT2)*(HSgg11 - 4*CA*HSgg00*Log(Power(M,2)/Power(mu,2)) + 2*CA*HSgg00*Log(qT2/Power(mu,2)));

}

inline double c1gg2gg_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (8*CA*HSgg00*(-1 + z - Power(z,2) + Power(z,3))*Log(Power(mu,2)/qT2))/Power(z,2);

}

inline double c1gg2gg_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -8*CA*HSgg00*Log(Power(mu,2)/qT2)*plusdist(1/(1 - zp));

}

#endif /*__C1GG2GG_H__*/
