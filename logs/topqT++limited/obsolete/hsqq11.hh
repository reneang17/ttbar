#ifndef __HSQQ11_H__
#define __HSQQ11_H__

#include <heplib/MathematicaC.hh>

inline double hsqq11(double M, double th, double mt, double mu) {

  double bt = Sqrt(1 - (4*Power(mt,2))/Power(M,2));
  double xs = (1 - bt)/(1 + bt);
  double t1 = -((M*mt*(1 - bt*Cos(th)))/Sqrt(1 - Power(bt,2)));
  double u1 = -((M*mt*(1 + bt*Cos(th)))/Sqrt(1 - Power(bt,2)));

  double val = (CF*(2*Power(t1,2)*Power(xs,2) + 2*Power(mt,2)*t1*xs*Power(1 + xs,2) + Power(mt,4)*Power(1 + xs,2)*(1 + 4*xs + Power(xs,2)))*(4*bt*CF*Nc - 4*bt*(-2 + Power(CA,2))*Log(-(t1/(M*mt))) - 8*bt*Log(-(u1/(M*mt))) - Log(xs) - Power(bt,2)*Log(xs)))/(bt*Power(mt,4)*Nc*Power(1 + xs,4));

  return val; 

}

#endif/*__HSQQ11_H__*/
