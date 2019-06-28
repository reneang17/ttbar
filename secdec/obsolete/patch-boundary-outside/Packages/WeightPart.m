(* ::Package:: *)

(******************************************************************************
 *   Separates the infrared and weight part. The on-shell delta functions     *
 *   are not yet evaluated                                                    *
 *                                                                            *
 *****************************************************************************)

BeginPackage["WeightPart`", {"Symbols`","InfraredTimesWeight`"}];

Print["WeightPart"];


 (******************************************************************************
  *      List of updates                                                       *
  * - Typo in determining convesion with less angles casenok->casenol,1/11/17  *
  * -                                                                          *
  * -                                                                          *
  * -                                                                          *
  * -                                                                          *
  * -                                                                          *
  *****************************************************************************)



(******************************************************************************
 *                                                                            *
 * Public.                                                                    *
 *                                                                            *
 ******************************************************************************)

EvaWeight::usage = "EvaWeight[inputlist,main, sub], for each element i of the 
inputlist, creates a files subi_Weight.dat inside /main/subi, that contains the weight part
of integral i. Inputlist should be written in Lorentz invariant form, .e.g sp[p1,k+l]"


Begin["`Private`"]


(****************************************************************************
 *                                                                          *
 * common                                                                   *
 *                                                                          *
 ***************************************************************************)







EvaWeight[inputints_,mainfolder_,subfolders_]:=Module[{ic,main,aux2file,
  aux3Maps,inputMaps,weight,C5,C6,
  casenok,casenol,casekl},
main=Directory[];
SetDirectory[main];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

For[ic=1,ic<=Length[inputints],ic++,
  weight=WeightPart[inputints[[ic]]];
  Print[weight];
  SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]<>"/"
  <>ToString[subfolders]<>ToString[ic]];

  (*Look for Mappings file*)
  aux2file=FileNames[];
  aux3Maps=Flatten[StringCases[aux2file,__~~"_MapsInfo.dat"~~EndOfString]][[1]];
  inputMaps=Read[aux3Maps];Close[aux3Maps];
  (*Look for Mappings file Ends*)



(************************)
(*The following angles convensions are necessary*)
(*Case1: no dependence on k*)
casenok={spU[l, p3] -> spU[{{ be CT, be ST C5, 0},
   {(lm - lp)/(lp + lm), 2 lT/(lp + lm), 0}}]};
(*Case2: no dependence on l*)
casenol={spU[k, p3] -> spU[{{ be CT, be ST C5, 0},
     {(km - kp)/(kp + km), 2 kT/(kp + km), 0}}]};
(*Case3: Dependence on k and l*)
casekl={spU[k + l, p3] -> spU[{{ be CT, be ST C5, be ST S5 C6},
    {(km + lm - kp - lp)/(kp + km + lp + lm),
     2 (kT + lT Cos[phi])/(kp + km + lp + lm),
     2 (lT Sin[phi])/(kp + km + lp + lm)}}],
 spU[k, p3] -> spU[{{ be CT, be ST C5, be ST S5 C6},
    {(km - kp)/(kp + km), 2 kT/(kp + km), 0}}],
 spU[l, p3] -> spU[{{ be CT, be ST C5, be ST S5 C6},
    {(lm - lp)/(lp + lm), 2 (lT Cos[phi])/(lp + lm),
     2 (lT Sin[phi])/(lp + lm)}}]};
(************************)


  (*Determine the convention with less angles*)
  If[FreeQ[weight,spU[p3,k+a_.]],
    weight=weight/.casenol;,
        If[FreeQ[weight,spU[p3,l+a_.]],
          weight=weight/.casenok;,
          weight=weight/.casekl;
          ]
    ];

  weight=Simplify[weight/.{phi->ArcCos[1-2(-1+kT^2+2 kT lT+lT^2)/(4 kT lT)]},
  kT>0&&lT>0];
  weight=weight/.{C5->1-2 x[5],S5->2(x[5](1-x[5]))^(1/2)};


  (************************)
    If[inputMaps[[1]][[2]]===minusS,
      weight=(weight/.{lp->lm,lm->lp,kp->km,km->kp})];
    (*Set weight part on-shell*)
    weight=Simplify[(weight/.{lm->lT^2/lp,km->kT^2/kp}),
    kT>0&&lT>0];
  (************************)


  If[FreeQ[weight,C6],
    Write[ToString[subfolders]<>ToString[ic]<>"_Weight.dat",{1,weight}];
    Close[ToString[subfolders]<>ToString[ic]<>"_Weight.dat"],
    weight={2,(weight/.{C6 -> 1 - x[6]})};
    Write[ToString[subfolders]<>ToString[ic]<>"_Weight.dat",weight];
    Close[ToString[subfolders]<>ToString[ic]<>"_Weight.dat"]
      ]
];

SetDirectory[main];

Print["All weights should have been created!"];

(*Module Eva ends*)
]


End[]


EndPackage[]

