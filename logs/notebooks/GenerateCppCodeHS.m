
(*******************************************************************************
 * 
 *
 ******************************************************************************)
BeginPackage["GenerateCppCodeHS`"];


Begin["`Private`"];

Get["HSiinm.m"];
    

(*******************************************************************************
 * 
 *  Replacements
 *
 ******************************************************************************)

ReplXs = {xs -> (1 - \[Beta]t)/(1 + \[Beta]t)};

ReplNotationIinitial = {Log[t1^2/(M^2 mt^2)] -> 2 Log[-(t1/(M mt))], 
                        Li2[arg_] -> PolyLog[2, arg], \[Mu] -> mu, 
			\[Beta]t -> beta, \[Theta] -> theta};

ReplNotationNext = {(mt^2 + t1)/mt^2 -> 1 + t1/mt^2};

ReplPolyLogArguments = {Log[arg1_] :> Log[Simplify[arg1]], 
                        PolyLog[arg1_, arg2_] :> PolyLog[arg1, Simplify[arg2]],
                        Power[arg1_, pow_] :> Power[Simplify[arg1], pow]};

ReplLogs = {Log[-(t1/mt^2)] -> Lt1, Log[(t1 u1)/(M^2 mt^2)] -> Lt1u1Mmt, 
            Log[t1/u1] -> Lt1u1,
            Log[Cos[theta/2]] -> LC, Log[mu^2/mt^2] -> Lmu, 
            Log[(M^2 + t1)/mt^2] -> Lt1M, Log[xs] -> LXS, Log[1 + xs] -> LXSp1,
            Log[1 - xs] -> LXSm1, Log[-(t1/(M mt))] -> L13, 
            Log[-(u1/(M mt))] -> L23, Log[1 - 1/xs^2] -> LdXS};

ReplPolyLogs = {PolyLog[2, 1 + t1/mt^2] -> L2t1, 
                PolyLog[2, 1 - (t1 u1)/(M^2 mt^2)] -> Li2t1u1, 
                PolyLog[2, -xs Tan[theta/2]^2] -> Li2Tn, 
                PolyLog[2, -(Tan[theta/2]^2/xs)] -> Li2Td, 
                PolyLog[2, -((M^2 - mt^2 + t1)/mt^2)] -> Li21M, 
                PolyLog[2, xs] -> Li2pXS, PolyLog[2, -xs] -> Li2mXS, 
                PolyLog[3, 1/xs^2] -> Li3dXS, PolyLog[2, 1/xs^2] -> Li2dXS};

ReplShortNotation = Join[ReplLogs, ReplPolyLogs];

ReplNumbers = {CA -> 3, Nc -> 3, CF -> 4/3, TF -> 1/2};


(*******************************************************************************
 * 
 * Construct and write down the c++ code
 *
 ******************************************************************************)

GenerateCFile[name_] := Module[{ReplSymbols, ReplVariables, tmp, vars, 
                                IntermediateVariables, ReplNotation, BasicVariables},

  (* Replacements of mathematical symbols and definitions of basic variables *)
  
  ReplSymbols = {\[Beta]t -> bt, \[Theta] -> th, beta -> bt, theta -> th};
  ReplVariables = { bt -> Sqrt[1 - 4 mt^2/M^2], 
                    xs -> (1 - bt)/(1 + bt), 
                    t1 -> -((1 - bt Cos[th])/Sqrt[1 - bt^2]) mt M, 
                    u1 -> -((1 + bt Cos[th])/Sqrt[1 - bt^2]) mt M};
  ReplNotation = Reverse /@ ReplShortNotation //. ReplSymbols //. 
                 Log[1 - 1/xs^2] -> Log[Abs[1 - 1/xs^2]];
  tmp = ToExpression[name] //. ReplSymbols;
  BasicVariables = {bt, xs, t1};
  If[name != "hsqq00" && name != "hsgg00", AppendTo[BasicVariables, u1]];
  vars = DeleteDuplicates[Flatten[Prepend[Complement[
         Variables@Level[tmp, {-1}], {bt, mt, M, xs, t1, u1, th, mu, CF, 
                                      CA, Nc, nf}], BasicVariables]]];
  IntermediateVariables = Thread[{vars, vars /. ReplVariables /. ReplNotation}];
  
  (* Write the body of the C file *)
  
  fname = "../topqT++limited/" <> name <> ".hh";
  f1 = OpenWrite[fname];
  WriteString[f1, "#ifndef __" <> ToUpperCase[name] <> "_H__\n"];
  WriteString[f1, "#define __" <> ToUpperCase[name] <> "_H__\n\n"];
  WriteString[f1, "#include <heplib/MathematicaC.hh>\n\n"];
  WriteString[f1, 
   "inline double " <> name <> 
    "(double M, double th, double mt, double mu) {\n\n"];
  Do[
    WriteString[f1, 
      "  double " <> 
       ToString[CForm[IntermediateVariables[[i]][[1]]]] <> " = " <> 
       ToString[CForm[IntermediateVariables[[i]][[2]]]] <> ";\n"];
    , {i, 1, Length[IntermediateVariables]}
    ]
   WriteString[f1, "\n  double val = ", ToString[CForm[tmp]], ";\n\n"];
  WriteString[f1, "  return val; \n\n"];
  WriteString[f1, "}\n\n"];
  WriteString[f1, "#endif/*__" <> ToUpperCase[name] <> "_H__*/\n"];
  Close[f1];
  
]

