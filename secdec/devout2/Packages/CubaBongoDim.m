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



Print["CubaBongo"];


(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

DirSelect::usage = ""



Begin["`Private`"]


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

  Print[collectedtotal];
  
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
    Write[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>".dat",aux[[1]]//CForm]
  Close[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>".dat"];

 Write[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>"M.dat",aux[[1]]];
  Close[ToString[adatafile]<>"_"<>ToString[rc]<>"_"<>ToString[aux[[2]]]<>"M.dat"];
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



End[]
EndPackage[]
