(* ::Package:: *)

Off[General::spell1];
Off[General::spell];

(* Global variables *)
coeffMatrix = {} (* Coefficients of Y[i]+1 * Ym[j]+1 matrix *)

Print["RedMod, devel version; Copyright: Sebastian Sapeta"];

(* -----------------------------------------------------------
  Transform list of Y[i] cefficients into a corresponding sum. 
  ---------------------------------------------------------- *)
YCoeffsToExpr[list_] := Module[{},
  nprop = Length[list];
  expr = 0;
  Do[expr = expr + list[[i]] Y[i], {i, 1, nprop}];
  Return[expr];
]

(* -----------------------------------------------------------
  Transform list of Ym[i] cefficients into a corresponding sum. 
  ---------------------------------------------------------- *)
YmCoeffsToExpr[list_] := Module[{},
  nprop = Length[list];
  expr = 0;
  Do[expr = expr + list[[i]] Ym[i], {i, 1, nprop}];
  Return[expr];
]

(* -----------------------------------------------------------
   Extract list of Y[i] coefficients from the operator.
   The list corresponds to Y[1], ..., Y[n], 1.
  ---------------------------------------------------------- *)
ExtractYCoeffs[operator_, nprop_] := Module[{},
  Ycoefflist = {};
  Do[coeff = Coefficient[operator, Y[i]]; 
     (*
     Print[coeff];
     *)
     AppendTo[Ycoefflist, coeff], {i, 1, nprop}
  ]

  AppendTo[Ycoefflist,FullSimplify[operator-YCoeffsToExpr[Ycoefflist]]];
  Return[Ycoefflist];
]

(* -----------------------------------------------------------
   Extract list of Ym[i] coefficients from the operator.
   The list corresponds to Ym[1], ..., Ym[nprop], 1.
  ---------------------------------------------------------- *)
ExtractYmCoeffs[operator_, nprop_] := Module[{},
  
  Ymcoefflist = {};
  Do[coeff = Coefficient[operator, Ym[i]]; 
     AppendTo[Ymcoefflist, coeff], {i, 1, nprop}
  ]

  AppendTo[Ymcoefflist,FullSimplify[operator-YmCoeffsToExpr[Ymcoefflist]]];
  Return[Ymcoefflist];
]


(* -----------------------------------------------------------
   Extral coefficients in front of Y[i] and Ym[i] and return 
   the corresponding matrix.
   --------------------------------------------------------- *)
ExtractAllCoeffs[operator_, nprop_] := Module[{},

  (* create list o Y[i] coefficients; length = nprop+1 *)
  Ylist = ExtractYCoeffs[operator, nprop];

  (* create (nprop+1,nprop+1) dimensional list of lists 
     of Y[i] x Ym[i] coefficients *)
  finalMatrix = {};
  Do[AppendTo[finalMatrix, ExtractYmCoeffs[Ylist[[i]], nprop]], 
     {i,1,Length[Ylist]}
  ];

  coeffMatrix = finalMatrix;
]

(* -----------------------------------------------------------
   --------------------------------------------------------- *)
ApplyY[inlist_,i_] := Module[{},
  tmplist = inlist;
  (* the i+1th element, where i is the number of propagators, 
     corresponds to umodified integral *)
  If[i <= Length[inlist], tmplist[[i]] = inlist[[i]] + 1];
  Return[tmplist];
]

(* -----------------------------------------------------------
   Apply a list of Ys to the integral.
   --------------------------------------------------------- *)
ApplyYList[inlist_,Ylist_] := Module[{},
  tmplist = inlist;
  Do[tmplist = ApplyY[tmplist,Ylist[[i]]];
  , {i,1,Length[Ylist]}];

  Return[tmplist];
]

(* -----------------------------------------------------------
   --------------------------------------------------------- *)
ApplyYm[inlist_,i_] := Module[{},
  tmplist = inlist;
  If[i <= Length[inlist], tmplist[[i]] = inlist[[i]] - 1];
  Return[tmplist];
]

