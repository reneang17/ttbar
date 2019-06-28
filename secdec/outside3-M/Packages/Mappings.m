(* ::Package:: *)

(**************************************************************************************************
 *   Mappings (lp,kp,lT,kT) to the Hypercube. Double cut Graphs of soft ttbar function, uses HEP  *
 *   Last update 26 10 17                                                                         *
 **************************************************************************************************)

BeginPackage["Mappings`", {"HEP`","Symbols`"}];

Print["Mappings"];



 (**************************************************************************************************
  *      List of updates
  *   - Step 5 in NopPhases modified (b_. to b_) to avoid warning on Mathematica 10.
  *   - auxmodwith(out) function modified in order to reduce splittings when divs only occur       *
  *     when kp,lp->0 and kp,lp->infty.                                                            *
  *   - Last update fixes indices in ReadW 4 5 17                                                  *
  *   - Step 15 of NoPhasesForSecDec 10 5 17.                                                      *
  *   - Factor of 1/4 from Jacobian to LCC                                                         *
  *   - Prev update 6 06 17                                                                        *
  *   - The option RegSwitch was added to MinMaps to activate the factor associated to RegPart    *
  **************************************************************************************************)




(******************************************************************************
 *                                                                            *
 * Public.                                                                     *
 *                                                                            *
 ******************************************************************************)


(*EPS=-ep-1/2*)

EPS::usage = "auxiliar power to deal with simplicifications"



(********************************************************************************
 *                                                                              *
 * Global functions, and symbolic vars.						*
 *										*
 * Note: it is importante to treat separately input with(out) exact gluon prop	*
 *                                                                              *
 ********************************************************************************)


(* Given an infrared part, this is splitted  into a rational part  
and non rational part respectively through the functions:*)

EvaRationalPart::usage = ""
EvaRegPart::usage = ""


MapsForPowerCountingWith::usage = "Apply 16 mappings to do power counting"
MapsForPowerCountingWithout::usage = "Apply 8 maps to do power counting"


MinMapsWithout::usage = ""
MinMapsWith::usage = ""


NoPhasesForSecDec::usage = "Preperates an scalar integrand for the Sector Decomposition module"
(*
(*Undefined vars to do  power counting*)


\[Lambda]::usage = "Expansion parameter in power counting"
ckp::usage = "Auxiliary obj to show power counting"
clp::usage = "Auxiliary obj function to show power counting"
ckT::usage = "Auxiliary obj to show power counting"
clT::usage = "Auxiliary obj to show power counting"


DivSkeleton::usage = "Reads 16 funcs and determines which parts contains divs"
DivSkeletonWO::usage = "Reads 8 funcs and..."

ShowAllBehaviourx::usage = "Using this skeleton show the divergen behavior of x"
ShowAllBehavioury::usage = "of y"
ShowAllBehaviourxT::usage = "of xT"
ShowAllBehaviouryT::usage = "of yT"

(*With this functions, the following functions apply only the necessary mappings and splitings*)
WhichMappingsWith::usage = "" 
WhichMappingsWithout::usage = "" 
HowManyMaps::usage = "" 

*)

Begin["`Private`"]




(******************************************************************************
 *                                                                            *
 * Evaluate delta funcitons before evaluation                                *
 *                                                                            *
 ******************************************************************************)

