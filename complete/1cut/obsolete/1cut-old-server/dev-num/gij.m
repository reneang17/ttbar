(* ::Package:: *)

(******************************************************************************
 *                                                                            *
 *                                                                            *
 ******************************************************************************)
Print["gij Package"];

BeginPackage["gij`"]

maindir=DirectoryName[FindFile["gij.m"]];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

gij::usage = "Functions defined by Czakons paper."
ai::usage = ""
aj::usage = ""
definitions::usage = ""


Begin["`Private`"]

definitions=Read["DefKin.dat"]; Close["DefKin.dat"];
g1ijTL=-1/2Read["g1TL.dat"]; Close["g1TL.dat"];
g1ijSL=-1/2Read["g1SL.dat"]; Close["g1SL.dat"];

(******************************************************************************
 *                                                                            *
 *                                                                            * 
 *                                                                            *
 ******************************************************************************)

vars1={aj,v,vp,x};
vars0={ai,aj,v,vp,x};

VarsCase1=Table[vars1[[ic]]->(vars1[[ic]]
//.definitions/.mj->0),{ic,1,Length[vars1]}];
LogCase1={Log[aj/vp]->0,IPi->cI Pi};

VarsCase0=Table[vars0[[ic]]->(vars0[[ic]]
//.definitions/.mj->0/.mi->0),{ic,1,Length[vars0]}];

LogCase0={Log[aj/vp]->0,Log[ai/vp]->0,IPi->-Pi cI};
KinPrefractor=Series[Exp[-ep Log[qij]],{ep,0,3}];

gijC1:=(g1ijSL KinPrefractor/.LogCase1)/.VarsCase1;
gijC0:=(g1ijSL KinPrefractor/.LogCase0)/.VarsCase0;
gijC3:=g1ijTL KinPrefractor//.(
DeleteCases[ai->_][DeleteCases[aj->_][definitions]])/.IPi->cI Pi;


Module[{ic,jc},
Do[
gC1[ic,jc]=Coefficient[Coefficient[ gijC1,ep,ic],cI,jc];

gC0[ic,jc]=Coefficient[Coefficient[ gijC0,ep,ic],cI,jc];

gC3[ic,jc]=Coefficient[Coefficient[ gijC3,ep,ic],cI,jc];

,{ic,-2,1},{jc,0,1}]]




gij[qijV_,0,0,0,ic_,jc_]:=gC0[ic,jc]/.{qij->qijV}
gij[qijV_,aiV_,ajV_,3,ic_,jc_]:=gC3[ic,jc]/.{ai->aiV,aj->ajV,qij->qijV}

(*Furthemore to make numerical stable it makes sence to define gij in case 1 as*)
gij[qijV_,aiV_,0,1,ic_,jc_]:=If[aiV===0,gC0[ic,jc](-1)^jc/.{qij->qijV},gC1[ic,jc]/.{ai->aiV,qij->qijV}]


End[]
EndPackage[]
