
(*******************************************************************************
 * 
 *
 ******************************************************************************)
BeginPackage["GenerateCppCodeHSPart`", {"Symbols`","GenerateCppCodeHSBase`"}];


Begin["`Private`"];

Get["Replacements.m"];
Get["HSiinm.m"];
    

(*
(*******************************************************************************
 * 
 *  NLO
 *
 ******************************************************************************)
hsqq10 = List @@ Expand[hsqq10] //. ReplNotationInitial // Simplify;
hsqq10 = hsqq10 //. ReplShortNotation;
hsqq10 = (Plus @@ hsqq10) //. ReplXs //. ReplNumbers // Simplify;
*)
(**** new
hsgg10 = ReplaceAll[hsgg10 //. ReplNotationInitial, ReplPolyLogArguments];
hsgg10 = hsgg10 //. ReplNotationNext;
hsgg10 = ReplaceAll[hsgg10, ReplShortNotation] //. ReplNumbers // Simplify;
*)
(**** old
hsgg10 = List @@ Expand[hsgg10] //. ReplNotationInitial // Simplify;
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
hsqq22 = List @@ Expand[hsqq22] //. ReplNotationInitial // Simplify;
hsqq22 = hsqq22 //. ReplShortNotation;
hsqq22 = (Plus @@ hsqq22) //. ReplNumbers // Simplify;
*)

hsqq21 = List @@ Expand[hsqq21] //. ReplNotationInitial // Simplify;
hsqq21 = hsqq21 //. ReplShortNotation;
hsqq21 = (Plus @@ hsqq21) //. ReplNumbers // Simplify;

(*******************************************************************************
 * 
 *  NNLO gg
 *
 ******************************************************************************)
 (*
hsgg22 = List @@ Expand[hsgg22] //. ReplNotationInitial // Simplify;
hsgg22 = hsgg22 //. ReplShortNotation;
hsgg22 = (Plus @@ hsgg22) //. ReplNumbers // Simplify;

hsgg21 = List @@ Expand[hsgg21] //. ReplNotationInitial // Simplify;
hsgg21 = hsgg21 //. ReplNotationNext;
hsgg21 = hsgg21 //. ReplShortNotation;
hsgg21 = Simplify[(Plus @@ hsgg21) //. ReplNumbers, TimeConstraint-> 18000];
*)

(*******************************************************************************
 * 
 *  Save results to files
 *
 ******************************************************************************)
GenerateCFile["hsqq21"]

(*
GenerateCFile["hsgg11"]
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