EvaRationalPart[a_]:=Module[{int,eta},
int=a/4*kT^(1-2ep) Sin[phi]^(-2ep)*lT^(1-2ep)//.{ep->-1/2};
(*Integrate deltas*)
int=1/(lp kp)*int/.{lm->lT^2/lp,km->kT^2/kp};
int=1/Sqrt[-(-1+eta) eta]*int/.{phi->ArcCos[1-2 eta]};
int=1/(4 kT lT) int//.{eta-> (-1+kT^2+2 kT lT+lT^2)/(4 kT lT)};
Return[int//FullSimplify]
]

(*Evaluates the terms with powers and roots that are common to all graphs. The product of this and
 EvaRationalPart gives the complete integrand. *)

EvaRegPart[rapreg_]:=Catch[Block[{int,int2,eta},
int=kT^(1-2ep) Sin[phi]^(-2ep)*lT^(1-2ep)*rapreg;
(*Integrate deltas*)
int=(1/lp kp)*int/.{lm->lT^2/lp,km->kT^2/kp};
int=1/Sqrt[-(-1+eta) eta]*int/.{phi->ArcCos[1-2 eta]};(*The Sqrt term is the Jacobian (phi->eta)*)
int=1/(4 kT lT) int//.{eta-> (-1+kT^2+2 kT lT+lT^2)/(4 kT lT)};
int=int//.{ep->-1/2-EPS};
int=int/(int//.{EPS->0,ap->0})//Simplify;
int=int//.{Power[a1_,b1_. EPS]Power[a2_,b2_. EPS]:>Power[a1^b1 a2^b2, EPS]};
int=int//.{Power[a1_, EPS]:>Power[a1//FullSimplify, EPS]};
Throw[(int/.{EPS->-1/2- ep})];
]];



(******************************************************************************
 *                                                                            *
 * Rotation kT,lT --> xT,yT                                                   *
 *                                                                            *
 ******************************************************************************)


 St1[int_,sw_] := Module[{Repl, ReplInv, Jacobian,ReplFreezeEps},
                    ReplFreezeEps={ep-> -1/2-EPS};
					ReplInv = {kT -> (-1 - yT + xT yT)/(2 (-1 + xT)),
                     lT -> (-1 + yT - xT yT)/(2 (-1 + xT))};
                     Repl = InvertReplacement[ReplInv, {xT, yT}];
                     Jacobian =-JacobianDeterminant @@ FuncFromReplRule[Repl, ReplInv];
                     Return[(Jacobian)^sw int //. ReplFreezeEps //. ReplInv//Simplify];
                    ]

(******************************************************************************
*                                                                             *
* Splitting of yT in presence of Manifold singularity, I\[Rule]Iu,Id          *
*                                                                             *
*******************************************************************************)

St2[int_, 1,sw_] := Module[{Repl, ReplInv, Jacobian,csplit=(kp-lp)/(kp+lp)},
                 ReplInv = {yT -> csplit + ybarT - csplit ybarT};
                 Repl = InvertReplacement[ReplInv, {ybarT}];
                 Jacobian = JacobianDeterminant @@ FuncFromReplRule[Repl, ReplInv];
                 Return[(Jacobian)^sw  int //. ReplInv//Simplify];
                      ]
St2[int_, 0,sw_] := Module[{Repl, ReplInv, Jacobian,csplit=(kp-lp)/(kp+lp)},
                ReplInv = {yT -> csplit - ybarT - csplit ybarT};
                 Repl = InvertReplacement[ReplInv, {ybarT}];
                 Jacobian = - JacobianDeterminant @@ FuncFromReplRule[Repl, ReplInv];
                 Return[(Jacobian)^sw  int //. ReplInv//Simplify];
                      ]



(******************************************************************************
*                                                                             *
* Splitting of yT for ints without exact gluon prop, I\[Rule]Iu,Id            *
*                                                                             *
*******************************************************************************)

Swap[int_,1,yT_,ybarT_,sw_]:=Module[{Repl,ReplInv,Jacobian},
				ReplInv={yT->1-ybarT};
				Repl=InvertReplacement[ReplInv,{ybarT}];
				Jacobian=-JacobianDeterminant@@FuncFromReplRule[Repl,ReplInv];
				Return[((Jacobian)^sw  int//.ReplInv)//Simplify];
				  ]
Swap[int_,0,yt_,ybarT_,sw_]:=Module[{Repl,ReplInv,Jacobian},
				ReplInv={yT->-1+ybarT};
				Repl=InvertReplacement[ReplInv,{ybarT}];
				Jacobian=JacobianDeterminant@@FuncFromReplRule[Repl,ReplInv];
				Return[((Jacobian)^sw  int//.ReplInv)//Simplify];
				 ]

S2[int_,1,sw_]:= Swap[int,1,yT,ybarT,sw]
S2[int_,0,sw_]:= Swap[int,0,yT,ybarT,sw]

(******************************************************************************
*                                                                             *
* Compactificatiion of kp lp.                                               *
*                                                                             *
*******************************************************************************)

Ckplp[integral_,sw_]:=Module[{Repl,ReplInv,Jacobian},
ReplInv={kp-> xbar/(1-xbar),lp-> ybar/(1-ybar)};
Repl=InvertReplacement[ReplInv,{xbar,ybar}];
Jacobian=JacobianDeterminant@@FuncFromReplRule[Repl,ReplInv];
Return[(Jacobian)^sw integral//.ReplInv//Simplify];
]

(******************************************************************************
*                                                                             *
* Composition of past functions, for cases W (with) and WO (3gluon vertex)   *
*                                                                             *
*******************************************************************************)

NW[a_,n_,sw_]:=Ckplp[St2[St1[a,sw],n,sw],sw]

NWO[a_,n_,sw_]:=(Ckplp[S2[St1[a,sw],n,sw],sw])/.{ybarT->yT}

(******************************************************************************
*                                                                             *
* Spliting (0,1), only Swapings (3) and identity (2) mappings                 *
*                                                                             *
*******************************************************************************)

Splitting[integral_,1,yold_,ynew_,sw_]:=Module[{Repl,ReplInv,Jacobian},
ReplInv={yold->(2-ynew)/2};
Repl=InvertReplacement[ReplInv,{ynew}];
Jacobian=-JacobianDeterminant@@FuncFromReplRule[Repl,ReplInv];
Return[(Jacobian)^sw integral//.ReplInv];
]

Splitting[integral_,0,yold_,ynew_,sw_]:=Module[{Repl,ReplInv,Jacobian},
ReplInv={yold->ynew/2};
Repl=InvertReplacement[ReplInv,{ynew}];
Jacobian=JacobianDeterminant@@FuncFromReplRule[Repl,ReplInv];
Return[(Jacobian)^sw integral//.ReplInv];
]

SyT[int_,3,sw_]:=Swap[int,1,ybarT,yT,sw]
SyT[int_,2,sw_]:=int/.{ybarT->yT}
SyT[int_,1,sw_]:=Splitting[int,1,ybarT,yT,sw]
SyT[int_,0,sw_]:=Splitting[int,0,ybarT,yT,sw]

Sy[int_,3,sw_]:=Swap[int,1,ybar,y,sw]
Sy[int_,2,sw_]:=int/.{ybar->y}
Sy[int_,1,sw_]:=Splitting[int,1,ybar,y,sw]
Sy[int_,0,sw_]:=Splitting[int,0,ybar,y,sw]

Sx[int_,3,sw_]:=Swap[int,1,xbar,x,sw]
Sx[int_,2,sw_]:=int/.{xbar->x}
Sx[int_,1,sw_]:=Splitting[int,1,xbar,x,sw]
Sx[int_,0,sw_]:=Splitting[int,0,xbar,x,sw]


(*************************************************************************************
* 	                                                                             *
* Function that applies the required mappings. With exact gluon prop, (3-g vertex)   *
*              	                                                                     *
*************************************************************************************)

AuxModWith[j0_,j1_,j2_,j3_,integrand_,aname_,Jac_,rapreg_,RegSwitch_]:=
Block[{Aux,AuxReg,i1,i2,i3},
i1=j1;i2=j2;i3=j3;
Aux[j0]=NW[integrand,j0,Jac];
AuxReg[j0]=NW[rapreg,j0,0];
Do[Aux[j0,i1]=SyT[Aux[j0],i1,Jac];AuxReg[j0,i1]=SyT[AuxReg[j0],i1,0];
Do[Aux[j0,i1,i2]=Sy[Aux[j0,i1],i2,Jac];AuxReg[j0,i1,i2]=Sy[AuxReg[j0,i1],i2,0];
Do[

  ToExpression[aname][j0,i1,i2,i3]=(Sx[Aux[j0,i1,i2],i3,Jac])
  *(Sx[AuxReg[j0,i1,i2],i3,0])^RegSwitch;
  AppendTo[ToExpression[aname][1],ToExpression[aname][j0,i1,i2,i3]];

If[i3>1,Break[]]
,{i3,{i3,1}}];
If[i2>1,Break[]]
,{i2,{i2,1}}];
If[i1>1,Break[]]
,{i1,{i1,1}}];
]

MinMapsWith[n01_,n02_,n03_,n11_,n12_,n13_,integrand_,aname_,Jac_,rapreg_,RegSwitch_]:=
Block[{auxrapreg},
auxrapreg=EvaRegPart[rapreg];
ToExpression[aname][1]={};
AuxModWith[0,n01,n02,n03,integrand,aname,Jac,auxrapreg,RegSwitch];
AuxModWith[1,n11,n12,n13,integrand,aname,Jac,auxrapreg,RegSwitch];
]




(******************************************************************************
*                                                                             *
* Mappings for PowerCounting. With exact gluon prop, (3-g vertex)            *
*                                                                             *
*******************************************************************************)

(*First generate the constant part*)

MinMapsWith[0,0,0,0,0,0,1,RegListW,0,1,1];

AuxModWithPC[j0_,integrand_,aname_]:=Block[{Aux,i1,i2,i3},
i1=0;i2=0;i3=0;
Aux[j0]=NW[EvaRationalPart[integrand],j0,1];
Do[Aux[j0,i1]=SyT[Aux[j0],i1,1];
Do[Aux[j0,i1,i2]=Sy[Aux[j0,i1],i2,1];
Do[
ToExpression[aname][j0,i1,i2,i3]=(Sx[Aux[j0,i1,i2],i3,1])(RegListW[j0,i1,i2,i3]/.{EPS->-1/2});
AppendTo[ToExpression[aname][0],{ToExpression[aname][j0,i1,i2,i3],j0,i1,i2,i3}];
If[i3>1,Break[]]
,{i3,{i3,1}}];
If[i2>1,Break[]]
,{i2,{i2,1}}];
If[i1>1,Break[]]
,{i1,{i1,1}}];
]

MapsForPowerCountingWith[a_,aname_]:=Block[{},
ToExpression[aname][0]={};
AuxModWithPC[0,a,aname];
AuxModWithPC[1,a,aname];
]



(******************************************************************************
*                                                                             *
* Applies required mappings, i.e. only necessary splittings. No 3gvertex case  *
*                                                                             *
*******************************************************************************)

AuxModWithout[j0_,j2_,j3_,integrand_,aname_,Jac_,rapreg_,RegSwitch_]:=
Block[{Aux,AuxReg,i2,i3},
i2=j2;i3=j3;
Aux[j0]=NWO[integrand,j0,Jac];
AuxReg[j0]=NWO[rapreg,j0,0];
Do[Aux[j0,i2]=Sy[Aux[j0],i2,Jac];AuxReg[j0,i2]=Sy[AuxReg[j0],i2,0];
Do[
      ToExpression[aname][j0,i2,i3]=(Sx[Aux[j0,i2],i3,Jac])*
      (Sx[AuxReg[j0,i2],i3,0])^RegSwitch;
      AppendTo[ToExpression[aname][1],ToExpression[aname][j0,i2,i3]];

If[i3>1,Break[]]
,{i3,{i3,1}}];
If[i2>1,Break[]]
,{i2,{i2,1}}];
]

MinMapsWithout[n02_,n03_,n12_,n13_,integrand_,aname_,Jac_,rapreg_,RegSwitch_]:=
Block[{auxrapreg},
auxrapreg=EvaRegPart[rapreg];
ToExpression[aname][1]={};
AuxModWithout[0,n02,n03,integrand,aname,Jac,auxrapreg,RegSwitch];
AuxModWithout[1,n12,n13,integrand,aname,Jac,auxrapreg,RegSwitch]
]





(******************************************************************************
*                                                                             *
* Mappings for PowerCounting. No-gluon propogator case, (3-g vertex)         *
*                                                                             *
*******************************************************************************)


MinMapsWithout[0,0,0,0,1,RegListWO,0,1,1];

AuxModWithoutPC[j0_,integrand_,aname_]:=Block[{Aux,i2,i3},
i2=0;i3=0;
Aux[j0]=NWO[EvaRationalPart[integrand],j0,1];
Do[Aux[j0,i2]=Sy[Aux[j0],i2,1];
Do[
ToExpression[aname][j0,i2,i3]=(Sx[Aux[j0,i2],i3,1]//Simplify)(RegListWO[j0,i2,i3]/.{EPS->-1/2});
AppendTo[ToExpression[aname][0],{ToExpression[aname][j0,i2,i3],j0,i2,i3}];
If[i3>1,Break[]]
,{i3,{i3,1}}];
If[i2>1,Break[]]
,{i2,{i2,1}}];
]

MapsForPowerCountingWithout[integrand_,aname_]:=Block[{},
ToExpression[aname][0]={};
AuxModWithoutPC[0,integrand,aname];
AuxModWithoutPC[1,integrand,aname];
]



(******************************************************************************
*                                                                             *
* Preparation for sector decomposition                                        *
*                                                                             *
*******************************************************************************)

NoPhasesForSecDec[func_]:=Module[{aux1,aux2,const1,const2},

(*Step1: Define aux1 and aux2 part dependent and independent of ep & ap *)

aux1=func/.{ap->0,EPS->0};
aux2=func/aux1//Simplify;
aux1=Simplify[Together[aux1]];

(*Step2: aux2 is separated into rational function, with positive factors*)

aux2=aux2/.{Power[x_,b_. ap]:>Power[Together[x],b ap]};
aux2=aux2//PowerExpand;

(*Step3: Monomials are switch from (-1+x) to (1-x). The sign of EPS is preserved*)
aux2=aux2//.{Power[-1+y_,j_.+i_. EPS]:> Power[(1-y),j+i *EPS]  Power[(-1)^i, EPS]Power[(-1)^j, 1]};
aux2=aux2//.{Power[-2+y_,j_.+i_. EPS]:> Power[(2-y),j+i* EPS] Power[(-1)^i, EPS]Power[(-1)^j, 1]};
aux2=aux2//.{Power[-1+y_,i_. ap]:> Power[1-y,i* ap]  Power[(-1)^i, ap]};
aux2=aux2//.{Power[-2+y_,i_. ap]:> Power[2-y,i* ap] Power[(-1)^i, ap]};
aux2=aux2//.{Power[-4+y_,i_. ap]:> Power[4-y,i* ap] Power[(-1)^i, ap]};



(*Step4: Remove artificial phases introduce in Step  3. Note that the signs EPS & alpha are preserved*)
aux2=aux2/.{Power[(-1),a_.+b_. EPS+c_. ap]:>Power[-1,a]Power[(-1)^b,EPS]Power[(-1)^c,ap]/;(b>0)&&(c>0)};
aux2=aux2/.{Power[(-1),a_.+b_. EPS+c_. ap]:>Power[-1,a]Power[(-1)^(-b),-EPS]Power[(-1)^c,ap]/;(b<0)&&(c>0)};

aux2=aux2/.{Power[(-1),a_.+b_. EPS+c_. ap]:>Power[-1,a]Power[(-1)^b,EPS]Power[(-1)^(-c),-ap]/;(b>0)&&(c<0)};
aux2=aux2/.{Power[(-1),a_.+b_. EPS+c_. ap]:>Power[-1,a]Power[(-1)^(-b),-EPS]Power[(-1)^(-c),-ap]/;(b<0)&&(c<0)};

aux2=aux2/.{Power[(-1),a_.+b_. EPS]:>Power[-1,a]Power[(-1)^b,EPS]/;(b>0)};
aux2=aux2/.{Power[(-1),a_.+b_. EPS]:>Power[-1,a]Power[(-1)^(-b),-EPS]/;(b<0)};

aux2=aux2/.{Power[(-1),a_.+c_. ap]:>Power[-1,a]Power[(-1)^c,ap]/;(c>0)};
aux2=aux2/.{Power[(-1),a_.+c_. ap]:>Power[-1,a]Power[(-1)^(-c),-ap]/;(c<0)};



(*Step5: Independently express aux1 and aux2 in terms of pows*)
aux1=List@@aux1;
aux1=Replace[aux1,Power[i_,j_.]-> pow[i,j],1];
aux1=Times@@aux1;

aux2=List@@aux2;
aux2=Replace[aux2,Power[i_,j_.]-> pow[i,j],1];
aux2=Times@@aux2;


(*Step 6: Introduce constant factors into aux1 and aux2,
and a minus sign if any constact is negative*)
aux1=aux1/.{pow[a_,b_]:>const[a^b]/;(a>0)};
aux1=aux1/.{pow[a_,b_]:>const[(-a)^b]pow[-1,b]/;(a<0)};


aux2=aux2/.{pow[a_,b_]:>const[a^b]/;(a>0)};
aux2=aux2/.{pow[a_,b_]:>const[(-a)^b]pow[-1,b]/;(a<0)};


(*Steap 7: Mix aux1 and aux2 & mix their constants*)
aux1= aux1*aux2;
aux1= aux1//.{const[a_]const[b_]:>const[a b]};



(*Step 8: Mixing pow[x,b]pow[x,c]-> pow[x,b c], respecting the sign of EPS*)

aux1=aux1//.{pow[i1_,a_.+j1_. EPS] pow[i1_,j2_]:> pow[i1,a+j1 EPS+j2]};
aux1=aux1//.{ pow[i1_,a_.+j1_. EPS] pow[i2_,j2_]:> pow[i1,a+j1 EPS+j2]pow[-1,j2]/;(i1===-i2)};

aux1=aux1//.{pow[i1_,a_.+j1_. ap] pow[i1_,j2_]:> pow[i1,a+j1 ap+j2]/;NumberQ[j2]};
aux1=aux1//.{ pow[i1_,a_.+j1_. ap] pow[i2_,j2_]:> pow[i1,a+j1 ap+j2]pow[-1,j2]/;((i1===-i2)&&NumberQ[j2])};


(*Step 9: pow[x , +-a EPS] ->  Pow[x^(+-a),+- EPS)] *)

aux1=aux1//.{pow[x_,b_.+a_ EPS]:>pow[x^(-a),-b/a- EPS]/;(a<0)};
aux1=aux1//.{pow[x_,b_.+a_ EPS]:>pow[x^a,b/a+ EPS]/;(a>0)};

aux1=aux1//.{ pow[-1,a_+b_. EPS]:> pow[-1,a]pow[(-1)^b, EPS]/;(b>0)};
aux1=aux1//.{ pow[-1,a_+b_. EPS]:> pow[-1,a]pow[(-1)^(-b),- EPS]/;(b>0)};


(*Step 10: Mixing terms with same exponent +EPS (-EPS) and that depend on 0 or MORE THAN 1 of the variables: {x,y,xT,yT}*)

aux1=aux1//.{pow[i1_,EPS] pow[i2_,EPS]:> pow[i1 i2, EPS]/;(Length[Variables[i1]]=!=1)&&(Length[Variables[i2]]=!=1)};
aux1=aux1//.{pow[i1_,-EPS] pow[i2_,-EPS]:> pow[i1 i2,- EPS]/;(Length[Variables[i1]]=!=1)&&(Length[Variables[i2]]=!=1)};


(*Step 11: To avoid phases: pow[(),n ap]->pow[()^n, ap], This part is new *)
aux1=aux1//.{pow[i1_,a_. ap ] :> pow[i1^a,ap ]/;(a>0)};
aux1=aux1//.{pow[i1_,-a_. ap ] :> pow[i1^a,-ap ]/;(a>0)};

aux1=aux1//.{ pow[-1,a_.+b_. ap]:> pow[-1,a]pow[(-1)^b, ap]/;b>0};
aux1=aux1//.{ pow[-1,a_.-b_. ap]:> pow[-1,a]pow[(-1)^b,- ap]/;b>0};


(*Step 12: Remove remaining phases*)
aux1=aux1//.{ pow[-1,a_]:> pow[(-1)^a,1]};
aux1=aux1//.{ pow[-1,1]^(m_):> pow[(-1)^m,1]};
aux1=aux1//.{pow[1,b_]:>1};


(*Step 13: In some cases the following simplifications are needed*)

aux1=aux1//.{ pow[-1,-1]:> pow[-1,1]};
aux1=aux1/.{ pow[-1,1]pow[a_,1]:> pow[-a,1]};

(*Step 14: Express in terms of new variables*)

aux1=aux1/.{x-> x[1],y-> x[2], xT-> x[3], yT-> x[4],EPS-> -1/2-ep};
aux1=aux1//.pow[a_,b_]:>pow[a,Simplify[b]]//.const[b_]:>const[Simplify[b]];

(*Step 15: Simplifying arguments of pow[a^b,c]*)

assump=Table[{x[i] > 0, x[i] < 1}, {i, 1, 4}] // Flatten;

aux1=aux1//.{pow[Power[a_,b_],c_]:>pow[Simplify[((Power[a,b])^(1/b)),assump],b*c]};
aux1=aux1//.pow[a_,b_]:>pow[a,Simplify[b]]//.const[b_]:>const[Simplify[b]];

Return[aux1]
]


End[]
EndPackage[]
