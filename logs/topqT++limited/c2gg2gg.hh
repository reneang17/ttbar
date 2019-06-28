#ifndef __C2GG2GG_H__
#define __C2GG2GG_H__

#include <heplib/MathematicaC.hh>
#include "common.hh"

inline double c2gg2gg_real_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-9*HSgg21 + 22*Power(CA,2)*HSgg00*Power(Pi,2) + 3*CA*HSgg11*Power(Pi,2) - 8*CA*HSgg00*nf*Power(Pi,2)*TF + 2*(9*HSgg22 + 2*Power(CA,2)*HSgg00*(-67 + 6*Power(Pi,2)) + CA*(-18*HSgg10 + 40*HSgg00*nf*TF))*Log(qT2/Power(mu,2)) + 144*Power(CA,2)*HSgg00*Power(Log(Power(M,2)/Power(mu,2)),2)*Log(qT2/Power(mu,2)) + 6*CA*(22*CA*HSgg00 + 9*HSgg11 - 8*HSgg00*nf*TF)*Power(Log(qT2/Power(mu,2)),2) + 72*Power(CA,2)*HSgg00*Power(Log(qT2/Power(mu,2)),3) - 4*CA*Log(Power(M,2)/Power(mu,2))*(-9*HSgg10 + CA*HSgg00*(-67 + 6*Power(Pi,2)) + 20*HSgg00*nf*TF + 3*(11*CA*HSgg00 + 6*HSgg11 - 4*HSgg00*nf*TF)*Log(qT2/Power(mu,2)) + 54*CA*HSgg00*Power(Log(qT2/Power(mu,2)),2)) + 288*Power(CA,2)*HSgg00*Zeta(3))/(9.*qT2);

}