(*
(*******************************************************************************
 * 
 *  NLO
 *
 ******************************************************************************)
hsqq10 = List @@ Expand[hsqq10] //. ReplNotationIinitial // Simplify;
hsqq10 = hsqq10 //. ReplShortNotation;
hsqq10 = (Plus @@ hsqq10) //. ReplXs //. ReplNumbers // Simplify;
*)
(**** new
hsgg10 = ReplaceAll[hsgg10 //. ReplNotationIinitial, ReplPolyLogArguments];
hsgg10 = hsgg10 //. ReplNotationNext;
hsgg10 = ReplaceAll[hsgg10, ReplShortNotation] //. ReplNumbers // Simplify;
*)
(**** old
hsgg10 = List @@ Expand[hsgg10] //. ReplNotationIinitial // Simplify;
hsgg10 = hsgg10 //. ReplNotationNext;
hsgg10 = hsgg10 //. ReplShortNotation;
hsgg10 = (Plus @@ hsgg10) //. ReplNumbers // Simplify;
*)

(*******************************************************************************
 * 
 *  NNLO qq
 *
 ******************************************************************************)
 (*
hsqq22 = List @@ Expand[hsqq22] //. ReplNotationIinitial // Simplify;
hsqq22 = hsqq22 //. ReplShortNotation;
hsqq22 = (Plus @@ hsqq22) //. ReplNumbers // Simplify;

hsqq21 = List @@ Expand[hsqq21] //. ReplNotationIinitial // Simplify;
hsqq21 = hsqq21 //. ReplShortNotation;
hsqq21 = (Plus @@ hsqq21) //. ReplNumbers // Simplify;
*)
(*******************************************************************************
 * 
 *  NNLO gg
 *
 ******************************************************************************)
 (*
hsgg22 = List @@ Expand[hsgg22] //. ReplNotationIinitial // Simplify;
hsgg22 = hsgg22 //. ReplShortNotation;
hsgg22 = (Plus @@ hsgg22) //. ReplNumbers // Simplify;
*)
hsgg21 = List @@ Expand[hsgg21] //. ReplNotationIinitial // Simplify;
hsgg21 = hsgg21 //. ReplNotationNext;
hsgg21 = hsgg21 //. ReplShortNotation;
hsgg21 = Simplify[(Plus @@ hsgg21) //. ReplNumbers, TimeConstraint-> 18000];


(*******************************************************************************
 * 
 *  Save results to files
 *
 ******************************************************************************)
GenerateCFile["hsgg21"]
(*
GenerateCFile["hsgg00"]
GenerateCFile["hsqq00"]
GenerateCFile["hsqq11"]
GenerateCFile["hsgg11"]
GenerateCFile["hsqq22"]
GenerateCFile["hsgg22"]
(* HSqq *)
GenerateCFile["hsqq00"]
GenerateCFile["hsqq11"]
GenerateCFile["hsqq10"]
GenerateCFile["hsqq22"]
GenerateCFile["hsqq21"]
(* HSgg *)
GenerateCFile["hsgg00"]
GenerateCFile["hsgg11"]
GenerateCFile["hsgg10"]
*)

End[];
EndPackage[];
