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

VecToString::usage = "Function that transform vector to string"


Begin["`Private`"]


(****************************************************************************
 *                                                                          *
 * common                                                                   *
 *                                                                          *
 ***************************************************************************)



(*VecToString is used to read vector in ~~Maps.dat file *)
(*{a,b,...,z} to string: _a_b_ ... _z_*)

VecToString[inputvec_]:= Module[{output,ic},
  output = ToString[_];
  For[ic = 1, ic < Length[inputvec] + 1, ic++ ,
   output = ToString[output] <> ToString[inputvec[[ic]]] <> ToString[_]
    ];
  Return[output]
  ]


(*Turns two list into a list of Replacements*)
ListToRepl[ax_, bx_] := Module[{aux, ic},
  aux = {};
    If[Length[ax] === Length[bx] && Head[ax] === List && 
    Head[bx] === List,
     For[ic = 1, ic <= Length[ax], ic++,
     AppendTo[aux, ax[[ic]] -> bx[[ic]]] ];
     Return[aux],
    Print["Conflic in LsitToRepl" \.1c];
     ];
  ]



(****************************************************************************
 *                                                                          *
 * common                                                                   *
 *                                                                          *
 ***************************************************************************)

 unitklrepl = {{a_, b_,c_} /; (FreeQ[a, kT] === False) && (FreeQ[a, lT]) :> {k1, k2, k3},
    {a_, b_, c_} /; (FreeQ[a, lT] === False) && (FreeQ[a, kT]) :> {l1, l2, l3},
    {a_, b_, c_} /; (FreeQ[a, kT] === False) && (FreeQ[a, lT] === False) :> {kl1, kl2, kl3}};

 nodep={k1->0,k2->0,k3->0,l1->0,l2->0,l3->0,kl1->0,kl2->0,kl3->0};
 repsp={spU[{bb1_,cc2_}]:> bb1 . cc2 };


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


EvaWeight[inputints_,mainfolder_,subfolders_]:=Module[{ic,main,aux2file,
  aux3Maps,inputMaps,weight},

main=Directory[];
SetDirectory[main];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

For[ic=1,ic<=Length[inputints],ic++,
     weight=WeightPart[inputints[[ic]]];
   
     Print["Processing :",ToString[mainfolder]<>"-"
     <>ToString[subfolders]<>ToString[ic]]
     Print[weight];
   
     SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]<>"/"
     <>ToString[subfolders]<>ToString[ic]];
   
     (*Look for Mappings file*)
     aux2file=FileNames[];
     aux3Maps=Flatten[StringCases[aux2file,
     ToString[subfolders]<>ToString[ic]<>"_MapsInfo.dat"]][[1]];
     inputMaps=Read[aux3Maps];Close[aux3Maps];
     (*Look for Mappings file Ends*)
   
     (*Get mappings applied gluon momenta before sector decompositon*)
     CopyFile[main<>"/Packages/CoordsMapped"<>ToString[inputMaps[[1]][[1]]]
     <>"/Maps"<>VecToString[inputMaps[[2]]]<>".dat",
     StringDrop[aux3Maps,-StringLength["_MapsInfo.dat"]]<>"_MapsToCV.dat"];
  
  
  
     (*Determine the convention with less angles*)
     If[FreeQ[weight,spU[p3,k+a_.]],
       weight=weight/.casenok;,
          If[FreeQ[weight,spU[p3,l+a_.]],
            weight=weight/.casenol;,
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
   
   
     weight=(weight/.{x[5]->(Cos[Pi x[5]/2])^2})/.{x[5]->x5,C6 -> 1-x6};

(*     WeightFiles[subfolders,weight];*)       

If[FreeQ[weight,x6]
   
     ,(*Then*)
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WArg.dat",
     {1, (W[x[5],0, k1,k2,k3,l1,l2,l3,kl1,kl2,kl3]/.
      ListToRepl[
         Cases[weight, spU[{{a__}, b_}] :> (b/. unitklrepl), -1]//Flatten,
         Cases[weight, spU[{{a__}, b_}] :> b, -1]//Flatten
                ])/.nodep}];
     Close[ToString[subfolders]<>ToString[ic]<>"_WArg.dat"];

     weight=weight/. unitklrepl/.repsp;
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat",
       2*weight //Simplify//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat"];
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat",
       0//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat"];
 
 
 
     , (*Else*)  
 
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WArg.dat",
     {2,(W[x[5], x[6], k1,k2,k3,l1,l2,l3,kl1,kl2,kl3]/.
      ListToRepl[
         Cases[weight, spU[{{a__}, b_}] :> (b/. unitklrepl), -1]//Flatten,
         Cases[weight, spU[{{a__}, b_}] :> b, -1]//Flatten
                ])/.nodep}];
     Close[ToString[subfolders]<>ToString[ic]<>"_WArg.dat"];
     
     weight=weight/. unitklrepl/.repsp;

     Write[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat",
       ((weight/.x6->0)+(weight/.x6->2)) //Simplify//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat"];
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat",
       ((weight+(weight/.{x6->(2-x6)}) //Simplify)
      - W[x5, x6 ,k1,k2,k3,l1,l2,l3,kl1,kl2,kl3])/(x6(2-x6))//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat"];
 
  ]

 Write[ToString[subfolders]<>ToString[ic]<>"_Weight.dat",
 weight /. unitklrepl/.repsp];
 Close[ToString[subfolders]<>ToString[ic]<>"_Weight.dat"];


];

SetDirectory[main];

Print["All weights should have been created!"];

(*Module Eva ends*)
]



WeightFiles[subfolders_,weight_]:=Module[{},

If[FreeQ[weight,x6]
   
     ,(*Then*)
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WArg.dat",
     {1, (W[x[5],0, k1,k2,k3,l1,l2,l3,kl1,kl2,kl3]/.
      ListToRepl[
         Cases[weight, spU[{{a__}, b_}] :> (b/. unitklrepl), -1]//Flatten,
         Cases[weight, spU[{{a__}, b_}] :> b, -1]//Flatten
                ])/.nodep}];
     Close[ToString[subfolders]<>ToString[ic]<>"_WArg.dat"];

     weight=weight/. unitklrepl/.repsp;
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat",
       2*weight //Simplify//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat"];
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat",
       0//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat"];
 
 
 
     , (*Else*)  
 
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WArg.dat",
     {2,(W[x[5], x[6], k1,k2,k3,l1,l2,l3,kl1,kl2,kl3]/.
      ListToRepl[
         Cases[weight, spU[{{a__}, b_}] :> (b/. unitklrepl), -1]//Flatten,
         Cases[weight, spU[{{a__}, b_}] :> b, -1]//Flatten
                ])/.nodep}];
     Close[ToString[subfolders]<>ToString[ic]<>"_WArg.dat"];
     
     weight=weight/. unitklrepl/.repsp;

     Write[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat",
       ((weight/.x6->0)+(weight/.x6->2)) //Simplify//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef1.dat"];
 
     Write[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat",
       ((weight+(weight/.{x6->(2-x6)}) //Simplify)
      - W[x5, x6 ,k1,k2,k3,l1,l2,l3,kl1,kl2,kl3])/(x6(2-x6))//CForm];
     Close[ToString[subfolders]<>ToString[ic]<>"_WDef2.dat"];
 
  ]

 Write[ToString[subfolders]<>ToString[ic]<>"_Weight.dat",
 weight /. unitklrepl/.repsp];
 Close[ToString[subfolders]<>ToString[ic]<>"_Weight.dat"];

]



End[]


EndPackage[]