inline double c2gg2gg_real_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (4*(-18*CA*HSgg10 + 6*Power(CA,2)*HSgg00*Power(Pi,2) + 92*CA*HSgg00*nf*TF - 24*CF*HSgg00*nf*TF - 109*Power(CA,2)*HSgg00*z + 18*CA*HSgg10*z - 18*Power(CA,2)*HSgg00*Power(Pi,2)*z - 76*CA*HSgg00*nf*TF*z + 252*CF*HSgg00*nf*TF*z + 243*Power(CA,2)*HSgg00*Power(z,2) + 18*CA*HSgg10*Power(z,2) - 18*Power(CA,2)*HSgg00*Power(Pi,2)*Power(z,2) - 56*CA*HSgg00*nf*TF*Power(z,2) - 156*CF*HSgg00*nf*TF*Power(z,2) - 25*Power(CA,2)*HSgg00*Power(z,3) - 18*CA*HSgg10*Power(z,3) + 18*Power(CA,2)*HSgg00*Power(Pi,2)*Power(z,3) + 24*CA*HSgg00*nf*TF*Power(z,3) - 300*CF*HSgg00*nf*TF*Power(z,3) - 109*Power(CA,2)*HSgg00*Power(z,4) + 18*CA*HSgg10*Power(z,4) - 6*Power(CA,2)*HSgg00*Power(Pi,2)*Power(z,4) - 76*CA*HSgg00*nf*TF*Power(z,4) + 180*CF*HSgg00*nf*TF*Power(z,4) - 18*CA*HSgg10*Power(z,5) + 18*Power(CA,2)*HSgg00*Power(Pi,2)*Power(z,5) + 92*CA*HSgg00*nf*TF*Power(z,5) + 48*CF*HSgg00*nf*TF*Power(z,5) + 108*Power(CA,2)*HSgg00*(1 - z - Power(z,2) + Power(z,3) - Power(z,4) + Power(z,5))*Power(Log(qT2/Power(mu,2)),2) + 150*Power(CA,2)*HSgg00*z*Log(z) + 24*CA*HSgg00*nf*TF*z*Log(z) + 108*CF*HSgg00*nf*TF*z*Log(z) - 66*Power(CA,2)*HSgg00*Power(z,2)*Log(z) + 24*CA*HSgg00*nf*TF*Power(z,2)*Log(z) + 108*CF*HSgg00*nf*TF*Power(z,2)*Log(z) + 114*Power(CA,2)*HSgg00*Power(z,3)*Log(z) - 24*CA*HSgg00*nf*TF*Power(z,3)*Log(z) - 108*CF*HSgg00*nf*TF*Power(z,3)*Log(z) + 66*Power(CA,2)*HSgg00*Power(z,4)*Log(z) - 24*CA*HSgg00*nf*TF*Power(z,4)*Log(z) - 108*CF*HSgg00*nf*TF*Power(z,4)*Log(z) - 264*Power(CA,2)*HSgg00*Power(z,5)*Log(z) + 72*Power(CA,2)*HSgg00*Log(1 - z)*Log(z) - 72*Power(CA,2)*HSgg00*z*Log(1 - z)*Log(z) + 72*Power(CA,2)*HSgg00*Power(z,2)*Log(1 - z)*Log(z) + 72*Power(CA,2)*HSgg00*Power(z,3)*Log(1 - z)*Log(z) - 72*Power(CA,2)*HSgg00*Power(z,4)*Log(1 - z)*Log(z) + 72*Power(CA,2)*HSgg00*Power(z,5)*Log(1 - z)*Log(z) - 36*Power(CA,2)*HSgg00*z*Power(Log(z),2) + 36*CF*HSgg00*nf*TF*z*Power(Log(z),2) - 72*Power(CA,2)*HSgg00*Power(z,2)*Power(Log(z),2) + 36*CF*HSgg00*nf*TF*Power(z,2)*Power(Log(z),2) + 36*Power(CA,2)*HSgg00*Power(z,3)*Power(Log(z),2) - 36*CF*HSgg00*nf*TF*Power(z,3)*Power(Log(z),2) + 72*Power(CA,2)*HSgg00*Power(z,4)*Power(Log(z),2) - 36*CF*HSgg00*nf*TF*Power(z,4)*Power(Log(z),2) - 36*Power(CA,2)*HSgg00*Power(z,5)*Power(Log(z),2) - 6*(-1 + z)*Log(qT2/Power(mu,2))*(99*Power(CA,2)*HSgg00 + 6*CA*HSgg11 - 4*CA*HSgg00*nf*TF - 8*CF*HSgg00*nf*TF + 16*Power(CA,2)*HSgg00*z - 14*CF*HSgg00*nf*TF*z - 11*Power(CA,2)*HSgg00*Power(z,2) - 6*CA*HSgg11*Power(z,2) + 4*CA*HSgg00*nf*TF*Power(z,2) - 16*Power(CA,2)*HSgg00*Power(z,3) + 14*CF*HSgg00*nf*TF*Power(z,3) - 99*Power(CA,2)*HSgg00*Power(z,4) - 6*CA*HSgg11*Power(z,4) + 4*CA*HSgg00*nf*TF*Power(z,4) + 8*CF*HSgg00*nf*TF*Power(z,4) + 24*Power(CA,2)*HSgg00*(-1 + Power(z,2) + Power(z,4))*Log(Power(M,2)/Power(mu,2)) + 48*Power(CA,2)*HSgg00*(-1 + z + Power(z,2) + Power(z,4))*Log(1 - z) + 24*Power(CA,2)*HSgg00*Log(z) + 24*Power(CA,2)*HSgg00*z*Log(z) - 12*CF*HSgg00*nf*TF*z*Log(z) + 72*Power(CA,2)*HSgg00*Power(z,2)*Log(z) - 24*CF*HSgg00*nf*TF*Power(z,2)*Log(z) + 48*Power(CA,2)*HSgg00*Power(z,3)*Log(z) - 12*CF*HSgg00*nf*TF*Power(z,3)*Log(z) - 24*Power(CA,2)*HSgg00*Power(z,4)*Log(z)) - 72*Power(CA,2)*HSgg00*Log(z)*Log(1 + z) - 72*Power(CA,2)*HSgg00*z*Log(z)*Log(1 + z) - 72*Power(CA,2)*HSgg00*Power(z,2)*Log(z)*Log(1 + z) + 72*Power(CA,2)*HSgg00*Power(z,3)*Log(z)*Log(1 + z) + 72*Power(CA,2)*HSgg00*Power(z,4)*Log(z)*Log(1 + z) + 72*Power(CA,2)*HSgg00*Power(z,5)*Log(z)*Log(1 + z) + 72*Power(CA,2)*HSgg00*(-1 + z)*Power(1 + z + Power(z,2),2)*PolyLog(2,-z)))/(9.*qT2*Power(z,2)*(-1 + Power(z,2)));

}

