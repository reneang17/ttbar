(*******************************************************************************
 *
 *
 ******************************************************************************)
BeginPackage["CalculateDij`", {"MathFunctions`", "QCDConstants`", 
                                  "QCDFunctions`", "CommonFunctions`"}]


Dgg0Mine::usage ="Dgg0Mine[z]"
Dqq0Mine::usage ="Dqq0Mine[z]"
Dqg0Mine::usage ="Dqg0Mine[z]"
Dgq0Mine::usage ="Dgq0Mine[z]"


Begin["`Private`"]


(*******************************************************************************
 *
 * Dgg0
 *
 ******************************************************************************)

  Dgqqg0 = 2 nf IntegrateConvolution[1/xi Pgq0[xi] Pqg0[z/xi], xi];
  Dgggg0 = IntegrateConvolution[1/xi Pgg0[xi] Pgg0[z/xi], xi];

  Dgg0Mine[z_] := Dgqqg0 + Dgggg0


(*******************************************************************************
 *
 * Dqq0
 *
 ******************************************************************************)

  Dqggq0 = IntegrateConvolution[1/xi Pgq0[xi] Pqg0[z/xi], xi];
  Dqqqq0 = IntegrateConvolution[1/xi Pqq0[xi] Pqq0[z/xi], xi];

  Dqq0Mine[z_] := Dqqqq0+Dqggq0


(*******************************************************************************
 *
 * Dqg0
 *
 ******************************************************************************)

  Dqqqg0 = IntegrateConvolution[1/xi Pqq0[xi] Pqg0[z/xi], xi];
  Dqggg0 = IntegrateConvolution[1/xi Pgg0[xi] Pqg0[z/xi], xi];

  Dqg0Mine[z_] := Dqqqg0+Dqggg0


(*******************************************************************************
 *
 * Dgq0
 *
 ******************************************************************************)

 Dgqqq0 = IntegrateConvolution[1/xi Pqq0[xi] Pgq0[z/xi], xi];
 Dgggq0 = IntegrateConvolution[1/xi Pgg0[xi] Pgq0[z/xi], xi];

 Dgq0Mine[z_] := Dgqqq0+Dgggq0


End[]
EndPackage[]
