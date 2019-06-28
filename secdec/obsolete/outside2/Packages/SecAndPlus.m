(* ::Package:: *)

(****************************************************************************
 *   Apply Sectors Module to get Sectors and Main Modules                     *
 *   Created update 3 08 17                                                   *
 ****************************************************************************)




BeginPackage["SecAndPlus`", {
  "Symbols`","Sectors`"}];


Print["SecAndPlus"];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



ApplySectors::usage = ""
DirSec::usage = "DirSec[main,int], opens main, and applies Sectors to the int's folders, creating two files
inti_Sec.dat and inti_SecMapped.dat, see Documentation.nb "



plusS::usage = ""
minusS::usage = ""
withP::usage = ""
withoutP::usage = ""


VecToString::usage = "Function that transform vector to string"

Begin["`Private`"]


(*********************************************************************)
(*********************************************************************)



(*****************************)
PowsToInt[input_]:=Module[{tempvar},
tempvar=Cases[input,pow[ia_,ja_]-> {ia,ja}];
Return[Int[1,tempvar[[All,1]],tempvar[[All,2]], {x[1], x[2], x[3], x[4]}]];
]
(*****************************)

ApplySectors[adatafile_]:=
Module[{
 int0,intlist,integral,con,SecMapslist,
 sectors,SecChangeVars,regints,CoordsChanged,
 collectedtotal,collectedintsum,
 collectedtotalSM,collectedChanged,
 SecDecTime,NSec,jc,kc},

intlist=Read[ToString[adatafile]<>"_Infra.dat"];
Close[ToString[adatafile]<>"_Infra.dat"];

SecMapslist=Read[ToString[adatafile]<>"_MapsToCV.dat"];
Close[ToString[adatafile]<>"_MapsToCV.dat"];

collectedtotal={};
collectedtotalSM={};
collectcon={};
SecDecTime=Timing[

Do[
(*
int0=Cases[intlist[[jc]],pow[ia_,ja_]-> {ia,ja}];

(*Introduce aux varibles*)
integral=Int[1,int0[[All,1]],int0[[All,2]], {x[1], x[2], x[3], x[4]}];

*)

sectors=SectorDecomposeGeneralProduct[PowsToInt[intlist[[jc]]] ];

SecChangeVars = sectors /. Int[__,z_] :> z;
CPrint[SecChangeVars];

con=(intlist[[jc]]/.pow[ia_,ja_]-> 1)/.{const[a_]->a}//Simplify;

(*Introducing Weight! *)
sectors = sectors /. Int[z__, _] :> Int[z, WE0[x[1],x[2],x[3],x[4]]];

Print["sectors",Length[sectors]];
collectedintsum={};
collectedChanged={};
Do[

CoordsChanged= SecMapslist[[jc]]/.
{x[1]:>SecChangeVars[[NSec]][[1]],
x[2]:>SecChangeVars[[NSec]][[2]],
x[3]:>SecChangeVars[[NSec]][[3]],
x[4]:>SecChangeVars[[NSec]][[4]]};

CPrint[CoordsChanged];

regints=RegularizeGeneralProduct[sectors[[NSec]]];

regints=regints/.
  {WE0[x__]:>WE0[1,x]};

regints=regints//.
{WE0[x___, y_, z___]/;(y === 0):> WE0[x,dx, z]};

(*New line delete if it causes problems*)
regints=ListWI[regints];


Print[Length[regints]];

AppendTo[collectedintsum,
regints
(*ExpandAfterPlusPrescription[regints,con,adatafile,CoordsChanged];*)
        ];
AppendTo[collectedChanged,CoordsChanged];
,{NSec,1,Length[sectors]}]
AppendTo[collectedtotal,collectedintsum];
AppendTo[collectedtotalSM,{con,collectedChanged}];
,{jc,1,Length[intlist]}];

Write[ToString[adatafile]<>"_Sec.dat",collectedtotal];
Close[ToString[adatafile]<>"_Sec.dat"];

Write[ToString[adatafile]<>"_SecMapped.dat",collectedtotalSM];
Close[ToString[adatafile]<>"_SecMapped.dat"];

];
Write[ToString[adatafile]<>"_SecT.dat",SecDecTime];
Close[ToString[adatafile]<>"_SecT.dat"];

]


(*********************************************************************)

(*VecToString is used to read vector in ~~Maps.dat file *)
(*{a,b,...,z} to string: _a_b_ ... _z_*)

VecToString[inputvec_]:= Module[{output,ic},
  output = ToString[_];
  For[ic = 1, ic < Length[inputvec] + 1, ic++ ,
   output = ToString[output] <> ToString[inputvec[[ic]]] <> ToString[_]
    ];
  Return[output]
  ]

(*********************************************************************)



(*****************************)
(*Function to change x[i]->x<>i*)
ListWI[inputint_] :=
  Module[{temp},
   temp = inputint/. Int[f1_] :> Int[f1, Union[Cases[{f1}, x[_], -1]]];

   temp = temp /. Int[f1_, vars_] :> (Int[f1] /.
     Table[vars[[i]] -> Symbol["x" <> ToString[i]], {i, Length[vars]}]);

   Return[temp]];

(*****************************)





(*Applies ApplySectors to a folder, aname1, with folders and files
  called aname2 *)


DirSec[aname1_,aname2_]:=Module[{aux1folder,aux2file,
  aux3Maps,inputMaps,ic,jc,initialdir},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1folder=FileNames[ToString[aname2]~~__];

For[jc=1,jc<=Length[aux1folder],jc++,
SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1folder[[jc]]]];
Print["Processing "<>ToString[Directory[]]];
aux2file=FileNames[];


aux3Maps=ToString[aux1folder[[jc]]]<>"_MapsInfo.dat";
If[
  StringCases[aux2file,aux3Maps]=!={},
  inputMaps=Read[aux3Maps];
  Close[aux3Maps];
  Print[ToString[aux3Maps]<>" exists"],
  Print[aux3Maps<>" is missing"],
  Print["If failed?!"];
  ]; 

Clear[aux3Maps];
aux3Maps=ToString[aux1folder[[jc]]]<>"_Infra.dat";
If[
   StringCases[aux2file,aux3Maps]=!={},
   CopyFile[initialdir<>"/Packages/CoordsMapped"<>ToString[inputMaps[[1]][[1]]]
   <>"/Maps"<>VecToString[inputMaps[[2]]]<>".dat",
   StringDrop[aux3Maps,-StringLength["_Infra.dat"]]<>"_MapsToCV.dat"];
   ApplySectors[StringDrop[aux3Maps,-StringLength["_Infra.dat"]]],
   Print[aux3Maps<>" is missing"],
   Print["If failed inside DirSec!"];
  ]


];
SetDirectory[initialdir];
]



End[]
EndPackage[]
