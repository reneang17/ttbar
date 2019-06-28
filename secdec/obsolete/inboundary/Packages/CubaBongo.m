(* ::Package:: *)

(****************************************************************************
 *   Integrating using Cuba library                                        *
 *                                                                          *
 ****************************************************************************)

 (******************************************************************************
  *                                                                            *
  * List of updates                                                            *
  *                                                                            *
  ******************************************************************************)


BeginPackage["CubaBongo`", {"Symbols`"}];

SetDirectory["MCEvaluation"];
 Install["Vegas-Mac"]
 Install["Suave-Mac"]
 Install["Divonne-Mac"]
 Install["Cuhre-Mac"]
ResetDirectory[];


Print["CubaBongo"];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)


ApplyCUBA::usage = ""

DirCUBA::usage = ""
DirSelect::usage = ""
DirCUBAS::usage = ""

ExtractResult::usage = "Print the sum of integrals computed"

ExtractResultCUBAS::usage = "Print the sum of integrals computed"

Begin["`Private`"]



(******************************************************************************
 *                                                                            *
 * Applies CUBA (suave) to a folder with integrals after SecDec.             *
 *                                                                            *
 ******************************************************************************)

(*Read adatafile_Sec.dat, and applies CUBA with relative and absolute accuracy acu.
Then creates files with time expended, adatafile_MCT.dat,
and a file the result, adatafile_MC. dat.*)

ApplyCUBA[adatafile_,libCuba_,PHname_,beta_,theta_,acu_]:=
Module[{ListForMC,collectedtotal,collectedint,collectedintsum,finalints,out,
  IntOptions,MCTime,finalexpression},

IntOptions=Sequence[Verbose-> 0,NStart -> 10000, MaxPoints-> 1000000000,
AccuracyGoal->acu];
ListForMC=Read[ToString[adatafile]<>"_EW.dat"];
Close[ToString[adatafile]<>"_EW.dat"];
MCTime=Timing[
collectedtotal={};
Do[
collectedintsum={};
Do[
collectedint={};
Do[
finalints =ListForMC[[jc]][[NSec]][[i]]/.{CT->Cos[theta],ST->Sin[theta],
be->beta};
If[finalints===0,out={{0,0,0}},out=finalints/.Int[f_, vars__]:>libCuba[f,vars,
IntOptions]];

AppendTo[collectedint,out];
,{i,1,Length[ListForMC[[jc]][[NSec]]]}];
AppendTo[collectedintsum,{Plus@@collectedint[[All,1,1]]
+ Er Plus@@collectedint[[All,1,2]]}];
,{NSec,1,Length[ListForMC[[jc]]]}]
Print["Int ",jc," has been evaluated"];
AppendTo[collectedtotal,Plus@@collectedintsum];
,{jc,1,Length[ListForMC]}];
finalexpression=Plus@@collectedtotal//Simplify;
Print[finalexpression];
Write[ ToString[adatafile]<>ToString[PHname]<>"_MC.dat",finalexpression];
Close[ ToString[adatafile]<>ToString[PHname]<>"_MC.dat"];
];
Write[ ToString[adatafile]<>ToString[PHname]<>"_MCT.dat",MCTime];
Close[ ToString[adatafile]<>ToString[PHname]<>"_MCT.dat"];
]

(*Applies Cuba to a folder, aname1, with folders and files called aname2 *)

DirCUBA[libCuba_,aname1_,aname2_,PHname_,beta_,theta_,acu_]:=Module[{aux1,aux2,ic,jc,initialdir},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1=FileNames[ToString[aname2]~~__];
For[jc=1,jc<=Length[aux1],jc++,
SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
aux2=FileNames[];
For[ic=1,ic<=Length[aux2],ic++,
If[
StringContainsQ[aux2[[ic]],__~~"_EW.dat"~~EndOfString],ApplyCUBA[
StringDelete[aux2[[ic]],"_EW.dat"],libCuba,PHname,beta,theta,acu];
]
];
];
SetDirectory[initialdir];
]

(******************************************************************************
 *                                                                            *
 * Selects some poles                                                         *
 *                                                                            *
 ******************************************************************************)


