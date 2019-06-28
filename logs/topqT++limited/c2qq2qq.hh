#ifndef __C2QQ2QQ_H__
#define __C2QQ2QQ_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c2qq2qq_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-9*HSqq21 + 22*CA*CF*HSqq00*Power(Pi,2) + 3*CF*HSqq11*Power(Pi,2) - 8*CF*HSqq00*nf*Power(Pi,2)*TF + 2*(-18*CF*HSqq10 + 9*HSqq22 + 6*Power(CF,2)*HSqq00*Power(Pi,2) + 2*CA*CF*HSqq00*(-67 + 3*Power(Pi,2)) + 40*CF*HSqq00*nf*TF)*Log(qT2/Power(mu,2)) + 144*Power(CF,2)*HSqq00*Power(Log(Power(M,2)/Power(mu,2)),2)*Log(qT2/Power(mu,2)) + 6*CF*(22*CA*HSqq00 + 9*HSqq11 - 8*HSqq00*nf*TF)*Power(Log(qT2/Power(mu,2)),2) + 72*Power(CF,2)*HSqq00*Power(Log(qT2/Power(mu,2)),3) - 4*CF*Log(Power(M,2)/Power(mu,2))*(-9*HSqq10 + 3*CF*HSqq00*Power(Pi,2) + CA*HSqq00*(-67 + 3*Power(Pi,2)) + 20*HSqq00*nf*TF + 3*(11*CA*HSqq00 + 6*HSqq11 - 4*HSqq00*nf*TF)*Log(qT2/Power(mu,2)) + 54*CF*HSqq00*Power(Log(qT2/Power(mu,2)),2)) + 288*Power(CF,2)*HSqq00*Zeta(3))/(9.*qT2);

}

inline double c2qq2qq_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (4*CF*(-52*HSqq00*TF - 154*CA*HSqq00*z + 162*CF*HSqq00*z - 9*HSqq10*z + 9*HSqq11*z + 3*CA*HSqq00*Power(Pi,2)*z + 3*CF*HSqq00*Power(Pi,2)*z + 124*HSqq00*TF*z + 32*HSqq00*nf*TF*z + 308*CA*HSqq00*Power(z,2) - 324*CF*HSqq00*Power(z,2) + 18*HSqq10*Power(z,2) - 18*HSqq11*Power(z,2) - 6*CA*HSqq00*Power(Pi,2)*Power(z,2) - 6*CF*HSqq00*Power(Pi,2)*Power(z,2) - 180*HSqq00*TF*Power(z,2) - 64*HSqq00*nf*TF*Power(z,2) - 154*CA*HSqq00*Power(z,3) + 162*CF*HSqq00*Power(z,3) - 9*HSqq10*Power(z,3) + 9*HSqq11*Power(z,3) + 3*CA*HSqq00*Power(Pi,2)*Power(z,3) + 3*CF*HSqq00*Power(Pi,2)*Power(z,3) + 196*HSqq00*TF*Power(z,3) + 32*HSqq00*nf*TF*Power(z,3) - 88*HSqq00*TF*Power(z,4) + 54*CF*HSqq00*Power(-1 + z,2)*z*Power(Log(qT2/Power(mu,2)),2) - 36*CF*HSqq00*Power(-1 + z,2)*z*Log(Power(M,2)/Power(mu,2))*(1 + 2*Log(qT2/Power(mu,2))) - 72*CF*HSqq00*z*Log(1 - z) + 144*CF*HSqq00*Power(z,2)*Log(1 - z) - 72*CF*HSqq00*Power(z,3)*Log(1 - z) - 51*CA*HSqq00*z*Log(z) + 90*CF*HSqq00*z*Log(z) - 18*HSqq00*TF*z*Log(z) + 12*HSqq00*nf*TF*z*Log(z) - 36*CF*HSqq00*Power(z,2)*Log(z) - 36*HSqq00*TF*Power(z,2)*Log(z) - 15*CA*HSqq00*Power(z,3)*Log(z) + 6*HSqq00*TF*Power(z,3)*Log(z) + 12*HSqq00*nf*TF*Power(z,3)*Log(z) + 48*HSqq00*TF*Power(z,4)*Log(z) + 36*CF*HSqq00*z*Log(1 - z)*Log(z) + 36*CF*HSqq00*Power(z,3)*Log(1 - z)*Log(z) - 9*CA*HSqq00*z*Power(Log(z),2) + 9*CF*HSqq00*z*Power(Log(z),2) + 18*HSqq00*TF*z*Power(Log(z),2) - 9*CA*HSqq00*Power(z,3)*Power(Log(z),2) - 9*CF*HSqq00*Power(z,3)*Power(Log(z),2) - 18*HSqq00*TF*Power(z,3)*Power(Log(z),2) - 3*(-1 + z)*Log(qT2/Power(mu,2))*(-8*HSqq00*TF + 11*CA*HSqq00*z + 72*CF*HSqq00*z + 6*HSqq11*z - 6*HSqq00*TF*z - 4*HSqq00*nf*TF*z - 11*CA*HSqq00*Power(z,2) - 36*CF*HSqq00*Power(z,2) - 6*HSqq11*Power(z,2) + 6*HSqq00*TF*Power(z,2) + 4*HSqq00*nf*TF*Power(z,2) + 8*HSqq00*TF*Power(z,3) + 48*CF*HSqq00*z*(1 + z)*Log(1 - z) - 12*HSqq00*(3*CF + TF)*z*(1 + z)*Log(z))))/(9.*qT2*(-1 + z)*Power(z,2));

}

