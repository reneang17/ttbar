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


BeginPackage["CubaBongoDim`", {"Symbols`"}];

(*SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
ResetDirectory[];
*)
(*
 SetDirectory["MCEvaluation"];
Install["Vegas-Mac"]
 Install["Suave-Mac"]
 Install["Divonne-Mac"]
 Install["Cuhre-Mac"]
ResetDirectory[];*)


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
StringCases[aux2[[ic]],__~~"_EW.dat"]=!={},ApplyCUBA[
StringDrop[aux2[[ic]],-StringLength["_EW.dat"]],libCuba,PHname,beta,theta,acu];
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
auxrep={x1->x[1],x2->x[2],x3->x[3],x4->x[4],x5->x[5],x6->x[6]};

ApplySelect[adatafile_]:=
Module[{ListForMC,collectedtotal,collectedint,collectedintsum,finalints,out,
  IntOptions,MCTime,finalexpression,NSec,ic,jc,rc,jr,
  PathMainDir,aux,auxtotal,
  GlobalConsti,
  EvaMath,oap=0,oep=-1},

ListForMC=Read[ToString[adatafile]<>"_EW.dat"];
Close[ToString[adatafile]<>"_EW.dat"];

GlobalConst=Read[ToString[adatafile]<>"_G.dat"];
Close[ToString[adatafile]<>"_G.dat"];

  collectedtotal=Flatten[ListForMC];
  
  PathMainDir=Directory[];

Do[
Do[
If[jc===-1,jr="5",jr=ToString[jc]];
DeleteDirectory[ToString[adatafile]<>"_ap_ep_"<>ToString[ic]<>"_"<>ToString[jr]<>"_C",DeleteContents -> True];
CreateDirectory[ToString[adatafile]<>"_ap_ep_"<>ToString[ic]<>"_"<>ToString[jr]<>"_C"];
,{ic,oap,2}];
,{jc,oep,3}];

 
Do[
Do[

If[jc===-1,jr="5",jr=ToString[jc]];

auxtotal[0]={};
auxtotal[2]={};auxtotal[3]={};
auxtotal[4]={};auxtotal[5]={};
auxtotal[6]={};

SetDirectory["./"<>ToString[adatafile]<>"_ap_ep_"<>ToString[ic]<>"_"<>ToString[jr]<>"_C"];
Do[

aux=(SeriesCoefficient[GlobalConst*collectedtotal[[rc]],{ap,0,-ic},{ep,0,-jc}]) /.Int[ax_,__]:>ax;
aux=Int[aux/.auxrep];

  (* determine integration variables *)
  aux = aux /. Int[f_] :> Int[f, Union[Cases[{f}, x[_], -1]]];

  (* change variable names from x[i] to xi *)
  aux = aux /. Int[f_, vars_] :> (Int[f, vars] /.
    Table[vars[[i]] -> Symbol["x" <> ToString[i]], {i, Length[vars]}]);

  (* add integration ranges *)
  aux = aux /. Int[f_, vars_] :> {f,Length[vars]};
If[aux[[1]]=!=0,
  (*AppendTo[auxtotal[aux[[2]]],aux[[1]]];*)
  Write[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>".dat",aux[[1]]//CForm];
  Close[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>".dat"];

(*  Write[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>"M.dat",aux[[1]]];
  Close[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>"M.dat"];*)
];

,{rc,1,Length[collectedtotal]}];

SetDirectory[PathMainDir];
,{ic,oap,2}];
,{jc,oep,3}];


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
StringCases[aux2[[ic]],_~~"_EW.dat"]=!={},ApplySelect[
StringDrop[aux2[[ic]],-StringLength["_EW.dat"]]];
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
AccuracyGoal -> acu,PrecisionGoal->2];
ListForMC=Read[ToString[adatafile]<>"_EWS.dat"];
Close[ToString[adatafile]<>"_EWS.dat"];

(*
Write[ ToString[adatafile]<>"_C.dat", DeleteCases[ListForMC,0]//CForm ];
Close[ ToString[adatafile]<>"_C.dat"];
*)


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
StringCases[aux2[[ic]],_~~"_EWS.dat"]=!={},ApplyCUBAS[
StringDrop[aux2[[ic]],-StringLength["_EWS.dat"]],libCuba,PHname,beta,theta,acu];
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
