(* ::Package:: *)

(* soft and hard functions *)
Get[mypath<>"/soft_hard/I_soft.m"];
Get[mypath<>"/soft_hard/color_matrices.m"];
Get[mypath<>"/soft_hard/hard1gg.m"];
Get[mypath<>"/soft_hard/hard1qq.m"];
Get[mypath<>"/sigma_fucntion/NLO_Splitting_func.m"];
softqq[0]=wqq00;
softqq[1]= 2(I13 wqq13+I14 wqq14 +I23 wqq23 + I24 wqq24 +I33 wqq33 +I34 wqq34)//Simplify;
softqq[2]=Get[mypath<>"/soft_hard/softqq2.m"];
softgg[0]=wgg00;
softgg[1]= 2(I13 wgg13+I14 wgg14 +I23 wgg23 + I24 wgg24 +I33 wgg33 +I34 wgg34)//Expand//Simplify;
softgg[2]=Get[mypath<>"/soft_hard/softgg2.m"];


Sigmaqqbar[ab_,order_,n_]:=Module[
{sigma},
\[CapitalGamma]1F=CF(268/9-(4\[Pi]^2)/3)CA-80/9 TF nf CF;
\[CapitalGamma]0F=4 CF;
\[Gamma]1q = CF^2 (-3/2+2\[Pi]^2-24Zeta[3])+CA CF(-961/54-11/6 \[Pi]^2+26Zeta[3])+CF nf/2(130/27+(2\[Pi]^2)/3);
d2q =  CF ((808/27-28Zeta[3])CA-224/27 1/2 nf );
\[Beta]0  =  (11 CA-2nf)/3;
\[Gamma]0q =  -3CF;
logsmt=Log[M^2/\[Mu]^2];
If[ab=="qqbar", If[order==1,If[n==2,
sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb12.m"],
If[n==1,
sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb11.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]],
If[order==2, If[n==4,
sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb24.m"],
If[n==3,
sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb23.m"],
If[n==2,
sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qqb2qqb21.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]],
If[ab=="qg", If[order==1,If[n==2, sigma=0, 
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qg2qqb11.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]], 
If[order==2, If[n==4, sigma=0,
If[n==3,sigma=Get[mypath<>"/sigma_fucntion/qg2qqb23.m"], 
If[n==2,sigma=Get[mypath<>"/sigma_fucntion/qg2qqb22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qg2qqb21.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]
],
If[ab=="gg", If[order==1,If[n==2, sigma=0, 
If[n==1,sigma=0,
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]], 
If[order==2, If[n==4, sigma=0,
If[n==3,sigma=0, 
If[n==2,sigma=Get[mypath<>"/sigma_fucntion/gg2qqb22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/gg2qqb21.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]],
If[ab=="qqprime", If[order==1,If[n==2, sigma=0, 
If[n==1,sigma=0,
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]], 
If[order==2, If[n==4, sigma=0,
If[n==3,sigma=0, 
If[n==2,sigma=Get[mypath<>"/sigma_fucntion/qqprime2qqb22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qqprime2qqb21.m"],
Print[" If in function Sigmaqqbar[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]]]]]];
Clear[\[CapitalGamma]0F, \[CapitalGamma]1F,d2q,\[Gamma]1q,\[Beta]0,\[Gamma]0q,logsmts];
If[order===1,sigma=sigma*4];
If[order===2,sigma=sigma*16];
Return[sigma];
]


Sigmagg[ab_,order_,n_]:=Module[
{sigma},
\[Gamma]0g = (-11 CA +2nf)/3;
\[Beta]0 =  (11CA-2nf)/3;
\[CapitalGamma]0A =  4CA;
\[CapitalGamma]1A =  CA^2 (268/9-(4 \[Pi]^2)/3)-(80 CA nf TF)/9;
\[Gamma]1g = CA^2 (-692/27+(11 \[Pi]^2)/18+2Zeta[3])+CA TF nf(256/27-(2\[Pi]^2)/9)+4CF TF nf;
d2g = CA(CA(808/27-28Zeta[3])-224/27 TF nf);
logsmt=Log[M^2/\[Mu]^2];
If[ab=="gg", If[order==1,If[n==2,
sigma=Get[mypath<>"/sigma_fucntion/gg2gg12.m"],
If[n==1,
sigma=Get[mypath<>"/sigma_fucntion/gg2gg11.m"],
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]],
If[order==2, If[n==4,
sigma=Get[mypath<>"/sigma_fucntion/gg2gg24.m"],
If[n==3,
sigma=Get[mypath<>"/sigma_fucntion/gg2gg23.m"],
If[n==2,
sigma=Get[mypath<>"/sigma_fucntion/gg2gg22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/gg2gg21.m"],
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]],
If[ab=="qq", If[order==1,If[n==2, sigma=0, 
If[n==1,sigma=0,
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]], 
If[order==2, If[n==4, sigma=0,
If[n==3,sigma=0, 
If[n==2,sigma=Get[mypath<>"/sigma_fucntion/qq2gg22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qq2gg21.m"],
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]],
If[ab=="qg", If[order==1,If[n==2, sigma=0, 
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qg2gg11.m"],
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 1 then n must be one of {1,2};"];
Abort[];]], 
If[order==2, If[n==4, sigma=0,
If[n==3,sigma=Get[mypath<>"/sigma_fucntion/qg2gg23.m"], 
If[n==2,sigma=Get[mypath<>"/sigma_fucntion/qg2gg22.m"],
If[n==1,sigma=Get[mypath<>"/sigma_fucntion/qg2gg21.m"],
Print[" If in function Sigmagg[ab,order,n,z_,m,costh] order equals 2 then n must be one of {1,2,3,4};"];
Abort[];]]]]]]]]];
Clear[ \[CapitalGamma]0A, \[CapitalGamma]1A, d2g,  \[Beta]0, \[Gamma]0g, \[Gamma]1g,logsmt];
If[order===1,sigma=sigma*4];
If[order===2,sigma=sigma*16];
Return[sigma];
]



Sigmaqqbar::usage="Sigmaqqbar[\"ab\", i,j] gives the coefficients \!\(\*SubsuperscriptBox[\(\[CapitalSigma]\), OverscriptBox[\(qq < \(-ab\)\), \(-\)], \((i, j)\)]\), where ab=qqbar,qg,gg and qqprime.";
Sigmagg::usage="Sigmagg[\"ab\",i,j] gives the coefficients \!\(\*SubsuperscriptBox[\(\[CapitalSigma]\), OverscriptBox[\(gg < \(-ab\)\), \(-\)], \((i, j)\)]\), where ab=gg, qg and qq.";
softqq::usage="softqq[order] returns the LO, NLO and NNLO(Scale dependent terms) soft matrix for qqbar channel
for order==0, 1 and 2, respectively.";
softgg::usage="The function softgg[order] returns the LO, NLO and NNLO(Scale dependent terms) soft matrix for gg channel
for order==0, 1 and 2, respectively.";
Hqq::usage="Hqq[order] returns the LO and NLO hard function matrix for qqbar channel
for order==0 and 1, respectively.";
Hgg::usage="Hgg[order] returns the LO and NLO hard function matrix for gg channel
for order==0 and 1, respectively.";
PqqV::usage="PqqV[z] gives the next-to-leading order non singular splictting function for quark density, \!\(\*SubsuperscriptBox[\(P\), \(qq\), \(V\)]\). 
For quark splitting functions, \!\(\*SubscriptBox[\(P\), \(\*SubscriptBox[\(q\), \(i\)] \*SubscriptBox[\(q\), \(j\)]\)]\)=\!\(\*SubscriptBox[\(\[Delta]\), \(ij\)]\)\!\(\*SubsuperscriptBox[\(P\), \(qq\), \(V\)]\)+\!\(\*SubsuperscriptBox[\(P\), \(qq\), \(S\)]\).";
PqqbV::usage="PqqbV[z] gives the next-to-leading order non singular splictting function for quark density,\!\(\*SubsuperscriptBox[\(P\), \(qqb\), \(S\)]\). . 
For quark splitting functions, \!\(\*SubscriptBox[\(P\), \(\*SubscriptBox[\(q\), \(i\)] \*SubscriptBox[\(qb\), \(j\)]\)]\)=\!\(\*SubscriptBox[\(\[Delta]\), \(ij\)]\)\!\(\*SubsuperscriptBox[\(P\), \(qqb\), \(V\)]\)+\!\(\*SubsuperscriptBox[\(P\), \(qqb\), \(S\)]\).";
PqqS::usage="PqqS[z] gives the next-to-leading order singular splictting function for quark density, \!\(\*SubsuperscriptBox[\(P\), \(qqb\), \(S\)]\).. 
For quark splitting functions, \!\(\*SubscriptBox[\(P\), \(\*SubscriptBox[\(q\), \(i\)] \*SubscriptBox[\(q\), \(j\)]\)]\)=\!\(\*SubscriptBox[\(\[Delta]\), \(ij\)]\)\!\(\*SubsuperscriptBox[\(P\), \(qq\), \(V\)]\)+\!\(\*SubsuperscriptBox[\(P\), \(qq\), \(S\)]\).";
pqg2::usage="pqg2[z] gives the next-to-leading order gluon-quark splictting function."
pgq2::usage="pgq2[z] gives the next-to-leading order quark-gluon splictting function."
pgg2::usage="pgg2[z] gives the next-to-leading order gluon-gluon splictting function.";
