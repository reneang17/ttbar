
(*******************************************************************************
 *
 * Calculate limited versions of partonic cross sections Cn2ii2ab[z], 
 * where n is the order of perturbative expansions, and save them to a file.
 *
 ******************************************************************************)

BeginPackage["CalculatePartonicCrossSectionsLimited`", {"MathFunctions`", 
              "QCDConstants`", "QCDFunctions`", "CommonFunctions`",
	      "BeamFunctions`"}];

Begin["`Private`"];

Get["Replacements`"]
Get["Cii2abFunctions`"]
Get["HSFunctions`"]

(*******************************************************************************
 *
 * General wrapper function performing integrations over z1 and z2
 *
 * All z1 and z2-dependent functions in the integrand are explicit (in
 * particular LO and NLO splitting functions). HS are symbolic.
 *
 ******************************************************************************)

IntegrateOverz1z2[func_, order_] := Module[{ResFuncName, expr, z1, z2},

  expr = 1/(z1 z2) DiracDelta[z - z1 z2] 
         SeriesCoefficient[func[z1, z2], {as, 0, order}];
  
  expr = Expand[DeltaIntegrate[expr, z1, z2]*LT^kappa] /.  
                               Power[LT, n_.] -> pow[LT, n] /.  
                               ReplFourierTransform //. ReplPlus;

  expr = Expand[expr]/.ReplzDelta;

  Return [expr//Simplify];
] 

(*******************************************************************************
 *
 * Perform integrations and save the results
 *
 ******************************************************************************)

 funclist = {
             {IntegrateOverz1z2[Cqq2qq, 1], "C1qq2qq[z_]"},
             {IntegrateOverz1z2[Cgg2gg, 1], "C1gg2gg[z_]"},
             {IntegrateOverz1z2[Cqq2qg, 1], "C1qq2qg[z_]"},
             {IntegrateOverz1z2[Cgg2qg, 1], "C1gg2qg[z_]"},
             {IntegrateOverz1z2[Cqq2qq, 2], "C2qq2qq[z_]"},
             {IntegrateOverz1z2[Cgg2gg, 2], "C2gg2gg[z_]"},
             {IntegrateOverz1z2[Cqq2gg, 2], "C2qq2gg[z_]"},
             {IntegrateOverz1z2[Cgg2qq, 2], "C2gg2qq[z_]"},
             {IntegrateOverz1z2[Cqq2qg, 2], "C2qq2qg[z_]"},
             {IntegrateOverz1z2[Cgg2qg, 2], "C2gg2qg[z_]"}
            };

 SaveFunctions["PartonicCrossSectionsLimited.m",funclist];

End[]
EndPackage[]
