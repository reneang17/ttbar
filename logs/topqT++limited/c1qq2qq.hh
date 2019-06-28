#ifndef __C1QQ2QQ_H__
#define __C1QQ2QQ_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c1qq2qq_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -((HSqq11 - 4*CF*HSqq00*Log(Power(M,2)/Power(mu,2)) + 4*CF*HSqq00*Log(qT2/Power(mu,2)))/qT2);

}

inline double c1qq2qq_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-4*CF*HSqq00*(-1 + z))/(qT2*z);

}

inline double c1qq2qq_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (8*CF*HSqq00*plusdist(1/(1 - zp)))/qT2;

}

inline double c1qq2qq_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return HSqq10 - (CF*HSqq00*Power(Pi,2))/3. + Log(Power(mu,2)/qT2)*(HSqq11 - 4*CF*HSqq00*Log(Power(M,2)/Power(mu,2)) + 2*CF*HSqq00*Log(qT2/Power(mu,2)));

}

inline double c1qq2qq_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (4*CF*HSqq00*(-1 + z)*(-1 + Log(Power(mu,2)/qT2)))/z;

}

inline double c1qq2qq_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -8*CF*HSqq00*Log(Power(mu,2)/qT2)*plusdist(1/(1 - zp));

}

#endif /*__C1QQ2QQ_H__*/