inline double c2gg2gg_real_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-16*CA*(z*(-9*HSgg10 + CA*HSgg00*(-67 + 6*Power(Pi,2)) + 20*HSgg00*nf*TF - 3*(-11*CA*HSgg00 - 6*HSgg11 + 4*HSgg00*nf*TF + 24*CA*HSgg00*Log(Power(M,2)/Power(mu,2)))*Log(qT2/Power(mu,2)) + 54*CA*HSgg00*Power(Log(qT2/Power(mu,2)),2))*plusdist(1/(1 - zp)) - 36*CA*HSgg00*(1 + z)*Log(qT2/Power(mu,2))*plusdist(-(Log(-2 + 1/zp + zp)/(-1 + zp)))))/(9.*qT2*z*(1 + z));

}

inline double c2gg2gg_virt_d(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return -8*Power(CA,2)*HSgg00*Power(Log(Power(M,2)/Power(mu,2)),2)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + (2*CA*Log(Power(M,2)/Power(mu,2))*(-404*CA*HSgg00 + 112*HSgg00*nf*TF + 108*CA*HSgg00*Power(Log(Power(mu,2)),3) - 402*CA*HSgg00*Log(Power(mu,2)/qT2) - 54*HSgg10*Log(Power(mu,2)/qT2) + 36*CA*HSgg00*Power(Pi,2)*Log(Power(mu,2)/qT2) + 120*HSgg00*nf*TF*Log(Power(mu,2)/qT2) + 324*CA*HSgg00*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - 108*CA*HSgg00*Power(Log(qT2),3) + 324*CA*HSgg00*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2)) + 99*CA*HSgg00*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 54*HSgg11*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 36*HSgg00*nf*TF*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 54*CA*HSgg00*Zeta(3)))/27. + (36*HSgg20 - 12*CA*HSgg10*Power(Pi,2) + Power(CA,2)*HSgg00*Power(Pi,4) - 8*CA*(22*CA*HSgg00 + 9*HSgg11 - 8*HSgg00*nf*TF)*Power(Log(Power(mu,2)),3) - 72*Power(CA,2)*HSgg00*Power(Log(Power(mu,2)),4) + 36*HSgg21*Log(Power(mu,2)/qT2) - 88*Power(CA,2)*HSgg00*Power(Pi,2)*Log(Power(mu,2)/qT2) - 12*CA*HSgg11*Power(Pi,2)*Log(Power(mu,2)/qT2) + 32*CA*HSgg00*nf*Power(Pi,2)*TF*Log(Power(mu,2)/qT2) - 288*Power(CA,2)*HSgg00*Power(Log(Power(mu,-2)),3)*Log(Power(mu,2)/qT2) + 176*Power(CA,2)*HSgg00*Power(Log(qT2),3) + 72*CA*HSgg11*Power(Log(qT2),3) - 64*CA*HSgg00*nf*TF*Power(Log(qT2),3) + 72*Power(CA,2)*HSgg00*Power(Log(qT2),4) - 24*CA*Power(Log(Power(mu,-2)),2)*(18*CA*HSgg00*Power(Log(Power(mu,2)),2) + (22*CA*HSgg00 + 9*HSgg11 - 8*HSgg00*nf*TF)*Log(Power(mu,2)/qT2) - 18*CA*HSgg00*Power(Log(qT2),2)) - 24*CA*Log(Power(mu,-2))*((22*CA*HSgg00 + 9*HSgg11 - 8*HSgg00*nf*TF)*Power(Log(Power(mu,2)),2) + 12*CA*HSgg00*Power(Log(Power(mu,2)),3) - Power(Log(qT2),2)*(22*CA*HSgg00 + 9*HSgg11 - 8*HSgg00*nf*TF + 12*CA*HSgg00*Log(qT2))) + 536*Power(CA,2)*HSgg00*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 72*CA*HSgg10*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 36*HSgg22*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 48*Power(CA,2)*HSgg00*Power(Pi,2)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) - 160*CA*HSgg00*nf*TF*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)) + 704*Power(CA,2)*HSgg00*Zeta(3) + 288*CA*HSgg11*Zeta(3) - 256*CA*HSgg00*nf*TF*Zeta(3) - 1152*Power(CA,2)*HSgg00*Log(Power(mu,2)/qT2)*Zeta(3))/36.;

}