IntegralToList[integral_] := Module[{},
  Return[integral[[1]]];
]

(* -----------------------------------------------------------
   inList: original integral to be passed to IBPs
   nprop: number of propagators
   --------------------------------------------------------- *)
DistinctIntegralsFromIBPs[inList_,nprop_] := Module[{},
  SetOfIntegrals = {};
  (* Y[i] x Ym[j] *)
  Do[
    integral = ApplyYm[ApplyY[inList,i],j];
    If[Not[TrueQ[coeffMatrix[[i]][[j]] == 0]], 
       AppendTo[SetOfIntegrals, integral]];
    , {j,1,nprop+1}, {i,1,nprop+1}
  ];
  Return[Union[SetOfIntegrals]];
]

(* -----------------------------------------------------------
   inList: original integral to be passed to IBPs
   nprop: number of propagators
   --------------------------------------------------------- *)
ApplyIBPs[inList_, nprop_] := Module[{expr},
  expr1 = 0;
  (* Y[i] x Ym[j] *)
  Do[
    integral = ApplyYm[ApplyY[inList,i],j];
    expr1 = expr1 + coeffMatrix[[i]][[j]] G[2,integral];
    , {j,1,nprop+1}, {i,1,nprop+1}
  ];
  Return[expr1];
]
 
(* -----------------------------------------------------------
   Differentaite integral over beta
   --------------------------------------------------------- *)
DbetaMixed[inlist_] := Module[{},
  tmplist = inlist;
  a3 = inlist[[3]];
  a4 = inlist[[4]];
  a6 = inlist[[6]];

  dbeta3 = 1/\[Beta] Ym[3] - (2 \[Beta])^-1 Ym[1] - (2 \[Beta])^-1 Ym[2];
  dbeta4 = 1/\[Beta] Ym[4] - (2 \[Beta])^-1 Ym[1] - (2 \[Beta])^-1 Ym[2];
  dbeta6 = (-\[Lambda](1-b) Ym[1]+\[Lambda] (1-b) Ym[2] + 
            2 \[Lambda]^2 (b (2-b)-c))/\[Beta] + 2 \[Lambda] dbeta3;

  resOperator = 0;

  If[a3 != 0, resOperator = resOperator - a3 dbeta3 Y[3]];
  If[a4 != 0, resOperator = resOperator - a4 dbeta4 Y[4]];
  If[a6 != 0, resOperator = resOperator - a6 dbeta6 Y[6]];

  Return[resOperator];
]

(* -----------------------------------------------------------
   Differentaite integral over beta
   --------------------------------------------------------- *)
DbetaNLO[inlist_] := Module[{},
  tmplist = inlist;
  a3 = inlist[[3]];
  a4 = inlist[[4]];

  dbeta3 = 1/\[Beta] Ym[3] - (2 \[Beta])^-1 Ym[1] - (2 \[Beta])^-1 Ym[2];
  dbeta4 = 1/\[Beta] Ym[4] - (2 \[Beta])^-1 Ym[1] - (2 \[Beta])^-1 Ym[2];

  resOperator = 0;

  If[a3 != 0, resOperator = resOperator - a3 dbeta3 Y[3]];
  If[a4 != 0, resOperator = resOperator - a4 dbeta4 Y[4]];

  Return[resOperator];
]

(* -----------------------------------------------------------
   Differentaite integral over beta
   --------------------------------------------------------- *)
