#ifndef __HSGG11_H__
#define __HSGG11_H__

#include <heplib/MathematicaC.hh>

inline double hsgg11(double M, double th, double mt, double mu) {

  double bt = Sqrt(1 - (4*Power(mt,2))/Power(M,2));
  double xs = (1 - bt)/(1 + bt);
  double t1 = -((M*mt*(1 - bt*Cos(th)))/Sqrt(1 - Power(bt,2)));
  double u1 = -((M*mt*(1 + bt*Cos(th)))/Sqrt(1 - Power(bt,2)));

  double val = (48*bt*Power(mt,2)*Power(Nc,3)*Power(1 + xs,2)*(2*Power(t1,3)*(2*Power(t1,2)*Power(xs,2) + Power(mt,2)*t1*xs*Power(1 + xs,2) + Power(mt,4)*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))) + Power(M,4)*(4*Power(t1,3)*Power(xs,2) + 4*Power(mt,6)*xs*Power(1 + xs,2) + 2*Power(mt,2)*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,4)*t1*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))) + Power(M,2)*t1*(8*Power(t1,3)*Power(xs,2) + 8*Power(mt,6)*xs*Power(1 + xs,2) + 4*Power(mt,2)*Power(t1,2)*xs*Power(1 + xs,2) + 3*Power(mt,4)*t1*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))))*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))) - 36*bt*Power(mt,2)*Power(Nc,2)*(4 - Power(Nc,2))*Power(1 + xs,2)*(2*Power(t1,3)*(2*Power(t1,2)*Power(xs,2) + Power(mt,2)*t1*xs*Power(1 + xs,2) + Power(mt,4)*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))) + Power(M,4)*(4*Power(t1,3)*Power(xs,2) + 4*Power(mt,6)*xs*Power(1 + xs,2) + 2*Power(mt,2)*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,4)*t1*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))) + Power(M,2)*t1*(8*Power(t1,3)*Power(xs,2) + 8*Power(mt,6)*xs*Power(1 + xs,2) + 4*Power(mt,2)*Power(t1,2)*xs*Power(1 + xs,2) + 3*Power(mt,4)*t1*Power(1 + xs,2)*(1 + 6*xs + Power(xs,2))))*(Log(-(t1/(M*mt))) - Log(-(u1/(M*mt)))) - 9*Power(mt,4)*(4 - Power(Nc,2))*Power(1 + xs,2)*(-2*Power(t1,2)*(4*Power(mt,4) + Power(t1,2))*xs*Power(1 + xs,2) - Power(M,4)*(4*Power(mt,4)*xs*Power(1 + xs,2) + 2*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,2)*t1*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))) - Power(M,2)*t1*(8*Power(mt,4)*xs*Power(1 + xs,2) + 4*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,2)*t1*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))))*(4*bt*CF*Nc - 2*bt*Power(Nc,2)*Log(-(t1/(M*mt))) - 2*bt*Power(Nc,2)*Log(-(u1/(M*mt))) - Log(xs) - Power(bt,2)*Log(xs)) - 9*Power(Nc,2)*(2*Power(t1,2)*xs*(4*Power(t1,4)*Power(xs,2) + 4*Power(mt,2)*Power(t1,3)*xs*Power(1 + xs,2) + 4*Power(mt,8)*Power(1 + xs,4) + Power(mt,4)*Power(t1,2)*Power(1 + xs,2)*(3 + 14*xs + 3*Power(xs,2))) + Power(M,4)*(8*Power(t1,4)*Power(xs,3) + 8*Power(mt,2)*Power(t1,3)*Power(xs,2)*Power(1 + xs,2) + 4*Power(mt,8)*xs*Power(1 + xs,4) + 2*Power(mt,4)*Power(t1,2)*xs*Power(1 + xs,2)*(3 + 14*xs + 3*Power(xs,2)) + Power(mt,6)*t1*Power(1 + xs,2)*(1 + 8*xs + 22*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))) + Power(M,2)*t1*(16*Power(t1,4)*Power(xs,3) + 16*Power(mt,2)*Power(t1,3)*Power(xs,2)*Power(1 + xs,2) + 8*Power(mt,8)*xs*Power(1 + xs,4) + 4*Power(mt,4)*Power(t1,2)*xs*Power(1 + xs,2)*(3 + 14*xs + 3*Power(xs,2)) + Power(mt,6)*t1*Power(1 + xs,2)*(1 + 8*xs + 22*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))))*(4*bt*CF*Nc - 2*bt*Power(Nc,2)*Log(-(t1/(M*mt))) - 2*bt*Power(Nc,2)*Log(-(u1/(M*mt))) - Log(xs) - Power(bt,2)*Log(xs)) + 4*CF*Power(mt,4)*Power(Nc,3)*Power(1 + xs,2)*(-2*Power(t1,2)*(4*Power(mt,4) + Power(t1,2))*xs*Power(1 + xs,2) - Power(M,4)*(4*Power(mt,4)*xs*Power(1 + xs,2) + 2*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,2)*t1*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))) - Power(M,2)*t1*(8*Power(mt,4)*xs*Power(1 + xs,2) + 4*Power(t1,2)*xs*Power(1 + xs,2) + Power(mt,2)*t1*(1 + 8*xs + 6*Power(xs,2) + 8*Power(xs,3) + Power(xs,4))))*(2*bt + (1 + Power(bt,2))*Log(xs)))/(36.*bt*Power(mt,4)*Power(Nc,2)*Power(t1,2)*Power(Power(M,2) + t1,2)*xs*Power(1 + xs,4));

  return val; 

}

#endif/*__HSGG11_H__*/
