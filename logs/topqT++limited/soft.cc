// Generated by GenerateCppCodeSoftFunction.m on Mon 15 Oct 2018 10:53:33

#include "soft.hh"

void softqq00 (double M, double theta, double mt, double softmatrix[2][2]) {

  softmatrix[0][0] =
    Nc;
  softmatrix[0][1] =
    0;
  softmatrix[1][0] =
    0;
  softmatrix[1][1] =
    CF/2.;

};
void softqq11 (double M, double theta, double mt, double softmatrix[2][2]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    2*(2*CF*Nc + (CA*CF*Log(xs))/beta + beta*CA*CF*Log(xs));
  softmatrix[0][1] =
    (-4*CA*CF*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))))/Nc;
  softmatrix[1][0] =
    (-4*CA*CF*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))))/Nc;
  softmatrix[1][1] =
    (CF*(4*beta*CF*Nc + 8*beta*Log(-(t1/(M*mt))) - 4*beta*Power(CA,2)*Log(-(t1/(M*mt))) - 8*beta*Log(-(u1/(M*mt))) - Log(xs) - Power(beta,2)*Log(xs)))/(2.*beta*Nc);

};
void softqq10 (double M, double theta, double mt, double softmatrix[2][2]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    2*(2*CF*Nc*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + (4*CA*CF*Log(xs)*Log(Cos(theta/2.)))/beta + 4*beta*CA*CF*Log(xs)*Log(Cos(theta/2.)) + (CA*CF*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)))/beta + beta*CA*CF*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - (CA*CF*PolyLog(2,-(xs*Power(Tan(theta/2.),2))))/beta - beta*CA*CF*PolyLog(2,-(xs*Power(Tan(theta/2.),2))));
  softmatrix[0][1] =
    0;
  softmatrix[1][0] =
    0;
  softmatrix[1][1] =
    (CF*(4*beta*CF*Nc*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 4*Log(xs)*Log(Cos(theta/2.)) - 4*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) + 2*beta*Power(CA,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - (1 + Power(beta,2))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(2.*beta*Nc);

};
void softqq22 (double M, double theta, double mt, double softmatrix[2][2]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (4*(294*Power(beta,2) - 12*Power(beta,2)*nf + 48*Power(beta,2)*Power(Log(t1/u1),2) + 195*beta*Log(xs) + 195*Power(beta,3)*Log(xs) - 6*beta*nf*Log(xs) - 6*Power(beta,3)*nf*Log(xs) + 24*Power(Log(xs),2) + 48*Power(beta,2)*Power(Log(xs),2) + 24*Power(beta,4)*Power(Log(xs),2)))/(9.*Power(beta,2));
  softmatrix[0][1] =
    (4*Log(t1/u1)*(-390*beta + 12*beta*nf + 168*beta*Log(t1/u1) + 216*beta*Log(-(u1/(M*mt))) - 42*Log(xs) - 42*Power(beta,2)*Log(xs)))/(27.*beta);
  softmatrix[1][0] =
    (-4*Log(t1/u1)*(390*beta - 12*beta*nf - 168*beta*Log(t1/u1) - 216*beta*Log(-(u1/(M*mt))) + 42*Log(xs) + 42*Power(beta,2)*Log(xs)))/(27.*beta);
  softmatrix[1][1] =
    (2352*Power(beta,2) - 96*Power(beta,2)*nf - 5460*Power(beta,2)*Log(t1/u1) + 168*Power(beta,2)*nf*Log(t1/u1) + 2736*Power(beta,2)*Power(Log(t1/u1),2) - 7020*Power(beta,2)*Log(-(u1/(M*mt))) + 216*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 6048*Power(beta,2)*Log(t1/u1)*Log(-(u1/(M*mt))) + 3888*Power(beta,2)*Power(Log(-(u1/(M*mt))),2) - 195*beta*Log(xs) - 195*Power(beta,3)*Log(xs) + 6*beta*nf*Log(xs) + 6*Power(beta,3)*nf*Log(xs) + 168*beta*Log(t1/u1)*Log(xs) + 168*Power(beta,3)*Log(t1/u1)*Log(xs) + 216*beta*Log(-(u1/(M*mt)))*Log(xs) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs) + 3*Power(Log(xs),2) + 6*Power(beta,2)*Power(Log(xs),2) + 3*Power(beta,4)*Power(Log(xs),2))/(81.*Power(beta,2));

};
void softqq21 (double M, double theta, double mt, double softmatrix[2][2]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (4*(588*Power(beta,2) - 40*Power(beta,2)*nf - 90*beta*Power(Pi,2) + 144*Power(beta,2)*Power(Pi,2) - 90*Power(beta,3)*Power(Pi,2) + 588*Power(beta,2)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 24*Power(beta,2)*nf*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 402*beta*Log(xs) + 402*Power(beta,3)*Log(xs) - 20*beta*nf*Log(xs) - 20*Power(beta,3)*nf*Log(xs) - 45*Power(Pi,2)*Log(xs) + 72*beta*Power(Pi,2)*Log(xs) - 90*Power(beta,2)*Power(Pi,2)*Log(xs) + 72*Power(beta,3)*Power(Pi,2)*Log(xs) - 45*Power(beta,4)*Power(Pi,2)*Log(xs) - 216*beta*Log((4*beta)/Power(1 + beta,2))*Log(xs) - 216*Power(beta,3)*Log((4*beta)/Power(1 + beta,2))*Log(xs) + 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) + 96*Power(beta,3)*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) + 108*beta*Power(Log(xs),2) - 216*Power(beta,2)*Power(Log(xs),2) + 108*Power(beta,3)*Power(Log(xs),2) + 18*Power(Log(xs),3) - 36*beta*Power(Log(xs),3) + 36*Power(beta,2)*Power(Log(xs),3) - 36*Power(beta,3)*Power(Log(xs),3) + 18*Power(beta,4)*Power(Log(xs),3) + 1176*beta*Log(xs)*Log(Cos(theta/2.)) + 1176*Power(beta,3)*Log(xs)*Log(Cos(theta/2.)) - 48*beta*nf*Log(xs)*Log(Cos(theta/2.)) - 48*Power(beta,3)*nf*Log(xs)*Log(Cos(theta/2.)) + 192*Power(Log(xs),2)*Log(Cos(theta/2.)) + 384*Power(beta,2)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 192*Power(beta,4)*Power(Log(xs),2)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,3)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,2)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Power(beta,4)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 294*beta*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 294*Power(beta,3)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 12*beta*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 12*Power(beta,3)*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 48*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 96*Power(beta,2)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 48*Power(beta,4)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 294*beta*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 294*Power(beta,3)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 12*beta*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 12*Power(beta,3)*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 48*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 96*Power(beta,2)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 48*Power(beta,4)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 54*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,2)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Power(beta,4)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Zeta(3) + 108*Power(beta,2)*Zeta(3) + 54*Power(beta,4)*Zeta(3)))/(9.*Power(beta,2));
  softmatrix[0][1] =
    (4*Log(t1/u1)*(-804*beta + 40*beta*nf + 36*beta*Power(Pi,2) - 192*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 168*Log(xs)*Log(Cos(theta/2.)) - 168*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 42*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 42*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 42*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 42*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(27.*beta);
  softmatrix[1][0] =
    (-4*Log(t1/u1)*(804*beta - 40*beta*nf - 36*beta*Power(Pi,2) + 192*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 168*Log(xs)*Log(Cos(theta/2.)) + 168*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) + 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + 42*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 42*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 42*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 42*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(27.*beta);
  softmatrix[1][1] =
    (4704*Power(beta,2) - 320*Power(beta,2)*nf + 90*beta*Power(Pi,2) - 468*Power(beta,2)*Power(Pi,2) + 90*Power(beta,3)*Power(Pi,2) - 11256*Power(beta,2)*Log(t1/u1) + 560*Power(beta,2)*nf*Log(t1/u1) + 504*Power(beta,2)*Power(Pi,2)*Log(t1/u1) - 14472*Power(beta,2)*Log(-(u1/(M*mt))) + 720*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 648*Power(beta,2)*Power(Pi,2)*Log(-(u1/(M*mt))) + 4704*Power(beta,2)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 192*Power(beta,2)*nf*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 2688*Power(beta,2)*Log(t1/u1)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 3456*Power(beta,2)*Log(-(u1/(M*mt)))*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 402*beta*Log(xs) - 402*Power(beta,3)*Log(xs) + 20*beta*nf*Log(xs) + 20*Power(beta,3)*nf*Log(xs) + 45*Power(Pi,2)*Log(xs) - 72*beta*Power(Pi,2)*Log(xs) + 90*Power(beta,2)*Power(Pi,2)*Log(xs) - 72*Power(beta,3)*Power(Pi,2)*Log(xs) + 45*Power(beta,4)*Power(Pi,2)*Log(xs) + 216*beta*Log((4*beta)/Power(1 + beta,2))*Log(xs) + 216*Power(beta,3)*Log((4*beta)/Power(1 + beta,2))*Log(xs) - 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 96*Power(beta,3)*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 108*beta*Power(Log(xs),2) + 216*Power(beta,2)*Power(Log(xs),2) - 108*Power(beta,3)*Power(Log(xs),2) - 18*Power(Log(xs),3) + 36*beta*Power(Log(xs),3) - 36*Power(beta,2)*Power(Log(xs),3) + 36*Power(beta,3)*Power(Log(xs),3) - 18*Power(beta,4)*Power(Log(xs),3) - 1176*beta*Log(xs)*Log(Cos(theta/2.)) - 1176*Power(beta,3)*Log(xs)*Log(Cos(theta/2.)) + 48*beta*nf*Log(xs)*Log(Cos(theta/2.)) + 48*Power(beta,3)*nf*Log(xs)*Log(Cos(theta/2.)) + 672*beta*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 672*Power(beta,3)*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 864*beta*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 864*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 24*Power(Log(xs),2)*Log(Cos(theta/2.)) + 48*Power(beta,2)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 24*Power(beta,4)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 108*beta*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,3)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,2)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Power(beta,4)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 5292*Power(beta,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 216*Power(beta,2)*nf*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 3024*Power(beta,2)*Log(t1/u1)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 3888*Power(beta,2)*Log(-(u1/(M*mt)))*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*beta*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*Power(beta,3)*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 294*beta*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 294*Power(beta,3)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*beta*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,3)*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 168*beta*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 168*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,2)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Power(beta,4)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 294*beta*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 294*Power(beta,3)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*beta*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,3)*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 168*beta*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 168*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,2)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Power(beta,4)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 54*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,2)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Power(beta,4)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Zeta(3) + 1836*Power(beta,2)*Zeta(3) - 54*Power(beta,4)*Zeta(3))/(81.*Power(beta,2));

};
void softgg00 (double M, double theta, double mt, double softmatrix[3][3]) {

  softmatrix[0][0] =
    Nc;
  softmatrix[0][1] =
    0;
  softmatrix[0][2] =
    0;
  softmatrix[1][0] =
    0;
  softmatrix[1][1] =
    Nc/2.;
  softmatrix[1][2] =
    0;
  softmatrix[2][0] =
    0;
  softmatrix[2][1] =
    0;
  softmatrix[2][2] =
    (-4 + Power(Nc,2))/(2.*Nc);

};
void softgg11 (double M, double theta, double mt, double softmatrix[3][3]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (2*CF*Nc*(2*beta + Log(xs) + Power(beta,2)*Log(xs)))/beta;
  softmatrix[0][1] =
    4*Nc*(-Log(-(t1/(M*mt))) + Log(-(u1/(M*mt))));
  softmatrix[0][2] =
    0;
  softmatrix[1][0] =
    4*Nc*(-Log(-(t1/(M*mt))) + Log(-(u1/(M*mt))));
  softmatrix[1][1] =
    -(-4*beta*CF*Nc + 2*beta*Power(Nc,2)*Log(-(t1/(M*mt))) + 2*beta*Power(Nc,2)*Log(-(u1/(M*mt))) + Log(xs) + Power(beta,2)*Log(xs))/(2.*beta);
  softmatrix[1][2] =
    -((-4 + Power(Nc,2))*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))));
  softmatrix[2][0] =
    0;
  softmatrix[2][1] =
    -((-4 + Power(Nc,2))*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))));
  softmatrix[2][2] =
    -((-4 + Power(Nc,2))*(-4*beta*CF*Nc + 2*beta*Power(Nc,2)*Log(-(t1/(M*mt))) + 2*beta*Power(Nc,2)*Log(-(u1/(M*mt))) + Log(xs) + Power(beta,2)*Log(xs)))/(2.*beta*Power(Nc,2));

};
void softgg10 (double M, double theta, double mt, double softmatrix[3][3]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (2*CF*Nc*(2*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 4*Log(xs)*Log(Cos(theta/2.)) + 4*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) + (1 + Power(beta,2))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - (1 + Power(beta,2))*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/beta;
  softmatrix[0][1] =
    0;
  softmatrix[0][2] =
    0;
  softmatrix[1][0] =
    0;
  softmatrix[1][1] =
    -(-4*beta*CF*Nc*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 4*Log(xs)*Log(Cos(theta/2.)) + 4*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 2*beta*Power(Nc,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + (1 + Power(beta,2))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))))/(2.*beta);
  softmatrix[1][2] =
    0;
  softmatrix[2][0] =
    0;
  softmatrix[2][1] =
    0;
  softmatrix[2][2] =
    -((-4 + Power(Nc,2))*(-4*beta*CF*Nc*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 4*Log(xs)*Log(Cos(theta/2.)) + 4*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 2*beta*Power(Nc,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + (1 + Power(beta,2))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(2.*beta*Power(Nc,2));

};
void softgg22 (double M, double theta, double mt, double softmatrix[3][3]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (4*(294*Power(beta,2) - 12*Power(beta,2)*nf + 108*Power(beta,2)*Power(Log(t1/u1),2) + 195*beta*Log(xs) + 195*Power(beta,3)*Log(xs) - 6*beta*nf*Log(xs) - 6*Power(beta,3)*nf*Log(xs) + 24*Power(Log(xs),2) + 48*Power(beta,2)*Power(Log(xs),2) + 24*Power(beta,4)*Power(Log(xs),2)))/(9.*Power(beta,2));
  softmatrix[0][1] =
    (Log(t1/u1)*(-390*beta + 12*beta*nf + 108*beta*Log(t1/u1) + 216*beta*Log(-(u1/(M*mt))) - 42*Log(xs) - 42*Power(beta,2)*Log(xs)))/(3.*beta);
  softmatrix[0][2] =
    20*Power(Log(t1/u1),2);
  softmatrix[1][0] =
    -(Log(t1/u1)*(390*beta - 12*beta*nf - 108*beta*Log(t1/u1) - 216*beta*Log(-(u1/(M*mt))) + 42*Log(xs) + 42*Power(beta,2)*Log(xs)))/(3.*beta);
  softmatrix[1][1] =
    (2352*Power(beta,2) - 96*Power(beta,2)*nf - 3510*Power(beta,2)*Log(t1/u1) + 108*Power(beta,2)*nf*Log(t1/u1) + 2376*Power(beta,2)*Power(Log(t1/u1),2) - 7020*Power(beta,2)*Log(-(u1/(M*mt))) + 216*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 3888*Power(beta,2)*Log(t1/u1)*Log(-(u1/(M*mt))) + 3888*Power(beta,2)*Power(Log(-(u1/(M*mt))),2) - 195*beta*Log(xs) - 195*Power(beta,3)*Log(xs) + 6*beta*nf*Log(xs) + 6*Power(beta,3)*nf*Log(xs) + 108*beta*Log(t1/u1)*Log(xs) + 108*Power(beta,3)*Log(t1/u1)*Log(xs) + 216*beta*Log(-(u1/(M*mt)))*Log(xs) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs) + 3*Power(Log(xs),2) + 6*Power(beta,2)*Power(Log(xs),2) + 3*Power(beta,4)*Power(Log(xs),2))/(36.*Power(beta,2));
  softmatrix[1][2] =
    (5*Log(t1/u1)*(-195*beta + 6*beta*nf + 108*beta*Log(t1/u1) + 216*beta*Log(-(u1/(M*mt))) + 6*Log(xs) + 6*Power(beta,2)*Log(xs)))/(18.*beta);
  softmatrix[2][0] =
    20*Power(Log(t1/u1),2);
  softmatrix[2][1] =
    (5*Log(t1/u1)*(-195*beta + 6*beta*nf + 108*beta*Log(t1/u1) + 216*beta*Log(-(u1/(M*mt))) + 6*Log(xs) + 6*Power(beta,2)*Log(xs)))/(18.*beta);
  softmatrix[2][2] =
    (5*(2352*Power(beta,2) - 96*Power(beta,2)*nf - 3510*Power(beta,2)*Log(t1/u1) + 108*Power(beta,2)*nf*Log(t1/u1) + 1512*Power(beta,2)*Power(Log(t1/u1),2) - 7020*Power(beta,2)*Log(-(u1/(M*mt))) + 216*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 3888*Power(beta,2)*Log(t1/u1)*Log(-(u1/(M*mt))) + 3888*Power(beta,2)*Power(Log(-(u1/(M*mt))),2) - 195*beta*Log(xs) - 195*Power(beta,3)*Log(xs) + 6*beta*nf*Log(xs) + 6*Power(beta,3)*nf*Log(xs) + 108*beta*Log(t1/u1)*Log(xs) + 108*Power(beta,3)*Log(t1/u1)*Log(xs) + 216*beta*Log(-(u1/(M*mt)))*Log(xs) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs) + 3*Power(Log(xs),2) + 6*Power(beta,2)*Power(Log(xs),2) + 3*Power(beta,4)*Power(Log(xs),2)))/(324.*Power(beta,2));

};
void softgg21 (double M, double theta, double mt, double softmatrix[3][3]) {

  double beta = sqrt(1 - 4*pow(mt,2)/pow(M,2));
  double xs = (1 - beta)/(1 + beta);
  double t1 = -((1 - beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;
  double u1 = -((1 + beta*cos(theta))/sqrt(1 - pow(beta,2)))*mt*M;

  softmatrix[0][0] =
    (4*(588*Power(beta,2) - 40*Power(beta,2)*nf - 90*beta*Power(Pi,2) + 144*Power(beta,2)*Power(Pi,2) - 90*Power(beta,3)*Power(Pi,2) + 588*Power(beta,2)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 24*Power(beta,2)*nf*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 402*beta*Log(xs) + 402*Power(beta,3)*Log(xs) - 20*beta*nf*Log(xs) - 20*Power(beta,3)*nf*Log(xs) - 45*Power(Pi,2)*Log(xs) + 72*beta*Power(Pi,2)*Log(xs) - 90*Power(beta,2)*Power(Pi,2)*Log(xs) + 72*Power(beta,3)*Power(Pi,2)*Log(xs) - 45*Power(beta,4)*Power(Pi,2)*Log(xs) - 216*beta*Log((4*beta)/Power(1 + beta,2))*Log(xs) - 216*Power(beta,3)*Log((4*beta)/Power(1 + beta,2))*Log(xs) + 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) + 96*Power(beta,3)*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) + 108*beta*Power(Log(xs),2) - 216*Power(beta,2)*Power(Log(xs),2) + 108*Power(beta,3)*Power(Log(xs),2) + 18*Power(Log(xs),3) - 36*beta*Power(Log(xs),3) + 36*Power(beta,2)*Power(Log(xs),3) - 36*Power(beta,3)*Power(Log(xs),3) + 18*Power(beta,4)*Power(Log(xs),3) + 1176*beta*Log(xs)*Log(Cos(theta/2.)) + 1176*Power(beta,3)*Log(xs)*Log(Cos(theta/2.)) - 48*beta*nf*Log(xs)*Log(Cos(theta/2.)) - 48*Power(beta,3)*nf*Log(xs)*Log(Cos(theta/2.)) + 192*Power(Log(xs),2)*Log(Cos(theta/2.)) + 384*Power(beta,2)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 192*Power(beta,4)*Power(Log(xs),2)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,3)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,2)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Power(beta,4)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 294*beta*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 294*Power(beta,3)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 12*beta*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 12*Power(beta,3)*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 48*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 96*Power(beta,2)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 48*Power(beta,4)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 294*beta*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 294*Power(beta,3)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 12*beta*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 12*Power(beta,3)*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 48*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 96*Power(beta,2)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 48*Power(beta,4)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 54*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,2)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Power(beta,4)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Zeta(3) + 108*Power(beta,2)*Zeta(3) + 54*Power(beta,4)*Zeta(3)))/(9.*Power(beta,2));
  softmatrix[0][1] =
    (Log(t1/u1)*(-804*beta + 40*beta*nf + 36*beta*Power(Pi,2) - 192*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 168*Log(xs)*Log(Cos(theta/2.)) - 168*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 42*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 42*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 42*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 42*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(3.*beta);
  softmatrix[0][2] =
    0;
  softmatrix[1][0] =
    -(Log(t1/u1)*(804*beta - 40*beta*nf - 36*beta*Power(Pi,2) + 192*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 168*Log(xs)*Log(Cos(theta/2.)) + 168*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) + 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + 42*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 42*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 42*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 42*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(3.*beta);
  softmatrix[1][1] =
    (4704*Power(beta,2) - 320*Power(beta,2)*nf + 90*beta*Power(Pi,2) - 468*Power(beta,2)*Power(Pi,2) + 90*Power(beta,3)*Power(Pi,2) - 7236*Power(beta,2)*Log(t1/u1) + 360*Power(beta,2)*nf*Log(t1/u1) + 324*Power(beta,2)*Power(Pi,2)*Log(t1/u1) - 14472*Power(beta,2)*Log(-(u1/(M*mt))) + 720*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 648*Power(beta,2)*Power(Pi,2)*Log(-(u1/(M*mt))) + 4704*Power(beta,2)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 192*Power(beta,2)*nf*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 1728*Power(beta,2)*Log(t1/u1)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 3456*Power(beta,2)*Log(-(u1/(M*mt)))*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 402*beta*Log(xs) - 402*Power(beta,3)*Log(xs) + 20*beta*nf*Log(xs) + 20*Power(beta,3)*nf*Log(xs) + 45*Power(Pi,2)*Log(xs) - 72*beta*Power(Pi,2)*Log(xs) + 90*Power(beta,2)*Power(Pi,2)*Log(xs) - 72*Power(beta,3)*Power(Pi,2)*Log(xs) + 45*Power(beta,4)*Power(Pi,2)*Log(xs) + 216*beta*Log((4*beta)/Power(1 + beta,2))*Log(xs) + 216*Power(beta,3)*Log((4*beta)/Power(1 + beta,2))*Log(xs) - 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 96*Power(beta,3)*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 108*beta*Power(Log(xs),2) + 216*Power(beta,2)*Power(Log(xs),2) - 108*Power(beta,3)*Power(Log(xs),2) - 18*Power(Log(xs),3) + 36*beta*Power(Log(xs),3) - 36*Power(beta,2)*Power(Log(xs),3) + 36*Power(beta,3)*Power(Log(xs),3) - 18*Power(beta,4)*Power(Log(xs),3) - 1176*beta*Log(xs)*Log(Cos(theta/2.)) - 1176*Power(beta,3)*Log(xs)*Log(Cos(theta/2.)) + 48*beta*nf*Log(xs)*Log(Cos(theta/2.)) + 48*Power(beta,3)*nf*Log(xs)*Log(Cos(theta/2.)) + 432*beta*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 432*Power(beta,3)*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 864*beta*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 864*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 24*Power(Log(xs),2)*Log(Cos(theta/2.)) + 48*Power(beta,2)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 24*Power(beta,4)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 108*beta*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,3)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,2)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Power(beta,4)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 5292*Power(beta,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 216*Power(beta,2)*nf*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 1944*Power(beta,2)*Log(t1/u1)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 3888*Power(beta,2)*Log(-(u1/(M*mt)))*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*beta*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*Power(beta,3)*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 294*beta*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 294*Power(beta,3)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*beta*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,3)*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 108*beta*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 108*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,2)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Power(beta,4)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 294*beta*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 294*Power(beta,3)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*beta*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,3)*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 108*beta*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 108*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,2)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Power(beta,4)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 54*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,2)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Power(beta,4)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Zeta(3) + 1836*Power(beta,2)*Zeta(3) - 54*Power(beta,4)*Zeta(3))/(36.*Power(beta,2));
  softmatrix[1][2] =
    (5*Log(t1/u1)*(-402*beta + 20*beta*nf + 18*beta*Power(Pi,2) - 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 24*Log(xs)*Log(Cos(theta/2.)) + 24*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + 6*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 6*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(18.*beta);
  softmatrix[2][0] =
    0;
  softmatrix[2][1] =
    (5*Log(t1/u1)*(-402*beta + 20*beta*nf + 18*beta*Power(Pi,2) - 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2))) + 24*Log(xs)*Log(Cos(theta/2.)) + 24*Power(beta,2)*Log(xs)*Log(Cos(theta/2.)) - 108*beta*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) + 6*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Power(beta,2)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 6*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Power(beta,2)*PolyLog(2,-(xs*Power(Tan(theta/2.),2)))))/(18.*beta);
  softmatrix[2][2] =
    (5*(4704*Power(beta,2) - 320*Power(beta,2)*nf + 90*beta*Power(Pi,2) - 468*Power(beta,2)*Power(Pi,2) + 90*Power(beta,3)*Power(Pi,2) - 7236*Power(beta,2)*Log(t1/u1) + 360*Power(beta,2)*nf*Log(t1/u1) + 324*Power(beta,2)*Power(Pi,2)*Log(t1/u1) - 14472*Power(beta,2)*Log(-(u1/(M*mt))) + 720*Power(beta,2)*nf*Log(-(u1/(M*mt))) + 648*Power(beta,2)*Power(Pi,2)*Log(-(u1/(M*mt))) + 4704*Power(beta,2)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 192*Power(beta,2)*nf*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 1728*Power(beta,2)*Log(t1/u1)*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 3456*Power(beta,2)*Log(-(u1/(M*mt)))*Log((t1*u1)/(Power(M,2)*Power(mt,2))) - 402*beta*Log(xs) - 402*Power(beta,3)*Log(xs) + 20*beta*nf*Log(xs) + 20*Power(beta,3)*nf*Log(xs) + 45*Power(Pi,2)*Log(xs) - 72*beta*Power(Pi,2)*Log(xs) + 90*Power(beta,2)*Power(Pi,2)*Log(xs) - 72*Power(beta,3)*Power(Pi,2)*Log(xs) + 45*Power(beta,4)*Power(Pi,2)*Log(xs) + 216*beta*Log((4*beta)/Power(1 + beta,2))*Log(xs) + 216*Power(beta,3)*Log((4*beta)/Power(1 + beta,2))*Log(xs) - 96*beta*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 96*Power(beta,3)*Log((t1*u1)/(Power(M,2)*Power(mt,2)))*Log(xs) - 108*beta*Power(Log(xs),2) + 216*Power(beta,2)*Power(Log(xs),2) - 108*Power(beta,3)*Power(Log(xs),2) - 18*Power(Log(xs),3) + 36*beta*Power(Log(xs),3) - 36*Power(beta,2)*Power(Log(xs),3) + 36*Power(beta,3)*Power(Log(xs),3) - 18*Power(beta,4)*Power(Log(xs),3) - 1176*beta*Log(xs)*Log(Cos(theta/2.)) - 1176*Power(beta,3)*Log(xs)*Log(Cos(theta/2.)) + 48*beta*nf*Log(xs)*Log(Cos(theta/2.)) + 48*Power(beta,3)*nf*Log(xs)*Log(Cos(theta/2.)) + 432*beta*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 432*Power(beta,3)*Log(t1/u1)*Log(xs)*Log(Cos(theta/2.)) + 864*beta*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 864*Power(beta,3)*Log(-(u1/(M*mt)))*Log(xs)*Log(Cos(theta/2.)) + 24*Power(Log(xs),2)*Log(Cos(theta/2.)) + 48*Power(beta,2)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 24*Power(beta,4)*Power(Log(xs),2)*Log(Cos(theta/2.)) + 108*beta*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,3)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 108*Power(beta,2)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Power(beta,4)*Log(xs)*PolyLog(2,Power(-1 + beta,2)/Power(1 + beta,2)) + 5292*Power(beta,2)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 216*Power(beta,2)*nf*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 1944*Power(beta,2)*Log(t1/u1)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 3888*Power(beta,2)*Log(-(u1/(M*mt)))*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*beta*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 108*Power(beta,3)*Log(xs)*PolyLog(2,1 - (t1*u1)/(Power(M,2)*Power(mt,2))) - 294*beta*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) - 294*Power(beta,3)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*beta*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,3)*nf*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 108*beta*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 108*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 12*Power(beta,2)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 6*Power(beta,4)*Log(xs)*PolyLog(2,-(Power(Tan(theta/2.),2)/xs)) + 294*beta*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 294*Power(beta,3)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*beta*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,3)*nf*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 108*beta*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 108*Power(beta,3)*Log(t1/u1)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*beta*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 216*Power(beta,3)*Log(-(u1/(M*mt)))*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 12*Power(beta,2)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) - 6*Power(beta,4)*Log(xs)*PolyLog(2,-(xs*Power(Tan(theta/2.),2))) + 54*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 108*Power(beta,2)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) + 54*Power(beta,4)*PolyLog(3,Power(-1 + beta,2)/Power(1 + beta,2)) - 54*Zeta(3) + 1836*Power(beta,2)*Zeta(3) - 54*Power(beta,4)*Zeta(3)))/(324.*Power(beta,2));

};