inline double c2qq2qq_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*CF*(((-9*HSqq10 + 3*CF*HSqq00*Power(Pi,2) + CA*HSqq00*(-67 + 3*Power(Pi,2)) + 20*HSqq00*nf*TF)*z - 3*(-18*CF*HSqq00*(-1 + z) + (-11*CA*HSqq00 - 6*HSqq11 + 4*HSqq00*nf*TF)*z + 24*CF*HSqq00*z*Log(Power(M,2)/Power(mu,2)))*Log(qT2/Power(mu,2)) + 54*CF*HSqq00*z*Power(Log(qT2/Power(mu,2)),2))*plusdist(1/(1 - zp)) - 72*CF*HSqq00*Log(qT2/Power(mu,2))*plusdist(-(Log(-2 + 1/zp + zp)/(-1 + zp)))))/(9.*qT2*z);

}

inline double c2qq2qq_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -8*Power(CF,2)*HSqq00*Power(Log(Power(M,2)/Power(mu,2)),2)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + (2*CF*Log(Power(M,2)/Power(mu,2))*(-404*CA*HSqq00 + 112*HSqq00*nf*TF + 108*CF*HSqq00*Power(Log(Power(mu,2)),3) - 402*CA*HSqq00*Log(Power(mu,2)/qT2) - 54*HSqq10*Log(Power(mu,2)/qT2) + 18*CA*HSqq00*Power(Pi,2)*Log(Power(mu,2)/qT2) + 18*CF*HSqq00*Power(Pi,2)*Log(Power(mu,2)/qT2) + 120*HSqq00*nf*TF*Log(Power(mu,2)/qT2) + 324*CF*HSqq00*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - 108*CF*HSqq00*Power(Log(qT2),3) + 324*CF*HSqq00*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2)) + 99*CA*HSqq00*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 54*HSqq11*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 36*HSqq00*nf*TF*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 378*CA*HSqq00*Zeta(3) - 432*CF*HSqq00*Zeta(3)))/27. + (36*HSqq20 - 12*CF*HSqq10*Power(Pi,2) + Power(CF,2)*HSqq00*Power(Pi,4) - 8*CF*(22*CA*HSqq00 + 9*HSqq11 - 8*HSqq00*nf*TF)*Power(Log(Power(mu,2)),3) - 72*Power(CF,2)*HSqq00*Power(Log(Power(mu,2)),4) + 36*HSqq21*Log(Power(mu,2)/qT2) - 88*CA*CF*HSqq00*Power(Pi,2)*Log(Power(mu,2)/qT2) - 12*CF*HSqq11*Power(Pi,2)*Log(Power(mu,2)/qT2) + 32*CF*HSqq00*nf*Power(Pi,2)*TF*Log(Power(mu,2)/qT2) - 288*Power(CF,2)*HSqq00*Power(Log(Power(mu,-2)),3)*Log(Power(mu,2)/qT2) + 176*CA*CF*HSqq00*Power(Log(qT2),3) + 72*CF*HSqq11*Power(Log(qT2),3) - 64*CF*HSqq00*nf*TF*Power(Log(qT2),3) + 72*Power(CF,2)*HSqq00*Power(Log(qT2),4) - 24*CF*Power(Log(Power(mu,-2)),2)*(18*CF*HSqq00*Power(Log(Power(mu,2)),2) + (22*CA*HSqq00 + 9*HSqq11 - 8*HSqq00*nf*TF)*Log(Power(mu,2)/qT2) - 18*CF*HSqq00*Power(Log(qT2),2)) - 24*CF*Log(Power(mu,-2))*((22*CA*HSqq00 + 9*HSqq11 - 8*HSqq00*nf*TF)*Power(Log(Power(mu,2)),2) + 12*CF*HSqq00*Power(Log(Power(mu,2)),3) - Power(Log(qT2),2)*(22*CA*HSqq00 + 9*HSqq11 - 8*HSqq00*nf*TF + 12*CF*HSqq00*Log(qT2))) + 536*CA*CF*HSqq00*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 72*CF*HSqq10*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 36*HSqq22*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 24*CA*CF*HSqq00*Power(Pi,2)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 24*Power(CF,2)*HSqq00*Power(Pi,2)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 160*CF*HSqq00*nf*TF*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 704*CA*CF*HSqq00*Zeta(3) + 288*CF*HSqq11*Zeta(3) - 256*CF*HSqq00*nf*TF*Zeta(3) - 1152*Power(CF,2)*HSqq00*Log(Power(mu,2)/qT2)*Zeta(3))/36.;

}