ApplySelect[adatafile_]:=
Module[{ListForMC,collectedtotal,collectedint,collectedintsum,finalints,out,
  IntOptions,MCTime,finalexpression,jc,NSec,ic,
  PathMainDir,aux,auxtotal,
  GlobalConst},

ListForMC=Read[ToString[adatafile]<>"_EW.dat"];
Close[ToString[adatafile]<>"_EW.dat"];

GlobalConst=Read[ToString[adatafile]<>"_G.dat"];
Close[ToString[adatafile]<>"_G.dat"];

  collectedtotal={};
  Do[
  collectedintsum={};
  Do[
  collectedint={};
  Do[

finalints=ListForMC[[jc]][[NSec]][[ic]];

  AppendTo[collectedint,finalints];
  ,{ic,1,Length[ListForMC[[jc]][[NSec]]]}];
  AppendTo[collectedintsum,collectedint];
  ,{NSec,1,Length[ListForMC[[jc]]]}]
  AppendTo[collectedtotal,collectedintsum];
  ,{jc,1,Length[ListForMC]}];

  PathMainDir=Directory[];

  auxtotal= Plus @@(collectedtotal//Flatten);

(*
  Write[ToString[adatafile]<>"_EWS.dat",{
Coefficient[Coefficient[GlobalConst * auxtotal ,ep,0],ap,0],
1/ep*Coefficient[Coefficient[GlobalConst * auxtotal ,ep,-1],ap,0],
1/ap*Coefficient[Coefficient[GlobalConst * auxtotal ,ep,0],ap,-1],
1/ap/ep*Coefficient[Coefficient[GlobalConst * auxtotal ,ep,-1],ap,-1]
}];
  Close[ToString[adatafile]<>"_EWS.dat"];*)

  auxtotal=auxtotal/.{Int[ax_,bx__]:>Int[ax]};

Do[
Do[



aux ={ Coefficient[Coefficient[GlobalConst*auxtotal,ap,-rc],ep,-sc] /.{Int[ax_]:>ax}};

CreateDirectory[ToString[adatafile]<>"_ap_ep_"<>ToString[rc]<>"_"<>ToString[sc]<>"_C"];

            If[aux=!={},
              SetDirectory[PathMainDir<>"/"<>
              ToString[adatafile]<>"_ap_ep_"<>ToString[rc]<>"_"<>ToString[sc]<>"_C"];
              Do[
              Write[ToString[adatafile]<>"_"<>ToString[kc]<>".dat",aux[[kc]]
               //CForm
               ];
              Close[ToString[adatafile]<>"_"<>ToString[kc]<>".dat"];


              ,{kc,1,Length[aux]}];
              SetDirectory[PathMainDir];
              ];

   ,{rc,0,2}];
,{sc,0,3}];

]


DirSelect[aname1_,aname2_]:=Module[{aux1,aux2,ic,jc,initialdir},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1=FileNames[ToString[aname2]~~__];
For[jc=1,jc<=Length[aux1],jc++,
SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
aux2=FileNames[];
For[ic=1,ic<=Length[aux2],ic++,
If[
StringContainsQ[aux2[[ic]],__~~"_EW.dat"~~EndOfString],ApplySelect[
StringDelete[aux2[[ic]],"_EW.dat"]];
,"Missing file while applying DirSelect"]
];
];
SetDirectory[initialdir];
]

(******************************************************************************
 *                                                                            *
 * Applies CUBA to selected problems                                           *
 *                                                                            *
 ******************************************************************************)


ApplyCUBAS[adatafile_,libCuba_,PHname_,beta_,theta_,acu_]:=
Module[{ListForMC,collectedtotal,collectedint,collectedintsum,finalints,out,
  IntOptions,MCTime,finalexpression,collectedtotalE,collectedintsumE,
  GlobalConst},

IntOptions=Sequence[Verbose -> 0, MaxPoints -> 1000000000,
AccuracyGoal -> acu];
ListForMC=Read[ToString[adatafile]<>"_EWS.dat"];
Close[ToString[adatafile]<>"_EWS.dat"];


Write[ ToString[adatafile]<>"_C.dat", DeleteCases[ListForMC,0]//CForm ];
Close[ ToString[adatafile]<>"_C.dat"];



MCTime=Timing[
collectedtotal={};
collectedtotalE={};
Do[

finalints =ListForMC[[jc]]  /.{CT->Cos[theta],ST->Sin[theta],
be->beta};
If[finalints===0,out={{0,0,0}},out=finalints/.Int[f_, vars__]:>libCuba[f,vars,
IntOptions]];

AppendTo[collectedtotal,out[[1]][[1]]+out[[1]][[2]] Er]
AppendTo[collectedtotalE,out];

,{jc,1,Length[ListForMC]}];
finalexpression=Plus@@ collectedtotal;

Print[finalexpression];
Write[ ToString[adatafile]<>ToString[PHname]<>"_MCS.dat",finalexpression];
Close[ ToString[adatafile]<>ToString[PHname]<>"_MCS.dat"];
Write[ ToString[adatafile]<>ToString[PHname]<>"_MCE.dat",collectedtotalE];
Close[ ToString[adatafile]<>ToString[PHname]<>"_MCE.dat"];
];

]

(*Applies Cuba to a folder, aname1, with folders and files called aname2 *)

DirCUBAS[libCuba_,aname1_,aname2_,PHname_,beta_,theta_,acu_]:=Module[{aux1,aux2,ic,jc,initialdir},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1=FileNames[ToString[aname2]~~__];
For[jc=1,jc<=Length[aux1],jc++,
SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
aux2=FileNames[];
For[ic=1,ic<=Length[aux2],ic++,
If[
StringContainsQ[aux2[[ic]],__~~"_EWS.dat"~~EndOfString],ApplyCUBAS[
StringDelete[aux2[[ic]],"_EWS.dat"],libCuba,PHname,beta,theta,acu];
]
];
];
SetDirectory[initialdir];
]


ExtractResultCUBAS[aname1_,aname2_,PHname_]:=Module[{auxsave,aux1,initialdir,ic,jc},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1=Sort[FileNames[ToString[aname2]~~__]];
CPrint[aux1];


For[jc=1,jc<=Length[aux1],jc++,
  SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
      auxsave[jc]= Read[ToString[aux1[[jc]]]<>ToString[PHname]<>"_MCS.dat"];
      Close[ToString[aux1[[jc]]]<>ToString[PHname]<>"_MCS.dat"];

  ];
Print[Plus@@Table[auxsave[ic],{ic,Length[aux1]}]];

SetDirectory[initialdir];
]

ExtractResult[aname1_,aname2_,PHname_]:=Module[{auxsave,aux1,initialdir,ic,jc},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1=Sort[FileNames[ToString[aname2]~~__]];
Print[aux1];


For[jc=1,jc<=Length[aux1],jc++,
  SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
      auxsave[jc]= Read[ToString[aux1[[jc]]]<>ToString[PHname]<>"_MC.dat"];
      Close[ToString[aux1[[jc]]]<>ToString[PHname]<>"_MC.dat"];

  ];
Print[Table[auxsave[ic],{ic,Length[aux1]}]];
SetDirectory[initialdir];
]


End[]
EndPackage[]