inline double c2gg2gg_virt_r(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (4*(-(Log(Power(mu,2)/qT2)*((-1 + z)*(12*CF*HSgg00*nf*TF*(2 - 19*z - 6*Power(z,2) + 19*Power(z,3) + 4*Power(z,4)) + Power(CA,2)*HSgg00*(z*(109 - 134*z - 109*Power(z,2)) + 6*Power(Pi,2)*(-1 + 2*z + 5*Power(z,2) + 2*Power(z,3) + 3*Power(z,4))) - 2*CA*(9*HSgg10*(-1 + Power(z,2) + Power(z,4)) - 2*HSgg00*nf*TF*(-23 - 4*z + 10*Power(z,2) + 4*Power(z,3) + 23*Power(z,4)))) - 36*HSgg00*z*(CF*nf*TF*(-1 + z)*Power(1 + z,2) + Power(CA,2)*Power(1 + z - Power(z,2),2))*Power(Log(z),2) + 6*HSgg00*Log(z)*(12*Power(CA,2)*(1 + z)*Power(1 - z + Power(z,2),2)*Log(1 - z) + (-1 + z)*(-(z*(1 + z)*(4*CA*nf*TF*(1 + z) + 18*CF*nf*TF*(1 + z) + Power(CA,2)*(25 - 11*z + 44*Power(z,2)))) + 12*Power(CA,2)*Power(1 + z + Power(z,2),2)*Log(1 + z))) + 72*Power(CA,2)*HSgg00*(-1 + z)*Power(1 + z + Power(z,2),2)*PolyLog(2,-z))) - 6*(-1 + z)*(-(Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2))*(99*Power(CA,2)*HSgg00 + 6*CA*HSgg11 - 4*CA*HSgg00*nf*TF - 8*CF*HSgg00*nf*TF + 16*Power(CA,2)*HSgg00*z - 14*CF*HSgg00*nf*TF*z - 11*Power(CA,2)*HSgg00*Power(z,2) - 6*CA*HSgg11*Power(z,2) + 4*CA*HSgg00*nf*TF*Power(z,2) - 16*Power(CA,2)*HSgg00*Power(z,3) + 14*CF*HSgg00*nf*TF*Power(z,3) - 99*Power(CA,2)*HSgg00*Power(z,4) - 6*CA*HSgg11*Power(z,4) + 4*CA*HSgg00*nf*TF*Power(z,4) + 8*CF*HSgg00*nf*TF*Power(z,4) + 24*Power(CA,2)*HSgg00*(-1 + Power(z,2) + Power(z,4))*Log(Power(M,2)/Power(mu,2)) + 48*Power(CA,2)*HSgg00*(-1 + z + Power(z,2) + Power(z,4))*Log(1 - z) + 24*Power(CA,2)*HSgg00*Log(z) + 24*Power(CA,2)*HSgg00*z*Log(z) - 12*CF*HSgg00*nf*TF*z*Log(z) + 72*Power(CA,2)*HSgg00*Power(z,2)*Log(z) - 24*CF*HSgg00*nf*TF*Power(z,2)*Log(z) + 48*Power(CA,2)*HSgg00*Power(z,3)*Log(z) - 12*CF*HSgg00*nf*TF*Power(z,3)*Log(z) - 24*Power(CA,2)*HSgg00*Power(z,4)*Log(z)))/2. + 6*Power(CA,2)*HSgg00*(-1 + Power(z,2) + Power(z,4))*(Power(Log(Power(mu,2)),3) + 3*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - Power(Log(qT2),3) + 3*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2)) - 4*Zeta(3)))))/(9.*Power(z,2)*(-1 + Power(z,2)));

}

inline double c2gg2gg_virt_p(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {

 return (-16*CA*(18*CA*HSgg00*(1 + z)*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2))*plusdist(-(Log(-2 + 1/zp + zp)/(-1 + zp))) + z*plusdist(1/(1 - zp))*((9*HSgg10 + CA*HSgg00*(67 - 6*Power(Pi,2)) - 20*HSgg00*nf*TF)*Log(Power(mu,2)/qT2) + (3*(-11*CA*HSgg00 - 6*HSgg11 + 4*HSgg00*nf*TF + 24*CA*HSgg00*Log(Power(M,2)/Power(mu,2)))*Log(Power(mu,2)/qT2)*Log(qT2/Power(mu,2)))/2. - 18*CA*HSgg00*(Power(Log(Power(mu,2)),3) + 3*Power(Log(Power(mu,-2)),2)*Log(Power(mu,2)/qT2) - Power(Log(qT2),3) + 3*Log(Power(mu,-2))*(Power(Log(Power(mu,2)),2) - Power(Log(qT2),2)) - 4*Zeta(3)))))/(9.*z*(1 + z));

}

#endif /*__C2GG2GG_H__*/
