#ifndef __HSGG00_H__
#define __HSGG00_H__

#include <heplib/MathematicaC.hh>

inline double hsgg00(double M, double th, double mt, double mu) {

  double bt = Sqrt(1 - (4*Power(mt,2))/Power(M,2));
  double xs = (1 - bt)/(1 + bt);
  double t1 = -((M*mt*(1 - bt*Cos(th)))/Sqrt(1 - Power(bt,2)));

  double val = -(Power(t1,2)*xs*(18*Power(Nc,2)*Power(t1,4)*Power(xs,2) + 18*Power(mt,2)*Power(Nc,2)*Power(t1,3)*xs*Power(1 + xs,2) + 8*Power(mt,8)*(-9 + 5*Power(Nc,2))*Power(1 + xs,4) + Power(mt,4)*Power(t1,2)*Power(1 + xs,2)*(-18*Power(1 + xs,2) + Power(Nc,2)*(19 + 74*xs + 19*Power(xs,2)))) + Power(M,4)*(18*Power(Nc,2)*Power(t1,4)*Power(xs,3) + 18*Power(mt,2)*Power(Nc,2)*Power(t1,3)*Power(xs,2)*Power(1 + xs,2) + 4*Power(mt,8)*(-9 + 5*Power(Nc,2))*xs*Power(1 + xs,4) + Power(mt,4)*Power(t1,2)*xs*Power(1 + xs,2)*(-18*Power(1 + xs,2) + Power(Nc,2)*(19 + 74*xs + 19*Power(xs,2))) + Power(mt,6)*t1*Power(1 + xs,2)*(-9*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4)) + Power(Nc,2)*(5 + 40*xs + 66*Power(xs,2) + 40*Power(xs,3) + 5*Power(xs,4)))) + Power(M,2)*t1*(36*Power(Nc,2)*Power(t1,4)*Power(xs,3) + 36*Power(mt,2)*Power(Nc,2)*Power(t1,3)*Power(xs,2)*Power(1 + xs,2) + 8*Power(mt,8)*(-9 + 5*Power(Nc,2))*xs*Power(1 + xs,4) + 2*Power(mt,4)*Power(t1,2)*xs*Power(1 + xs,2)*(-18*Power(1 + xs,2) + Power(Nc,2)*(19 + 74*xs + 19*Power(xs,2))) + Power(mt,6)*t1*Power(1 + xs,2)*(-9*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4)) + Power(Nc,2)*(5 + 40*xs + 66*Power(xs,2) + 40*Power(xs,3) + 5*Power(xs,4)))))/(9.*Power(mt,4)*Nc*Power(t1,2)*Power(Power(M,2) + t1,2)*xs*Power(1 + xs,4));

  return val; 

}

#endif/*__HSGG00_H__*/
