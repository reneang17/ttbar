(*******************************************************************************
 * 
 * Generate c++ code with limited partonic cross sections Cnii2ab[z]
 * calculated previously and stored in PartonicCrossSectionsLimited.m.
 *
 ******************************************************************************)
BeginPackage["GenerateCppCodeLimited`"];

Begin["`Private`"];

Get["PartonicCrossSectionsLimited.m"];
Get["Replacements.m"];


(*******************************************************************************
 * 
 * Determine a vector with delta, reagular and plus contributions
 *
 ******************************************************************************)

CVector[expr_] := Module[{cvector={}, tmp},

  (* delta   *)
  AppendTo[cvector, Coefficient[expr, DiracDelta[-1 + z]]];
  (* regular *)
  AppendTo[cvector, expr /. {DiracDelta[-1 + z] -> 0, plus[_] -> 0}];
  (* plus    *)
  tmp = Simplify[Expand[expr-cvector[[1]]*DiracDelta[-1+z]-cvector[[2]]]];
  tmp = tmp /. plus[arg__] :>  plusdist[ReplaceAll[arg, z-> zp]];
  AppendTo[cvector, tmp];

  Return[cvector];
]


(*******************************************************************************
 * 
 * Write down a single cnii2ab function
 *
 ******************************************************************************)

FuncGen[func_, name_] := Module[{str, expr},

  (* organize and simplify the expression *)
  expr = Collect[Expand[func]/.ReplLogs, 
                 Join[Table[LqT[n], {n, 0, 3}], allHSes] /. ReplqT, Simplify];

  str = "inline double " <> name <> 
  "(double z, double M, double theta, double mt, double mu, double qT2=0, double zp=0) {\n\n";
  str = str <> " return " <> ToString[expr] <> ";\n\n";
  str = str <> "}\n\n";
  Return[str];
]

(*******************************************************************************
 * 
 * Construct and write down the c++ code
 *
 ******************************************************************************)

GenerateCFile[name_] := Module[{func, fname, f1, cvector},

  (* Generate a vector with delta, real and plus parts *)
  func = ToExpression[StringReplace[name, "c"->"C"]];
  cvector = CVector[func[z]];


  (* Write down the functions as c++ output *)
  fname = "../topqT++limited/" <> name <> ".hh";
  f1 = OpenWrite[fname];
  WriteString[f1, "#ifndef __" <> ToUpperCase[name] <> "_H__\n"];
  WriteString[f1, "#define __" <> ToUpperCase[name] <> "_H__\n\n"];
  WriteString[f1, "#include <heplib/MathematicaC.hh>\n"];
  WriteString[f1, "#include \"common.hh\"\n\n"];

  (* Real part *)
  WriteString[f1, FuncGen[CForm[cvector[[1]]/.ReplqT/.delta[qT2] -> 0 /. 
                          star[x_] -> x], name<>"_real_d"]];
  WriteString[f1, FuncGen[CForm[cvector[[2]]/.ReplqT/.delta[qT2] -> 0 /. 
                          star[x_] -> x], name<>"_real_r"]];
  WriteString[f1, FuncGen[CForm[cvector[[3]]/.ReplqT/.delta[qT2] -> 0 /.
                          star[x_] -> x], name<>"_real_p"]];
  
  (* Virtual part *)
  WriteString[f1, FuncGen[CForm[cvector[[1]]/.ReplIntegratedqT], 
                  name<>"_virt_d"]];
  WriteString[f1, FuncGen[CForm[cvector[[2]]/.ReplIntegratedqT], 
                  name<>"_virt_r"]];
  WriteString[f1, FuncGen[CForm[cvector[[3]]/.ReplIntegratedqT], 
                  name<>"_virt_p"]];
  
  WriteString[f1, "#endif /*__" <> ToUpperCase[name] <> "_H__*/\n"];
  Close[f1];

]


(*******************************************************************************
 * 
 * Generate the code for all relevant functions
 *
 ******************************************************************************)

 GenerateCFile["c1qq2qq"]
 GenerateCFile["c1gg2gg"]
 GenerateCFile["c1qq2qg"]
 GenerateCFile["c1gg2qg"]

 GenerateCFile["c2qq2qq"]
 GenerateCFile["c2gg2qq"]

 GenerateCFile["c2qq2gg"]
 GenerateCFile["c2gg2gg"]

 GenerateCFile["c2qq2qg"]
 GenerateCFile["c2gg2qg"]

End[]
EndPackage[]
