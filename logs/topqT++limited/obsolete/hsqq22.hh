#ifndef __HSQQ22_H__
#define __HSQQ22_H__

#include <heplib/MathematicaC.hh>

inline double hsqq22(double M, double th, double mt, double mu) {

  double bt = Sqrt(1 - (4*Power(mt,2))/Power(M,2));
  double xs = (1 - bt)/(1 + bt);
  double t1 = -((M*mt*(1 - bt*Cos(th)))/Sqrt(1 - Power(bt,2)));
  double u1 = -((M*mt*(1 + bt*Cos(th)))/Sqrt(1 - Power(bt,2)));
  double L23 = Log(-(u1/(M*mt)));
  double LXS = Log(xs);

  double val = (2*(2*Power(t1,2)*Power(xs,2) + 2*Power(mt,2)*t1*xs*Power(1 + xs,2) + Power(mt,4)*Power(1 + xs,2)*(1 + 4*xs + Power(xs,2)))*((4*bt*(-4 + 9*L23) + LXS + Power(bt,2)*LXS)*(36*L23*(-1 + Power(xs,2)) + (-49 + 2*nf)*(-1 + Power(xs,2)) - 2*LXS*(1 + Power(xs,2))) + 28*(LXS*(-1 + Power(xs,2)) + Power(bt,2)*LXS*(-1 + Power(xs,2)) + bt*(72*L23*(-1 + Power(xs,2)) + (-65 + 2*nf)*(-1 + Power(xs,2)) - 2*LXS*(1 + Power(xs,2))))*Log(t1/u1) + 912*bt*(-1 + Power(xs,2))*Power(Log(t1/u1),2)))/(27.*bt*Power(mt,4)*(-1 + xs)*Power(1 + xs,5));

  return val; 

}

#endif/*__HSQQ22_H__*/