inline double c2qq2qq_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (2*CF*(-2*(3*(-1 + z)*(6*CF*HSqq00*(-1 + z)*z*(Power(Log(Power(mu,2)),3) + 3*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - Power(Log(qT2),3) + 3*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2))) - (Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2))*(-8*HSqq00*TF + 11*CA*HSqq00*z + 72*CF*HSqq00*z + 6*HSqq11*z - 6*HSqq00*TF*z - 4*HSqq00*nf*TF*z - 11*CA*HSqq00*Power(z,2) - 36*CF*HSqq00*Power(z,2) - 6*HSqq11*Power(z,2) + 6*HSqq00*TF*Power(z,2) + 4*HSqq00*nf*TF*Power(z,2) + 8*HSqq00*TF*Power(z,3) + 24*CF*HSqq00*(-1 + z)*z*Log(Power(M,2)/Power(mu,2)) + 48*CF*HSqq00*z*(1 + z)*Log(1 - z) - 36*CF*HSqq00*z*Log(z) - 12*HSqq00*TF*z*Log(z) - 36*CF*HSqq00*Power(z,2)*Log(z) - 12*HSqq00*TF*Power(z,2)*Log(z)))/2.) - Log(Power(mu,2)/qT2)*(52*HSqq00*TF + 154*CA*HSqq00*z - 162*CF*HSqq00*z + 9*HSqq10*z - 9*HSqq11*z - 3*CA*HSqq00*Power(Pi,2)*z - 3*CF*HSqq00*Power(Pi,2)*z - 124*HSqq00*TF*z - 32*HSqq00*nf*TF*z - 308*CA*HSqq00*Power(z,2) + 324*CF*HSqq00*Power(z,2) - 18*HSqq10*Power(z,2) + 18*HSqq11*Power(z,2) + 6*CA*HSqq00*Power(Pi,2)*Power(z,2) + 6*CF*HSqq00*Power(Pi,2)*Power(z,2) + 180*HSqq00*TF*Power(z,2) + 64*HSqq00*nf*TF*Power(z,2) + 154*CA*HSqq00*Power(z,3) - 162*CF*HSqq00*Power(z,3) + 9*HSqq10*Power(z,3) - 9*HSqq11*Power(z,3) - 3*CA*HSqq00*Power(Pi,2)*Power(z,3) - 3*CF*HSqq00*Power(Pi,2)*Power(z,3) - 196*HSqq00*TF*Power(z,3) - 32*HSqq00*nf*TF*Power(z,3) + 88*HSqq00*TF*Power(z,4) + 36*CF*HSqq00*Power(-1 + z,2)*z*Log(Power(M,2)/Power(mu,2)) + 51*CA*HSqq00*z*Log(z) - 90*CF*HSqq00*z*Log(z) + 18*HSqq00*TF*z*Log(z) - 12*HSqq00*nf*TF*z*Log(z) + 36*CF*HSqq00*Power(z,2)*Log(z) + 36*HSqq00*TF*Power(z,2)*Log(z) + 15*CA*HSqq00*Power(z,3)*Log(z) - 6*HSqq00*TF*Power(z,3)*Log(z) - 12*HSqq00*nf*TF*Power(z,3)*Log(z) - 48*HSqq00*TF*Power(z,4)*Log(z) + 9*CA*HSqq00*z*Power(Log(z),2) - 9*CF*HSqq00*z*Power(Log(z),2) - 18*HSqq00*TF*z*Power(Log(z),2) + 9*CA*HSqq00*Power(z,3)*Power(Log(z),2) + 9*CF*HSqq00*Power(z,3)*Power(Log(z),2) + 18*HSqq00*TF*Power(z,3)*Power(Log(z),2) - 36*CF*HSqq00*z*Log(1 - z)*(-2*Power(-1 + z,2) + (1 + Power(z,2))*Log(z)))) + 3*(-1 + z)*z*(-6*CF*HSqq00*(1 + z)*Log(z) + (-1 + z)*(-6*HSqq10 + CF*HSqq00*(12 + Power(Pi,2) + 48*Zeta(3))))))/(9.*(-1 + z)*Power(z,2));

}

inline double c2qq2qq_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-8*CF*(36*CF*HSqq00*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2))*plusdist(-(Log(-2 + 1/zp + zp)/(-1 + zp))) + plusdist(1/(1 - zp))*((9*HSqq10 - 3*CF*HSqq00*Power(Pi,2) + CA*HSqq00*(67 - 3*Power(Pi,2)) - 20*HSqq00*nf*TF)*z*Log(Power(mu,2)/qT2) + (3*(-18*CF*HSqq00*(-1 + z) + (-11*CA*HSqq00 - 6*HSqq11 + 4*HSqq00*nf*TF)*z + 24*CF*HSqq00*z*Log(Power(M,2)/Power(mu,2)))*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)))/2. - 18*CF*HSqq00*z*(Power(Log(Power(mu,2)),3) + 3*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - Power(Log(qT2),3) + 3*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2)) - 4*Zeta(3)))))/(9.*z);

}

#endif /*__C2QQ2QQ_H__*/