#ifndef __HSQQ00_H__
#define __HSQQ00_H__

#include <heplib/MathematicaC.hh>

inline double hsqq00(double M, double th, double mt, double mu) {

  double bt = Sqrt(1 - (4*Power(mt,2))/Power(M,2));
  double xs = (1 - bt)/(1 + bt);
  double t1 = -((M*mt*(1 - bt*Cos(th)))/Sqrt(1 - Power(bt,2)));

  double val = (CF*(2*Power(t1,2)*Power(xs,2) + 2*Power(mt,2)*t1*xs*Power(1 + xs,2) + Power(mt,4)*Power(1 + xs,2)*(1 + 4*xs + Power(xs,2))))/(Power(mt,4)*Power(1 + xs,4));

  return val; 

}

#endif/*__HSQQ00_H__*/
