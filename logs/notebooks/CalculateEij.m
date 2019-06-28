(*******************************************************************************
 *
 *
 ******************************************************************************)
BeginPackage["CalculateEij`", {"MathFunctions`", "QCDConstants`", 
                               "QCDFunctions`", "CommonFunctions`"}]

Egg0Mine::usage ="Egg0Mine[z]"
Eqq0Mine::usage ="Eqq0Mine[z]"
Eqg0Mine::usage ="Eqg0Mine[z]"
Egq0Mine::usage ="Egq0Mine[z]"


Begin["`Private`"]

(*******************************************************************************
 *
 * Egg0
 *
 ******************************************************************************)

  Egggg0 = IntegrateConvolution[1/xi Pgg0[xi] Rgg0[z/xi], xi];
  Egqqg0 = 2 nf IntegrateConvolution[1/xi Pqg0[xi] Rgq0[z/xi], xi];

  Egg0Mine[z_] := Egggg0+Egqqg0


(*******************************************************************************
 *
 * Eqq0
 *
 ******************************************************************************)

  Eqqqq0 = IntegrateConvolution[1/xi Pqq0[xi] Rqq0[z/xi], xi];
  Eqggq0 = IntegrateConvolution[1/xi Pgq0[xi] Rqg0[z/xi], xi];

  Eqq0Mine[z_] := Eqqqq0+Eqggq0

(*******************************************************************************
 *
 * Eqg0
 *
 ******************************************************************************)

  Eqggg0 = IntegrateConvolution[1/xi Pgg0[xi] Rqg0[z/xi], xi];
  Eqqqg0 = IntegrateConvolution[1/xi Pqg0[xi] Rqq0[z/xi], xi];

  Eqg0Mine[z_] := Eqqqg0+Eqggg0


(*******************************************************************************
 *
 * Egq0
 *
 ******************************************************************************)

  Egqqq0 = IntegrateConvolution[1/xi Pqq0[xi] Rgq0[z/xi], xi];
  Egggq0 = IntegrateConvolution[1/xi Pgq0[xi] Rgg0[z/xi], xi];

  Egq0Mine[z_] := Egqqq0 + Egggq0


End[]
EndPackage[]
