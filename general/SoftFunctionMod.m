(* ::Package:: *)

(* 
  Functions used in computation of the analytic expression for the soft fuction
  of the process  n1 + n2 -> n3 + n4, where the incoming partons are massless
  while the outgoing partons are massive.
*)

Print["SoftFunction module, devel version; Copyright: Sebastian Sapeta"];

(* -----------------------------------------------------------------------------
  Project general quantum numbers of a Wilson line onto sets appearing directly
  in the O and O^+ operators.
----------------------------------------------------------------------------- *)
ProjectQuantumNumbers[expr_] := Module[
  {labels = Union[Cases[expr, q[n_] :> n, -1]], rule, indices, perm},
  indices = Range[Length[labels]];
  perm = Permutations[indices];
  Sum[expr //. 
    Thread[Flatten[{q[#,args___], \[Alpha][#], ai[#]} & /@ labels] -> 
      Flatten[{k[#,args], \[Beta][#], bi[#]} & /@ perm[[i]]]], {i, 
    Length[perm]}]
]

(* -----------------------------------------------------------------------------
----------------------------------------------------------------------------- *)
FactorizedForm[term_,form_] := Module[{faclist, mfac, iFF, jFF},
  mfac = ConstantArray[0, {2, 2}];
  Do[
   mfac[[iFF]][[jFF]] = 
     Times @@ 
      Cases[(term[[iFF]][[jFF]]) // FullSimplify, F[__]];
   , {iFF, 1, 2}
   , {jFF, 1, 2}
   ];
  faclist = Union[Flatten[mfac]];
  If[Length[faclist] == 2 && faclist[[1]] == 1, 
   faclist = Delete[faclist, 1]];
  If[Length[faclist] != 1, Print["Error: factorlist is too long!"]; 
   Print[faclist]; Break[]];

  
  If[form == MatrixForm,
     Return[{faclist[[1]], term/faclist[[1]] // MatrixForm}]
  ];
  If[form == List, 
    Return[{faclist[[1]], term/faclist[[1]]}]
  ];

]

(* -----------------------------------------------------------------------------
----------------------------------------------------------------------------- *)
FactorizedFormList[inlist_, form_] := Module[{tmplist = {}, iFFL},
  Do[
   (*Print[inlist[[iFFL]]];*)
   
   AppendTo[tmplist, FactorizedForm[inlist[[iFFL]],form]];
   , {iFFL, 1, Length[inlist]}
   ];
  Return[tmplist];
  ]

(* -----------------------------------------------------------------------------
  Take a list and identify identical terms, or those equivalent by swapping
  gluons' momenta, and collect those duplicate into a single term multiplied by
  a factor. Do it for all repeated terms.
----------------------------------------------------------------------------- *)
CollectDuplicates[inlist_] := 
 Module[{tmplist = {}, uniquelist = {}, iCD, swapintegral, pos},
  (* Run over the original list and search for repetitions and 
     duplicates after swapping gluon's momenta *)
  Do[
   swapintegral = 
    inlist[[iCD]] /. {Subscript[k, 1] -> Subscript[k, 2], Subscript[k, 2] -> Subscript[k, 1]};
   If[FreeQ[tmplist, inlist[[iCD]]] && FreeQ[tmplist, swapintegral],
    AppendTo[tmplist, inlist[[iCD]]];
    AppendTo[uniquelist, inlist[[iCD]]],
    If[MemberQ[tmplist, swapintegral],
      pos = Position[tmplist, swapintegral][[1]][[1]];
      uniquelist[[pos]] += swapintegral,
      If[MemberQ[tmplist, inlist[[iCD]]],
        pos = Position[tmplist, inlist[[iCD]]][[1]][[1]];
        uniquelist[[pos]] += inlist[[iCD]];
        ];
      ];
    ];
   , {iCD, 1, Length[inlist]}
   ];
  Return[uniquelist];
]


(* -----------------------------------------------------------------------------
  Find a given type of integral, e.g. I8ab or I8pa, and print the corresponding
  term in the MatchList form.
----------------------------------------------------------------------------- *)
CheckIntegrals[integral_, indices_] := Module[{ii},
  IpList = {};
  Do[
   MatchList = Cases[FFListList, {F[integral, indices[[ii]]], ___}];
   (*MatchList=Cases[SFCompact,F[integral,indices3[[ii]]]___,-1];*)
    If[MatchList != {}, AppendTo[IpList, MatchList]];,
   {ii, 1, Length[indices]}];
  Return[IpList];
]