DbetaNNLO[inlist_] := Module[{},

  tmplist = inlist;
  a3 = inlist[[3]];
  a4 = inlist[[4]];
  a7 = inlist[[7]];
  a8 = inlist[[8]];
  a11 = inlist[[11]];
  a12 = inlist[[12]];

  dbeta3  = 1/beta Ym[3]  - (2 beta)^-1 Ym[1] - (2 beta)^-1 Ym[2];
  dbeta4  = 1/beta Ym[4]  - (2 beta)^-1 Ym[1] - (2 beta)^-1 Ym[2];
  dbeta7  = 1/beta Ym[7]  - (2 beta)^-1 Ym[5] - (2 beta)^-1 Ym[6];
  dbeta8  = 1/beta Ym[8]  - (2 beta)^-1 Ym[5] - (2 beta)^-1 Ym[6];
  dbeta11 = 1/beta Ym[11] - (2 beta)^-1 Ym[9] - (2 beta)^-1 Ym[10];
  dbeta12 = 1/beta Ym[12] - (2 beta)^-1 Ym[9] - (2 beta)^-1 Ym[10];

  resOperator = 0;

  If[a3  != 0, resOperator = resOperator - a3  dbeta3 Y[3]];
  If[a4  != 0, resOperator = resOperator - a4  dbeta4 Y[4]];
  If[a7  != 0, resOperator = resOperator - a7  dbeta7 Y[7]];
  If[a8  != 0, resOperator = resOperator - a8  dbeta8 Y[8]];
  If[a11 != 0, resOperator = resOperator - a11 dbeta11 Y[11]];
  If[a12 != 0, resOperator = resOperator - a12 dbeta12 Y[12]];

  Return[resOperator];
]


(* -----------------------------------------------------------
   Get integrals and coefficients
   --------------------------------------------------------- *)
MIsandCoeffs[inlist_] := Module[{},

  SetOfIntegrals = {};
  Coefficients = {};
  
  Do[
    term = Take[inlist,{i,i}];
    MIG = Cases[term,G[__]][[1]];
    MIList = MIG[[2]];
    AppendTo[SetOfIntegrals, MIList];
    AppendTo[Coefficients, Coefficient[term,MIG]];
  , {i,1,Length[inlist]}
  ];


  Return[{SetOfIntegrals,Coefficients}];
  
]


(* -----------------------------------------------------------
   Differentiate integral and reduce the result
   --------------------------------------------------------- *)
DifferentiateAndReduce[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint[[2]];
  
  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dbeta **)
  DbetaOperator = DbetaMixed[inlist];
  ExtractAllCoeffs[DbetaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of thos integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  (************ Reduction **************)

  ReducedIntegrals = {};
  Do[
    AppendTo[ReducedIntegrals, F[2, integrals[[i]]]]
    , {i, 1, Length[integrals]}
  ];
  
  (** combine the final expression **)
  rhs = 0;
  Do[
    rhs = rhs + coeffs[[i]] ReducedIntegrals[[i]]
    , {i, 1, Length[ReducedIntegrals]}
  ];

  Return[rhs];
]


(* -----------------------------------------------------------
   Differentaite integral over lambda
   --------------------------------------------------------- *)
DlambdaMixed[inlist_] := Module[{},
  tmplist = inlist;
  a6 = inlist[[6]];

  dbeta6 = (-(2-b) Ym[1]-b Ym[2] + 2 Ym[3] + 2 \[Lambda] (b (2-b)-c));

  resOperator = 0;

  If[a6 > 0, resOperator = -a6 dbeta6 Y[6]];

  Return[resOperator];
]

(* -----------------------------------------------------------
   Differentiate integral and reduce the result
   --------------------------------------------------------- *)
DifferentiateMIslambda[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint[[2]];
  
  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dlambda **)
  DlambdaOperator = DlambdaMixed[inlist];
  ExtractAllCoeffs[DlambdaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of thos integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  Return[integrals];

]

(* -----------------------------------------------------------
   Differentiate integral over beta
   --------------------------------------------------------- *)
DifferentiateMIsbetaNLO[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint[[2]];
  
  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dbeta **)
  DbetaOperator = DbetaNLO[inlist];
  ExtractAllCoeffs[DbetaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of thos integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  Return[integrals];

];

(* -----------------------------------------------------------
   Differentiate integral over beta
   --------------------------------------------------------- *)
DifferentiateMIsbetaNNLO[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint;

  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dbeta **)
  DbetaOperator = DbetaNNLO[inlist];
  ExtractAllCoeffs[DbetaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of those integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  Return[{coeffs,integrals}];

];

