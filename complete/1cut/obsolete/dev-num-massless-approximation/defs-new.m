(* ::Package:: *)

(* ::Subsection:: *)
(*Input*)


(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]]*)
(*Get["../czakon-current/gij.m"]*)


(* ::Input:: *)
(*(*definitions=Read["DefKin.dat"]; Close["DefKin.dat"];*)*)


(* ::Input:: *)
(*g1ijTL=-1/2gTL;*)


(* ::Input:: *)
(*g1ijSL=-1/2gSL;*)


(* ::Subsection:: *)
(*Masless limit*)


(* ::Input:: *)
(*{ai,aj,v,vp,x}//.definitions/.mj->0*)
(*{ai,aj,v,vp,x}//.definitions/.{mj->0,mi->0}*)


(* ::Input:: *)
(*KinPrefractor=Series[Exp[-ep Log[qij]],{ep,0,3}]*)


(* ::Input:: *)
(*VarsCase1={aj->0,v->1,vp->1,x->0,IPi->Pi cI}*)
(*LogCase1={Log[aj/vp]->0}*)
(*VarsCase0={ai->0,aj->0,v->1,vp->1,x->0}*)
(*LogCase0={Log[aj/vp]->0,Log[ai/vp]->0,IPi->-Pi cI}*)


(* ::Input:: *)
(*gijC1=g1ijSL KinPrefractor/.LogCase1/.VarsCase1;*)
(*gijC0=g1ijSL KinPrefractor/.LogCase0/.VarsCase0;*)


(* ::Input:: *)
(*gijC3=g1ijTL KinPrefractor//.{di->1-2 ai,dj->1-2 aj,dij->di+dj,v->Sqrt[1-4 ai aj],vm->(1-v)/2,vp->(v+1)/2,x->vm/vp,lv->log(v),lvp->log(vp),lni->log(ai/vp),lnip->log(1-ai/vp),lnj->log(aj/vp),lnjp->log(1-aj/vp),li2i->PolyLog[2,ai/vp],li2j->PolyLog[2,aj/vp],li2x->PolyLog[2,x],li3i->PolyLog[3,ai/vp],li3j->PolyLog[3,aj/vp],li3x->PolyLog[3,x],li3xp->PolyLog[3,1-x],zeta2->\[Pi]^2/6,zeta3->Zeta[3]}(*/.mi\[Rule]1/.mj->1*)/.IPi->cI Pi;*)


(* ::Subsection:: *)
(*Real and imaginary parts, eps coefficients*)


(* ::Input:: *)
(*Module[{ic,jc},*)
(*Do[*)
(*gC1[ic,jc]=Coefficient[Coefficient[ gijC1,ep,ic],cI,jc];*)
(**)
(*gC0[ic,jc]=Coefficient[Coefficient[ gijC0,ep,ic],cI,jc];*)
(**)
(*gC3[ic,jc]=Coefficient[Coefficient[ gijC3,ep,ic],cI,jc];*)
(**)
(*,{ic,-2,1},{jc,0,1}]]*)


(* ::Input:: *)
(*gij[qijV_,0,0,0,ic_,jc_]:=gC0[ic,jc]/.{qij->qijV}*)


(* ::Input:: *)
(*gij[qijV_,aiV_,ajV_,3,ic_,jc_]:=gC3[ic,jc]/.{ai->aiV,aj->ajV,qij->qijV}*)


(* ::Subsection:: *)
(*Treatment of rapidty divergences*)


(* ::Input:: *)
(*gij[qijV_,aiV_,0,1,ic_,jc_]:=If[aiV===0,gC0[ic,jc](-1)^jc/.{qij->qijV},gC1[ic,jc]/.{ai->aiV,qij->qijV}]*)


(* ::Input:: *)
(*gij[qijV,0,0,0,1,1]*)


(* ::Input:: *)
(*gij[qijV,ai,0,1,0,1]*)
