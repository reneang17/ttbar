
(*******************************************************************************
 * 
 *
 * Generate C++ code for calculation of Hard Function matrices
 *
 * If withcI is set to "true", also imaginary part is written to .cc files. This
 * is meant to be used for sanity checks (results should not depend on the value
 * of cI as Tr[HS] is real by construction). If no check are planned, it is
 * better to set this variable to "false" as then the output files are shorter,
 * hence they compile faster.
 *
 *
 ******************************************************************************)
withcI = "false";

BeginPackage["GenerateCppCodeHardFunction`", {"Symbols`"}];

Begin["`Private`"];

(* The LO and NLO hard functions are taken from from a paper by Pecjak et al.
   In practice, they are extracted from their code with my script.
*)

Get["HardFunction`"];
Get["Replacements`"];

ReplSimpl = {fac_. Log[arg_] :>  
             Simplify[fac, Assumptions -> {mt > 0, M > 2 mt}] 
	     Log[Simplify[arg, Assumptions -> {mt > 0, M > 2 mt}]]};

(* h_qq *) 
hardqq0 = Hqq0 //.ReplNotation // Simplify;
hardqq1 = Hqq1 //.ReplNotation /. ReplSimpl;

(* H_gg *) 
hardgg0 = Hgg0 //.ReplNotation // Simplify;
hardgg1 = Hgg1 //.ReplNotation /.ReplSimpl;


(******************************************************************************
 *****************************************************************************)