(* -----------------------------------------------------------
   Differentiate integral and reduce the result
   --------------------------------------------------------- *)
DifferentiateAndReducelambda[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint[[2]];
  
  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dlambda **)
  DlambdaOperator = DlambdaMixed[inlist];
  ExtractAllCoeffs[DlambdaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of thos integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  (************ Reduction **************)

  ReducedIntegrals = {};
  Do[
    AppendTo[ReducedIntegrals, F[2, integrals[[i]]]]
    , {i, 1, Length[integrals]}
  ];
  
  (** combine the final expression **)
  rhs = 0;
  Do[
    rhs = rhs + coeffs[[i]] ReducedIntegrals[[i]]
    , {i, 1, Length[ReducedIntegrals]}
  ];
  Return[rhs];
]

(* -----------------------------------------------------------
   Differentiate integral and reduce the result
   --------------------------------------------------------- *)
DifferentiateAndReducebetaNLO[inint_] := Module[{},

  coeffMatrix = {};

  inlist = inint[[2]];
  
  (************ Integration **************)
  PropNum = Length[inlist];
  (** Operator corresponding to d/dbeta **)
  DbetaOperator = DbetaNLO[inlist];
  ExtractAllCoeffs[DbetaOperator, PropNum];
  (** Apply operator to the integral **)
  res = ApplyIBPs[inlist, PropNum];

  (** integrals on the rhs after differentiation **)
  integrals = MIsandCoeffs[res][[1]];
  (** coefficients of thos integrals **)
  coeffs = MIsandCoeffs[res][[2]];

  (************ Reduction **************)

  ReducedIntegrals = {};
  Do[
    AppendTo[ReducedIntegrals, F[2, integrals[[i]]]]
    , {i, 1, Length[integrals]}
  ];
  
  (** combine the final expression **)
  rhs = 0;
  Do[
    rhs = rhs + coeffs[[i]] ReducedIntegrals[[i]]
    , {i, 1, Length[ReducedIntegrals]}
  ];

  Print[MasterIntegrals[]];
  Return[rhs];
]

(* -----------------------------------------------------------
   Differentiate integral and reduce the result
   --------------------------------------------------------- *)
ReduceExpression[expression_] := Module[{},

  (** Find integrals and coefficinets **)

  I13list = MIsandCoeffs[expression]; 
  integrals = I13list[[1]];
  coeffs = I13list[[2]];

  (************ Reduction **************)

  ReducedIntegrals = {};
  Do[
    AppendTo[ReducedIntegrals, F[2, integrals[[i]]]]
    , {i, 1, Length[integrals]}
  ];
  
  (** combine the final expression **)
  rhs = 0;
  Do[
    rhs = rhs + coeffs[[i]] ReducedIntegrals[[i]]
    , {i, 1, Length[ReducedIntegrals]}
  ];

  
  Print["Master Integrals involved:", MasterIntegrals[]];
  Return[rhs];
]

(******************************************************************************)

(* -----------------------------------------------------------
   Apply Y/Ym operator to an integral
   --------------------------------------------------------- *)
ApplyOperator[integral_, operator_] := Module[{ReplY, ReplYm, Repla},
  ReplY = {G[plist : __] Y[n_] :> G[Table[If[i == n, 1, 0], {i, 1, Length[integral]}] + plist]};
  ReplYm = {G[plist__] Ym[n_] :> G[Table[If[i == n, -1, 0], {i, 1, Length[integral]}] + plist]};
  Repla = Thread[Table[a[i], {i, 1, Length[integral]}] -> integral];
  Return[Expand[operator G[integral]] //. ReplY //. ReplYm //. Repla// Expand];
]

(* -----------------------------------------------------------
   --------------------------------------------------------- *)
ExtractCoefficientsAndIntegrals[expression_] := Module[{tmplist},
  tmplist = Cases[c1 expression // Expand, fac_  G[plist__] ->  {fac, G[plist]}, -1];
  Return[Coefficients @@ tmplist[[All, 1]] Integrals @@ tmplist[[All, 2]] //. {c1 -> 1}];
]
