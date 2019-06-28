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


BeginPackage["InfraredPart`", {"Symbols`","Mappings`","PowerCountingTools`","InfraredTimesWeight`"}];


Print["InfraredPart"];


(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



 CreateWith::usage = ""
 CreateWithout::usage = ""
 
 ReturnMappedWith::usage = ""
 ReturnMappedWithout::usage = ""

 EvaInfra::usage = "See Documentation.nb"

 

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



(*Creates a folder, and a file with the same number that contains Mapped function.*)

CreateDir[aname_,withorNO_,plusminus_,listint_,listmaps_]:=Block[{aux},
aux=Directory[];
SetDirectory[aux];
(*Print[aux];*)
CreateDirectory[ToString[aname]];
SetDirectory[aux<>"/"<>ToString[aname]];
Write[ToString[aname]<>"_Infra.dat",listint];
Close[ToString[aname]<>"_Infra.dat"];
Write[ToString[aname]<>"_MapsInfo.dat",{{withorNO,plusminus},listmaps}];
Close[ToString[aname]<>"_MapsInfo.dat"];
SetDirectory[aux];
]

(*Applies desired mappings {n0} and {n1}. Case with a 3g propagator*)

CreateWith[plusminus_,n01_,n02_,n03_,n11_,n12_,n13_,integrand_,rapreg_,aname_]:=
Module[{aux,aux2},
MinMapsWith[n01,n02,n03,n11,n12,n13,
EvaRationalPart[integrand],aux,1,rapreg,1];
(*Print[Length[aux[1]]];*)
aux2=Map[NoPhasesForSecDec,aux[1]];
CPrint[Length[aux2]];
CreateDir[aname,withP,plusminus,aux2,{n01,n02,n03,n11,n12,n13}]
]

(*Applies desired mappings {n0} and {n1}. Case without a 3g propagator*)

CreateWithout[plusminus_,n02_,n03_,n12_,n13_,integrand_,rapreg_,aname_]:=
Module[{aux,aux2},MinMapsWithout[n02,n03,n12,n13,
EvaRationalPart[integrand],aux,1,rapreg,1];
(*CPrint[Length[aux[1]]];*)
aux2=Map[NoPhasesForSecDec,aux[1]];
CPrint[Length[aux2]];
CreateDir[aname,withoutP,plusminus,aux2,{n02,n03,n12,n13}]]

(*

(******************************************************************************
 *                                                                            *
 * Decision functions design to read list of power couning and decide which   *
 * Mappins  are necessary.                                                    *
 *                                                                            *
 ******************************************************************************)

(*Decides if y splitting is required*)

testy[inputlist_,ud_]:=Module[{input,b1,cont},
 input=inputlist;
If[Cases[input,{y,False,ud,___,0,_}]=!={},
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

*)

(******************************************************************************
 *                                                                            *
 * Use decision functions, based on PCtools, to decide which Mappings are    *
 *  necesaray and applies them.
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
   CPrint[auxvecplus," plus"],intalt=int/.auxrep;
   auxvecminus=WhichMappingsWithout[intalt];
   numberminus=HowManyMaps[auxvecminus];
   If[numberminus<numberplus,CreateWithout@@Flatten[{minusS,
      auxvecminus,intalt,1/(lm km)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
      CPrint[auxvecminus," minus"],
      CreateWithout@@Flatten[{plusS,
      auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
      CPrint[auxvecplus," plus"]
     ]
  ]
]


ReturnMappedWith[int_,aname_,ic_]:=Module[{auxvecplus,numberplus,
  auxvecminus,numberminus,auxrep,intalt},
auxrep={lp->lm,lm->lp,kp->km,km->kp};
auxvecplus=WhichMappingsWith[int];
numberplus=HowManyMaps[auxvecplus];
If[numberplus===2,CreateWith@@Flatten[{plusS,
   auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
   CPrint[auxvecplus," plus"],intalt=int/.auxrep;
   auxvecminus=WhichMappingsWith[intalt];
   numberminus=HowManyMaps[auxvecminus];
   If[numberminus<numberplus,CreateWith@@Flatten[{minusS,
      auxvecminus,intalt,1/(lm km)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
      CPrint[auxvecminus," minus"],CreateWith@@Flatten[{plusS,
      auxvecplus,int,1/(lp kp)^ap,ToExpression[ToString[aname]<>ToString[ic]]}];
      CPrint[auxvecplus," plus"]
     ]
  ]
]



(*Applies  ReturnMapped to a list of integrals (inputintegrals), each integral has
assign a folder with name "subfolder", and all folders are stored in mainfolder.  *)

EvaInfra[inputints_,mainfolder_,subfolders_]:=Module[{(*ic,infra,*)jc,main,auxlist},
main=Directory[];
SetDirectory[main];
CPrint[main];
CreateDirectory[ToString[mainfolder]];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];


For[ic=1,ic<=Length[inputints],ic++,
  
   infra=InfraredPart[inputints[[ic]]];
   If[FreeQ[infra,phi],
     ReturnMappedWithout[infra,subfolders,ic];,
     ReturnMappedWith[infra,subfolders,ic]
     ];
   
   SetDirectory[Directory[]<>"/"<>ToString[subfolders]<>ToString[ic]];
   If[
     (StringCases[FileNames[],_~~"_Infra.dat"]=!={})&&
     (StringCases[FileNames[],_~~"_MapsInfo.dat"]=!={}),
     Print["_Infra.dat and_MapsInfo.dat created for integral "<>ToString[ic]];
     Print[infra];
     FilePrint[ToString[subfolders]<>ToString[ic]<>"_MapsInfo.dat"],
     Print["Something went wrong for int:"<>ToString[ic]],
     Print["If failed!"]
     ];
   ResetDirectory[];

  ];


SetDirectory[main];

(*Module Eva ends*)
]

(************************************************************************)

ParallelizeReturn[ic_,inputints_,subfolders_]:=Module[{infra},
infra=InfraredPart[inputints[[ic]]]; 


If[FreeQ[infra,phi],
ReturnMappedWithout[infra,subfolders,ic];,
ReturnMappedWith[infra,subfolders,ic]];



]






End[]
EndPackage[]
