(* ::Package:: *)


I13=Lp ( -(2/\[Alpha])+Log[\[Mu]^2/\[Nu]^2]+2 Log[-(t1/(mt M))])-Lp^2/2-\[Pi]^2/12-Li2[1-(t1 u1 )/(mt^2 M^2)]
I23=Lp ( 2/\[Alpha]-Log[\[Mu]^2/\[Nu]^2]+2 Log[-(u1/(mt M))])+Lp^2/2+\[Pi]^2/12-Li2[1-(t1 u1 )/(mt^2 M^2)]
I34 = -((1+\[Beta]t^2)/\[Beta]t)Log[xs] (Lp-Li2[-xs Tan[\[Theta]/2]^2]+Li2[-1/xs Tan[(\[Theta]/2)]^2]+4 Log[xs] Log[Cos[\[Theta]/2]])
I33=2 Lp-2 Log[(t1 u1 )/(mt^2 M^2)]
I14=I13/.{t1->u1};
I24=I23/.{u1-> t1};
I44=I33;