CheckVar[expr_, varlist_] := Module[{},
  Return[Or@@ (! FreeQ[expr, #] & /@ Flatten[{varlist}])]
]

(******************************************************************************
 *
 * Add particular hard function contribution to .hh and .cc files
 * 
 *****************************************************************************)
AddFunction[name_, size_, filehh_, filecc_, withci_] := Module[{str,HFexpr},

  If[withci === "true",
     HFexpr = ToExpression[name],
     HFexpr = ToExpression[name]/.cI->0;
  ];
  
  (* 
   *
   * Content of the .hh * file 
   *
   *)
  str = "void " <> name <> " (double M, double theta, double mt, double mu, "<>
        "double hardmatrix["<>ToString[size]<>"]["<>ToString[size]<>"])";
  WriteString[filehh, str<>"; \n\n"];


  (* 
   *
   * Content of the .cc * file 
   *
   *)
  str = str<>" {\n\n"<>
             "  double beta = sqrt(1.0 - 4.0*pow(mt,2)/pow(M,2));\n"<>
	     "  double xs = (1.0 - beta)/(1.0 + beta);\n";

  If[CheckVar[HFexpr, {t1,yt}], str = str<>
     "  double t1 = -((1.0 - beta*cos(theta))/sqrt(1.0 - pow(beta,2)))*mt*M;\n"];
  If[CheckVar[HFexpr, u1], str = str<>
     "  double u1 = -((1.0 + beta*cos(theta))/sqrt(1.0 - pow(beta,2)))*mt*M;\n\n\n"];

  If[CheckVar[HFexpr, xp1], str = str<>"  double xp1 = 1.0/(xs+1.0);\n"];
  If[CheckVar[HFexpr, xp2], str = str<>"  double xp2 = pow(xp1,2);\n"];
  If[CheckVar[HFexpr, xp3], str = str<>"  double xp3 = pow(xp1,3);\n"];
  If[CheckVar[HFexpr, xp4], str = str<>"  double xp4 = pow(xp1,4);\n"];
  If[CheckVar[HFexpr, xp5], str = str<>"  double xp5 = pow(xp1,5);\n"];
  If[CheckVar[HFexpr, xp6], str = str<>"  double xp6 = pow(xp1,6);\n"];
  If[CheckVar[HFexpr, xp7], str = str<>"  double xp7 = pow(xp1,7);\n\n"];

  If[CheckVar[HFexpr, xm1], str = str<>"  double xm1 = 1.0/(1.0-xs);\n"];
  If[CheckVar[HFexpr, xm2], str = str<>"  double xm2 = pow(xm1,2);\n"];
  If[CheckVar[HFexpr, xm3], str = str<>"  double xm3 = pow(xm1,3);\n"];
  If[CheckVar[HFexpr, xm4], str = str<>"  double xm4 = pow(xm1,4);\n"];
  If[CheckVar[HFexpr, xm5], str = str<>"  double xm5 = pow(xm1,5);\n\n"];

  If[CheckVar[HFexpr, Hmx],        str = str<>"  double Hmx = log(1.0+xs);\n"];
  If[CheckVar[HFexpr, H0x],        str = str<>"  double H0x = log(xs);\n"];
  If[CheckVar[HFexpr, {Hpx,Hp0x}], str = str<>"  double Hpx = -log(1.0-xs);\n"];
  If[CheckVar[HFexpr, Hmmx],       str = str<>"  double Hmmx = pow(Hmx,2)/2.0;\n"];
  If[CheckVar[HFexpr, H0mx],       str = str<>"  double H0mx = -PolyLog(2,-xs);\n"];
  If[CheckVar[HFexpr, Hm0x],       str = str<>"  double Hm0x = -H0mx + H0x*Hmx;\n"];
  If[CheckVar[HFexpr, H00x],       str = str<>"  double H00x = pow(H0x,2)/2.0;\n"];
  If[CheckVar[HFexpr, {H0px, Hp0x}],str= str<>"  double H0px = PolyLog(2,xs);\n"];
  If[CheckVar[HFexpr, Hp0x],        str= str<>"  double Hp0x = -H0px + H0x*Hpx;\n\n"];

  If[CheckVar[HFexpr, {xm,yt}], str = str<>"  double xm = pow(mt,2)/pow(M,2);\n"];
  If[CheckVar[HFexpr, {xt,yt}], str = str<>"  double xt = -t1/pow(M,2);\n"];
  If[CheckVar[HFexpr, yt],      str = str<>"  double yt = (xt-xm)/xm;\n"];
  If[CheckVar[HFexpr, {zu,zu1}],str = str<>"  double zu = (1.0-xt-xm)/xm;\n"];
  If[CheckVar[HFexpr, yt1],     str = str<>"  double yt1 = yt + 1.0;\n"];
  If[CheckVar[HFexpr, zu1],     str = str<>"  double zu1 = zu + 1.0;\n"];
  If[CheckVar[HFexpr, x],       str = str<>"  double x = xs;\n\n"];

  If[CheckVar[HFexpr, Hmy],  str = str<>"  double Hmy = log(1.0+yt);\n"];
  If[CheckVar[HFexpr, Hmmy], str = str<>"  double Hmmy = pow(Hmy,2)/2.0;\n"];
  If[CheckVar[HFexpr, H0my], str = str<>"  double H0my = -PolyLog(2,-yt);\n"];
  If[CheckVar[HFexpr, Hmz],  str = str<>"  double Hmz = log(1.0+zu);\n"];
  If[CheckVar[HFexpr, Hmmz], str = str<>"  double Hmmz = pow(Hmz,2)/2.0;\n"];
  If[CheckVar[HFexpr, H0mz], str = str<>"  double H0mz = -PolyLog(2,-zu);\n\n"];

  If[CheckVar[HFexpr, Lmu2m2], str = str<>"  double Lmu2m2 = 2*log(mu/mt);\n"];
  If[CheckVar[HFexpr, z2],     str = str<>"  double z2 = Zeta(2);\n\n\n"];

  Do[str = str <>
      "  hardmatrix["<>ToString[i-1]<>"]["<>ToString[j-1]<>"] =\n"<>
      "    " <>
      ToString[CForm[HFexpr[[i,j]]]]<>";\n";
    , {i, 1, size}, {j, 1, size}
  ];

  str = str <>"\n"<> 
              "};\n\n";

  WriteString[filecc, str];
]

(******************************************************************************
 *
 * Open and fill the begining of .hh and .cc files
 * 
 *****************************************************************************)
StartFilehh[] := Module[{fstream, datetime = DateString[DateList[]]},
  fstream = OpenWrite["../topqT++limited/hard.hh"];
  
  WriteString[fstream, "// Generated by GenerateCppCodeHardFunction.m " ];
  WriteString[fstream, "on " <> datetime <> "\n\n"];
  WriteString[fstream,
    "#ifndef __HARD_H_\n"<>
    "#define __HARD_H__\n\n"<>
    "#include <heplib/MathematicaC.hh>\n"<>
    "#include \"common.hh\"\n\n"
  ];

  Return[fstream]; 
];

StartFilecc[iibar_] := Module[{fstream, datetime = DateString[DateList[]]},
  fstream = OpenWrite["../topqT++limited/hard"<>iibar<>".cc"];

  WriteString[fstream, "// Generated by GenerateCppCodeHardFunction.m " ];
  WriteString[fstream, "on " <> datetime <> "\n\n"];
  WriteString[fstream, "#include \"hard.hh\"\n\n" ];

  Return[fstream]; 
];


(******************************************************************************
 *
 * Write final lines and close .hh and .cc files
 *
 *****************************************************************************)
CloseFilehh[fstream_] := Module[{},
  WriteString[fstream, "#endif/*__HARD_H__*/\n"];
  Close[fhh];
];

(******************************************************************************
 *
 * Fill .hh and .cc files with content
 * 
 *****************************************************************************)
fhh = StartFilehh[];
fccqq = StartFilecc["qq"];
fccgg = StartFilecc["gg"];

AddFunction["hardqq0", 2, fhh, fccqq, withcI];
AddFunction["hardqq1", 2, fhh, fccqq, withcI];

AddFunction["hardgg0", 3, fhh, fccgg, withcI];
AddFunction["hardgg1", 3, fhh, fccgg, withcI];

CloseFilehh[fhh];
Close[fccqq];
Close[fccgg];

End[];
EndPackage[];
