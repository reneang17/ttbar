
(*******************************************************************************
 *
 *  Cii2ab functions
 *
 *  Notation :  Cii2ab \equiv C_{i\bar i <- ab}
 *  
 *
 ******************************************************************************)

(* Diagonal                                                                   *)
Cqq2qq[z1_, z2_] := Exp[gii[q,as]] Iqq[z1, as] Iqq[z2, as] TrHSqq[LT]
Cgg2qq[z1_, z2_] := Exp[gii[g,as]] Igq[z1, as] Igq[z2, as] TrHSgg[LT]

Cgg2gg[z1_, z2_] := Exp[gii[g,as]] Igg[z1, as] Igg[z2, as] TrHSgg[LT]
Cqq2gg[z1_, z2_] := Exp[gii[q,as]] Iqg[z1, as] Iqg[z2, as] TrHSqq[LT]


(* Off-diagonal                                                               *)
Cqq2qg[z1_, z2_] := Exp[gii[q,as]] Iqg[z1, as] Iqq[z2, as] TrHSqq[LT]
Cgg2qg[z1_, z2_] := Exp[gii[g,as]] Igq[z1, as] Igg[z2, as] TrHSgg[LT]

Cqq2gq[z1_, z2_] := Exp[gii[q,as]] Iqq[z1, as] Iqg[z2, as] TrHSqq[LT]
Cgg2gq[z1_, z2_] := Exp[gii[g,as]] Igg[z1, as] Igq[z2, as] TrHSgg[LT]
