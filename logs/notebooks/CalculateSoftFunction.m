
(*******************************************************************************
 * 
 *
 *  Calculate soft functions at NLO and NNLO from RGE.
 *
 *
 ******************************************************************************)
BeginPackage["CalculateSoftFunction`", {"Symbols`","MathFunctions`", 
                                        "QCDConstants`", "QCDFunctions`", 
					"CommonFunctions`"}];


Print["CalculateSoftFunction package by Sebastian Sapeta, 2017"];
Print[""];
Print["Note: Three-particle correlation term ~ f2, hence ~ g(beta) does "];
Print["contribute to the imaginary part of the NNLO soft function. "];


Sqq0::usage="qq Soft Function at LO";
Sgg0::usage="gg Soft Function at LO";
Sqq1renRGE::usage="RGE part of qq Soft Function at NLO";
Sgg1renRGE::usage="RGE part of gg Soft Function at NLO";


Begin["`Private`"];

mypath = Directory[] <> "/program-prd88";
Get[mypath <> "/setting_sigma.m"];
Get["Replacements.m"];



(*******************************************************************************
 * 
 * LO soft functions in qq and gg channels 
 *
 ******************************************************************************)

  Sqq0 = softqq[0];
  Sgg0 = softgg[0];


(*******************************************************************************
 * 
 * NLO soft function Sqq1 (complete LT-dependent part)
 *
 ******************************************************************************)

  gammasqq0 = SeriesCoefficient[gammasqq[beta34], {as, 0, 1}] //. 
               ReplRiemann //. ReplBeta34 // Simplify;
  gammasqq0dagger := Transpose[gammasqq0] /. cI -> -cI;

  Sqq1renRGE := -1/2 (Sqq0.gammasqq0+ gammasqq0dagger.Sqq0) Lp // Simplify;


(*******************************************************************************
 * 
 * NLO soft function Sgg1 (complete LT-dependent part)
 *
 ******************************************************************************)

  gammasgg0 = SeriesCoefficient[gammasgg[beta34], {as, 0, 1}] //. 
              ReplRiemann //. ReplBeta34 // Simplify;
  gammasgg0dagger := Transpose[gammasgg0] /. cI -> -cI;

  Sgg1renRGE := -1/2 (Sgg0.gammasgg0+ gammasgg0dagger.Sgg0) Lp // Simplify;


(*******************************************************************************
 * 
 * NNLO soft function Sqq2 (complete LT-dependent part)
 *
 ******************************************************************************)

  (* Expand below is critical for correct replacements of cI powers ??? *)
  (* Substitution of beta34 at this step is critical because only then
     gamma^dagger is determined correctly *)
  gammasqq1 = Expand[SeriesCoefficient[gammasqq[beta34], {as, 0, 2}] //.  
                      ReplRiemann //. ReplBeta34] // Simplify;
  gammasqq1dagger = Transpose[gammasqq1] /. cI -> -cI;
  Sqq1renLp0Direct = Coefficient[softqq[1], Lp, 0];
  Sqq1renLp1Direct = Coefficient[softqq[1], Lp, 1];


  Sqq2renRGE = Expand[-(1/ 2) (Sqq1renLp0Direct.gammasqq0 + 
             gammasqq0dagger.Sqq1renLp0Direct + Sqq0.gammasqq1 + 
	     gammasqq1dagger.Sqq0 - 2 beta0 Sqq1renLp0Direct) Lp - 
	     1/4 (Sqq1renLp1Direct.gammasqq0 + 
             gammasqq0dagger.Sqq1renLp1Direct - 2 beta0 Sqq1renLp1Direct) Lp^2];

  Sqq2renRGE = Sqq2renRGE //.ReplNotation;

  (* Expand below is critical for correct replacements of cI powers *)
  Sqq2renRGE = Expand[Sqq2renRGE]//.ReplIPowers;
  
  (* This step cancells all cI dependence in the diagonal and simplifies in the
     off-diagonal terms such that the matrix is manifestly hermitian. *)
  Sqq2renRGE = Collect[Sqq2renRGE, cI];


(*******************************************************************************
 * 
 * NNLO soft function Sgg2 (complete LT-dependent part)
 *
 ******************************************************************************)

  (* Expand below is critical for correct replacements of cI powers ??? *)
  (* Substitution of beta34 below is critical because only then gamma^dagger
     is determined correctly *)
  gammasgg1 = Expand[SeriesCoefficient[gammasgg[beta34], {as, 0, 2}] //.  
                     ReplRiemann //. ReplBeta34] // Simplify;
  gammasgg1dagger = Transpose[gammasgg1] /. cI -> -cI;
  Sgg1renLp0Direct = Coefficient[softgg[1], Lp, 0];
  Sgg1renLp1Direct = Coefficient[softgg[1], Lp, 1];

  Sgg2renRGE = Expand[-(1/ 2) (Sgg1renLp0Direct.gammasgg0 + 
             gammasgg0dagger.Sgg1renLp0Direct + Sgg0.gammasgg1 + gammasgg1dagger.Sgg0 - 
             2 beta0 Sgg1renLp0Direct) Lp - 1/4 (Sgg1renLp1Direct.gammasgg0 + 
             gammasgg0dagger.Sgg1renLp1Direct - 2 beta0 Sgg1renLp1Direct) Lp^2];

  Sgg2renRGE = Sgg2renRGE //.ReplNotation;

  (* Expand below is critical for correct replacements of cI powers *)
  Sgg2renRGE = Expand[Sgg2renRGE]//.ReplIPowers;


  (* This step cancells all cI dependence in the diagonal and simplifies in the
     off-diagonal terms such that the matrix is manifestly hermitian. *)
  Sgg2renRGE = Collect[Sgg2renRGE, cI];

(*******************************************************************************
 * 
 * Save results
 *
 ******************************************************************************)

  outfile = "SoftFunction.m";
  header = 
  "(*******************************************************************************\n"<>
  " *\n"<>
  " * LT-dependent parts of NLO and NNLO soft function from RGE\n"<>
  " *\n"<>
  " ******************************************************************************)\n\n";

  WriteString[outfile,header];
  SaveFunctions[outfile, {{Sqq1renRGE, "softqq1"},
                                   {Sgg1renRGE, "softgg1"},
                                   {Sqq2renRGE, "softqq2"},
                                   {Sgg2renRGE, "softgg2"}}];


End[];
EndPackage[];
