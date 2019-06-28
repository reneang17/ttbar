
(*******************************************************************************
 * 
 * Notation and conventions
 *
 *   as = alpas/(4 pi)
 *
 ******************************************************************************)

BeginPackage["BeamFunctions`", {"MathFunctions`", "QCDConstants`", 
                                 "QCDFunctions`"}]


Iqq0::usage = "Iqq0[z]"
Igg0::usage = "Igg0[z]"
Iqg0::usage = "Iqg0[z]"
Igq0::usage = "Igq0[z]"

Iqq1::usage = "Iqq1[z]"
Igg1::usage = "Igg1[z]"
Iqg1::usage = "Iqg1[z]"
Igq1::usage = "Igq1[z]"

Iqq2::usage = "Iqq2[z]"
Igg2::usage = "Igg2[z]"
Iqg2::usage = "Iqg2[z]"
Igq2::usage = "Igq2[z]"

Iqq::usage = "Iqq[z, as]"
Igg::usage = "Igg[z, as]"
Iqg::usage = "Iqg[z, as]"
Igq::usage = "Igq[z, as]"

gii::usage = "gii[i,as]"
Fii::usage = "Fii[i]"

Begin["`Private`"]

(*******************************************************************************
 *
 *  LO [arXiv:1403.6451 (JHEP 155)]
 *
 ******************************************************************************)

Iqq0[z_] := DiracDelta[1 - z]

Igg0[z_] := DiracDelta[1 - z]

Iqg0[z_] := 0

Igq0[z_] := 0


(*******************************************************************************
 *
 *  NLO [my notes]
 *
 ******************************************************************************)

Iqq1[z_] := (CF gammacusp0 LT^2/4 - gammaq0 LT) DiracDelta[1 - z] - 
            Pqq0[z] LT + Rqq0[z]

Igg1[z_] := (CA gammacusp0 LT^2/4 - gammag0 LT) DiracDelta[1 - z] - 
            Pgg0[z] LT + Rgg0[z]

Iqg1[z_] := - Pqg0[z] LT + Rqg0[z];

Igq1[z_] := - Pgq0[z] LT + Rgq0[z];


(*******************************************************************************
 *
 *  NNLO
 *
 ******************************************************************************)

Get["Iij2.m"];

(*******************************************************************************
 *
 *  Beam functions
 *
 ******************************************************************************)

Igg[z_, as_] := Igg0[z] + as Igg1[z] + as^2 Igg2[z];

Iqq[z_, as_] := Iqq0[z] + as Iqq1[z] + as^2 Iqq2[z];

Iqg[z_, as_] := Iqg0[z] + as Iqg1[z] + as^2 Iqg2[z];

Igq[z_, as_] := Igq0[z] + as Igq1[z] + as^2 Igq2[z];


(*******************************************************************************
 *
 *  Anomaly exponents
 *
 *  The function g_i is defined in Eq. (51) of Li et al.
 *  The Fii function is given in Eqs. (47), (50) and (51) of EPJC 71.
 *
 ******************************************************************************)

gii[i_,as_] := -(Log[M^2/mu^2] + LT) Fii[i];

Fii[i_] := Module[{colfac, di2},

             If[i==q, colfac=CF]; If[i==g, colfac=CA];
	     
	      (* we define this function without colour factor *)
             di2 = gammacusp0 (CA (202/27 - 7 Zeta[3]) - 56/27 TF nf);

	     Return[as colfac gammacusp0 LT  + 
	            as^2 colfac (gammacusp0 beta0/2 LT^2+ gammacusp1 LT + di2)];
];

End[]
EndPackage[]
