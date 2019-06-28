(* ::Package:: *)

(****************************************************************************
 *   Automating                                                             *
 *   Last update 8 05 17                                                    *
 ****************************************************************************)

 (******************************************************************************
  *                                                                            *
  * List of updates                                                            *
  *                                                                            *

  ******************************************************************************)


BeginPackage["CountMaps`", {"Symbols`",
"MappingsAndCounting`","InfraredTimesWeight`",
"WeightingSubs`"}];


Print["CountMaps"];


(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



 CreateWith::usage = ""
 CreateWithout::usage = ""

 WhichMappingsWith::usage = ""
 WhichMappingsWithout::usage = ""
 HowManyMaps::usage = ""

 ReturnMappedWith::usage = ""
 ReturnMappedWithout::usage = ""
 Eva::usage = ""

 EvaWeight::usage = ""
 plusS::usage = ""
 minusS::usage = ""
 withP::usage = ""
 withoutP::usage = ""

 GlobalConst::usage = ""


Begin["`Private`"]




(******************************************************************************
 *                                                                            *
 * Private. Functions that create files/folders, start from folder in use    *
 *                                                                            *
 ******************************************************************************)


(******************************************************************************
 *                                                                            *
 * Apply min maps, create folder and file that store it                       *
 *                                                                            *
 ******************************************************************************)



(*Creates a folder, and a files with the same number that contains Mapped function.*)

CreateDir[aname_,withorNO_,plusminus_,listint_,listmaps_]:=Block[{aux},
aux=Directory[];
SetDirectory[aux];
(*Print[aux];*)
CreateDirectory[ToString[aname]];
SetDirectory[aux<>"/"<>ToString[aname]];
Write[ToString[aname]<>".dat",listint];
Close[ToString[aname]<>".dat"];
Write[ToString[aname]<>"_Maps.dat",{{withorNO,plusminus},listmaps}];
Close[ToString[aname]<>"_Maps.dat"];
SetDirectory[aux];
]

(*Applies desired mappings {n0} and {n1}. Case with a 3g propagator*)

CreateWith[plusminus_,n01_,n02_,n03_,n11_,n12_,n13_,integrand_,rapreg_,aname_]:=
Module[{aux,aux2},
MinMapsWith[n01,n02,n03,n11,n12,n13,
EvaRationalPart[integrand],aux,1,rapreg,1];
(*Print[Length[aux[1]]];*)
aux2=Map[NoPhasesForSecDec,aux[1]];
Print[Length[aux2]];
CreateDir[aname,withP,plusminus,aux2,{n01,n02,n03,n11,n12,n13}]
]

(*Applies desired mappings {n0} and {n1}. Case without a 3g propagator*)

CreateWithout[plusminus_,n02_,n03_,n12_,n13_,integrand_,rapreg_,aname_]:=
Module[{aux,aux2},MinMapsWithout[n02,n03,n12,n13,
EvaRationalPart[integrand],aux,1,rapreg,1];
(*CPrint[Length[aux[1]]];*)
aux2=Map[NoPhasesForSecDec,aux[1]];
Print[Length[aux2]];
CreateDir[aname,withoutP,plusminus,aux2,{n02,n03,n12,n13}]]



(******************************************************************************
 *                                                                            *
 * Decision functions design to read list of power couning and decide which   *
 * Mappins  are necessary.                                                    *
 *                                                                            *
 ******************************************************************************)

(*Decides if y splitting is required*)

testy[inputlist_,ud_]:=Module[{input,b1,cont},
 input=inputlist;
If [Cases[input,{y,False,ud,___,0,_}]=!={},
b1=2;If[(Cases[input,{y,False,ud,___,1,_}]=!={}),b1=b1-2];,
b1=2;If[(Cases[input,{y,False,ud,___,1,_}]=!={}),b1=b1+1];
];
Return[b1]
]

(*Decides if x splitting is required*)

testx[inputlist_,ud_]:=Module[{input,c1},
input=inputlist;
If[Cases[input,{x,False,ud,__,0}]=!={},
    c1=2;If[(Cases[input,{x,False,ud,__,1}]=!={}),c1=c1-2;
    (*New line begins
    If[(Cases[input,{y,False,ud,___,1,_}]=!={})&&(Cases[input,{y,False,ud,___,0,_}]=!={})
       && (Cases[input,{y,False,ud,___,1,0}]==={}) && (Cases[input,{y,False,ud,___,0,1}]==={})
    ,c1=4];
    New line ends*)
    ];,
c1=2;If[(Cases[input,{x,False,ud,__,1}]=!={}),c1=c1+1];
  ];
Return[c1]
]

(*Decides if yT splitting is required*)

testyT[inputlist_]:=Module[{input,a},
input= inputlist;
If[(Cases[input,{yT,False,1,0,__}]=!={})||(Cases[input,{yT,False,0,0,__}]=!={}),
a[1]=2;
If[(Cases[input,{yT,False,1,1,__}]=!={}),a[1]=a[1]-2];
a[0]=2;
If[(Cases[input,{yT,False,0,1,__}]=!={}),a[0]=a[0]-2];
,
a[1]=2;
If[(Cases[input,{yT,False,1,1,__}]=!={}),a[1]=a[1]+1];
a[0]=2;
If[(Cases[input,{yT,False,0,1,__}]=!={}),a[0]=a[0]+1];
];
Return[{a[0],a[1]}]
]

(*Gives list with mins mappings. Case with exact gluon prop*)

WhichMappingsWith[int_]:=Module[{listn,a,b,c,aux},
MapsForPowerCountingWith[int,aux];
listn=Flatten[{DivSkeleton[aux[0],0,yT],DivSkeleton[aux[0],1,yT]},1];
{a[0],a[1]}=testyT[listn];
listn=Flatten[{DivSkeleton[aux[0],0,y],DivSkeleton[aux[0],1,y]},1];
{b[0],b[1]}={testy[listn,0],testy[listn,1]};
listn=Flatten[{DivSkeleton[aux[0],0,x],DivSkeleton[aux[0],1,x],listn},1];
{c[0],c[1]}={testx[listn,0],testx[listn,1]};
Return[{a[0],b[0],c[0],a[1],b[1],c[1]}]
]

(*Gives list with mins mappings. Case without exact gluon prop*)

WhichMappingsWithout[int_]:=Module[{listn,b,c,aux},
MapsForPowerCountingWithout[int,aux];
listn=Flatten[{DivSkeletonWO[aux[0],0,y],DivSkeletonWO[aux[0],1,y]},1];
{b[0],b[1]}={testy[listn,0],testy[listn,1]};
listn=Flatten[{DivSkeletonWO[aux[0],0,x],DivSkeletonWO[aux[0],1,x]},1];
{c[0],c[1]}={testx[listn,0],testx[listn,1]};
Return[{b[0],c[0],b[1],c[1]}]
]

(*Reads list provideded by WhichMappingsWith(out) and tells how many ints are
required*)

HowManyMaps[vec__]:=Module[{ic,temp,total,vecsize},vecsize=Length[vec];
total[0]=1;
ic=1;
For[ic=1,ic<=vecsize/2,ic++,If[vec[[ic]]===0,temp=1,temp=0];
total[0]=total[0]*2^temp;];

total[1]=1;
For[ic=vecsize/2+1,ic<=vecsize,ic++,If[vec[[ic]]===0,temp=1,temp=0];
total[1]=total[1]*2^temp;];
total=total[0]+total[1];

Return[total]]



(******************************************************************************
 *                                                                            *
 * Use decision functions, based on PCtools, to decide which Mappings are    *
 *  nessaray and applies them.
 * It test if it is better to integrate + or  - cooords first.                *
 * A future improvement would be to take into account the                    *
 * mix +/-s case.                                                            *
 *                                                                            *
 ******************************************************************************)

(*int= intergral under consideraction, aname= name of folder/file where
  mapped function is stored,ic= counting variable *)

ReturnMappedWithout[int_,aname_,ic_]:=Module[
{auxvecplus,numberplus,auxvecminus,numberminus,auxrep,intalt},
auxrep={lp->lm,lm->lp,kp->km,km->kp};
auxvecplus=WhichMappingsWithout[int];
numberplus=HowManyMaps[auxvecplus];
If[numberplus===2,CreateWithout@@Flatten[{plusS,
auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecplus," plus"],intalt=int/.auxrep;
auxvecminus=WhichMappingsWithout[intalt];
numberminus=HowManyMaps[auxvecminus];
If[numberminus<numberplus,CreateWithout@@Flatten[{minusS,
auxvecminus,intalt,1/(lm km)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecminus," minus"],
CreateWithout@@Flatten[{plusS,
auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecplus," plus"]]]]


ReturnMappedWith[int_,aname_,ic_]:=Module[{auxvecplus,numberplus,
  auxvecminus,numberminus,auxrep,intalt},
auxrep={lp->lm,lm->lp,kp->km,km->kp};
auxvecplus=WhichMappingsWith[int];
numberplus=HowManyMaps[auxvecplus];
If[numberplus===2,CreateWith@@Flatten[{plusS,
auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecplus," plus"],intalt=int/.auxrep;
auxvecminus=WhichMappingsWith[intalt];
numberminus=HowManyMaps[auxvecminus];
If[numberminus<numberplus,CreateWith@@Flatten[{minusS,
auxvecminus,intalt,1/(lm km)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecminus," minus"],CreateWith@@Flatten[{plusS,
auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
Print[auxvecplus," plus"]]]]



(*Applies  ReturnMapped to a list of integrals (inputintegrals), each integral has
assign a folder with name "subfolder", and all folders are stored in mainfolder.  *)

Eva[inputints_,mainfolder_,subfolders_]:=Module[{ic,main,infra},
main=Directory[];
SetDirectory[main];
CPrint[main];
CreateDirectory[ToString[mainfolder]];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

For[ic=1,ic<=Length[inputints],ic++,
infra=InfraredPart[inputints[[ic]]];
If[FreeQ[infra,phi],
ReturnMappedWithout[infra,subfolders,ic];,
ReturnMappedWith[infra,subfolders,ic]];
];

SetDirectory[main]
(*Module Eva ends*)
]

(************************************************************************)


(************************************************************************)

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
  aux3Maps=Flatten[StringCases[aux2file,__~~"_Maps.dat"~~EndOfString]][[1]];
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
    weight=weight/.casenok;,
        If[FreeQ[weight,spU[p3,l+a_.]],
          weight=weight/.casenok;,
          weight=weight/.casekl;
          ]
    ];

  weight=Simplify[weight/.{phi->ArcCos[1-2(-1+kT^2+2 kT lT+lT^2)/(4 kT lT)]},
  kT>0&&lT>0];
  weight=weight/.{p3T->Sin[theta]beta,C5->1-2 x[5],S5->2(x[5](1-x[5]))^(1/2)};


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

SetDirectory[main]
(*Module Eva ends*)
]


(************************************************************************)

GlobalConst[inputCoef_,mainfolder_,subfolders_]:=Module[{ic,main,aux2file,
auxconst,auxlist},
main=Directory[];
SetDirectory[main];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

auxlist=(2^(5 - ep) e^(2 ep EulerGamma))/(Sqrt[\[Pi]] Gamma[1/2 - ep]) *
inputCoef //
(N[Normal[Series[#, {ep, 0, 3}]] /. {Log[e] -> 1}]) &;
Print[auxlist];
For[ic=1,ic<=Length[auxlist],ic++,
  auxconst=auxlist[[ic]];

  SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]<>"/"
  <>ToString[subfolders]<>ToString[ic]];



  Write[ToString[subfolders]<>ToString[ic]<>"_G.dat",auxconst];
    Close[ToString[subfolders]<>ToString[ic]<>"_G.dat"];

];
SetDirectory[main]
]


End[]
EndPackage[]
