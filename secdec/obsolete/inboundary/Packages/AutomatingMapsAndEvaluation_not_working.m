(* ::Package:: *)

(****************************************************************************
 *   Automating                                                             *
 *   Last update 8 05 17                                                    *
 ****************************************************************************)

 (******************************************************************************
  *                                                                            *
  * List of updates                                                            *
  *                                                                            *
  * - Reduce the number of splittings when divs only occur                     *
  *   when kp,lp->0 and kp,lp->infty. Presicely, Testx[] was modified. 8 4 17  *
  * - Reinforce Sq to [Sqrt  (May 31)                                          *
  *  - int[args] add int[args_, {x[1], x[2], x[3], x[4]}]                      *
  * - Introducing Weight variable in function ApplySectors                     *
  * - RegSwitch update from MinMaps implemented                                *
  ******************************************************************************)


BeginPackage["AutomatingMapsAndEvaluation`", {"Symbols`",
"SectorsNew`","CubaBongo`","WeightingSubs`"}];


Print["AutomatingMapsAndEvaluation"];
Print["Beta version 26 Jun 17"];
Print["by R. Angeles, M. Czakon & S. Sapeta"];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



ApplySectors::usage = ""
DirSec::usage = ""

DirExpandAndWeight::usange=""
VecToString::usage = "Function that transform vector to string"


Begin["`Private`"]


(******************************************************************************
 *                                                                            *
 * Applies SecDeCWithGlogs to a list of mapped integrals                     *
 *                                                                            *
 ******************************************************************************)

(*Read adatafile, and applies it Sector decomposition. Then creates files *
*  with time expended, adatafile_SecT.dat, and a file with each integral  *
*  resulting from applying the plus prescription to each regime,          *
*  adatafile_SecT.dat.                                                    *)

(*********************************************************************)

ApplyExpandAndWeight[adatafile_]:=
  Module[{
   intlist,conchangelist,integral,con,
   sectors,CoordsChanged,
   collectedtotal,collectedintsum,
   EWTime,NSec,jc,kc},

   WeStored=Read[ToString[adatafile]<>"_Weight.dat"];
   Close[ToString[adatafile]<>"_Weight.dat"];

   intlist=Read[ToString[adatafile]<>"_Sec.dat"];
   Close[ToString[adatafile]<>"_Sec.dat"];

  conchangelist=Read[ToString[adatafile]<>"_SecMapped.dat"];
  Close[ToString[adatafile]<>"_SecMapped.dat"];

  collectedtotal={};

  EWTime=Timing[

  Do[
  collectedintsum={};
  con=conchangelist[[All,1]];
  CoordsChanged=conchangelist[[All,2]];
Print["sectors",Length[intlist[[jc]]]];
    Do[
Print["regints",Length[intlist[[jc]][[NSec]]]];
    AppendTo[collectedintsum,
    ExpandAfterPlusPrescription[intlist[[jc]][[NSec]],
    con[[jc]],CoordsChanged[[jc]][[NSec]],
    WeStored]
            ];
    ,{NSec,1,Length[intlist[[jc]]]}]

    AppendTo[collectedtotal,collectedintsum];
  ,{jc,1,Length[intlist]}];

  Write[ToString[adatafile]<>"_EW.dat",collectedtotal];
  Close[ToString[adatafile]<>"_EW.dat"];

  ];
  Write[ToString[adatafile]<>"_EWT.dat",EWTime];
  Close[ToString[adatafile]<>"_EWT.dat"];

  ]



  DirExpandAndWeight[aname1_,aname2_]:=Module[{aux1,aux2,ic,jc,initialdir},
  initialdir=Directory[];
  SetDirectory[initialdir<>"/"<>ToString[aname1]];
  aux1=FileNames[ToString[aname2]~~__];
  For[jc=1,jc<=Length[aux1],jc++,

  SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
  aux2=FileNames[];

  If[
  Cases[StringContainsQ[aux2,__~~"_Sec.dat"~~EndOfString]
   ,True,-1]=!={} &&
   Cases[StringContainsQ[aux2,__~~"_SecMapped.dat"~~EndOfString]
    ,True,-1]=!={} &&
    Cases[StringContainsQ[aux2,__~~"_Weight.dat"~~EndOfString]
     ,True,-1]=!={},
        For[ic=1,ic<=Length[aux2],ic++,

          If[
            StringContainsQ[aux2[[ic]],__~~"_Sec.dat"~~EndOfString],
            ApplyExpandAndWeight[
            StringDelete[aux2[[ic]],"_Sec.dat"]];
            ]
           ],
    Print["Something went wrong on DirExpandAndWeight"]

    ]

  ];
  SetDirectory[initialdir];
  ]






ExpandAfterPlusPrescription[inputregints_,con_,CoordsChanged_,WeStored_]:=
Module[{LengthWei=Length[WeStored],
  collectedint,
  inputregintsaux,simple,finite,weights,
  expandedints,finalints,const1,const2,ic,lc,Waux,WauxList,minW,
  y1,y2,y3,y4,y5,y6,
  auxrepl},

inputregintsaux=inputregints;
auxrepl={spU[{arg1_, arg2_}] :> arg1 . arg2};

If[Head[inputregintsaux]===Int,inputregintsaux={inputregintsaux};];
collectedint={};

Do[

(************************)
  If[LengthWei===1,
    const1=con * 4^(-2ep) 2^(+1 + 2 ep);
    (*New line delete and uncooment if it causes problems
    simple=ListWI[inputregintsaux[[ic]]];*)
    simple=inputregintsaux[[ic]];

    simple=simple/.{Int[f_]:>
      Int[GroupLogs[const1*
      (-(-2 + x5) x5)^(-1/2-ep)*f]]};
    simple=simple/. {WE0[1,xx__] ->WE0[0,xx, x5],
    WE0[2,xx__,yy_] ->WE0[2,xx, x5,yy]
   };
  CPrint[ic,"No-problemo1"];
    expandedints=AlphaEpsilonExpandMod[simple,
    (Gamma[1-ep])^2/Gamma[1-2*ep]/Pi,{0,0}];
    ];
(************************)

(************************)
If[LengthWei===2,
    const1=Simplify[con *  4^(-2ep) 2^(1 + 2 ep) ];
    const2=Simplify[con *  4^(-ep) 2^(1 + 2 ep) ];

    (*New line delete and uncooment if it causes problems
    simple=ListWI[inputregintsaux[[ic]]];*)
    simple=inputregintsaux[[ic]];

    simple={simple/.{WE0[1,xx__]-> const1 WE0[1,xx](-(-2 + x5) x5)^(-1/2-ep),
           WE0[2,xx__]-> const1 WE0[2,xx] * (-(-2 + x5) x5)^(-1/2-ep) }
,simple/.{WE0[1,xx__]->const2*WE0[3,xx]*(-(-2 + x5) x5)^(-1/2-ep)*(x6(2-x6))^(-ep),
WE0[2,xx__]->const2*WE0[4,xx]*(-(-2 + x5) x5)^(-1/2-ep)*(x6(2-x6))^(-ep)
}
};

  simple=simple/.{Int[f_]:>Int[GroupLogs[f]]};

   simple={(simple[[1]]/.{WE0[1,xx__] ->WE0[1,xx, x5, 0],
   WE0[2,xx__,yy_] ->WE0[2,xx, x5, 0,yy] }),
   (simple[[2]] /. {WE0[3,xx__] ->WE0[3,xx, x5, x6],
   WE0[4,xx__,yy_] ->WE0[4,xx, x5, x6,yy] })};

    expandedints={AlphaEpsilonExpandMod[simple[[1]],
      Gamma[1-ep]^2/Gamma[1-2*ep]/Pi/2,{0,0}],
    AlphaEpsilonExpandMod[simple[[2]],-ep/Pi,{0,0}]};
];
(************************)




If[Length[expandedints]===2,expandedints=Plus@@expandedints];

finalints =PrepareIntegralsGeneralProductMod[expandedints];



(************************)
If[LengthWei===1,
    weights[1]=WeStored[[1]]
    /.{kp:>CoordsChanged[[1]],lp:>CoordsChanged[[2]],
    kT:>CoordsChanged[[3]],lT:>CoordsChanged[[4]]}//Simplify;



    Waux1[y1_,y2_,y3_,y4_,y5_]:=(weights[1])/.{x[1]->y1,x[2]->y2,x[3]->y3,
      x[4]->y4,x[5]->y5};

    minW= {WE0[0,xx__] :>
    (((Waux1[xx])/.{dx->0}) /.auxrepl) };
  finalints = finalints /. Int[f1_,f2__] :> Int[f1,f2, Union[Cases[{f1}, WE0[x__], -1]]];
  finalints = finalints /. Int[f1_,f2__, vars_] :> (Int[f1,f2] /.
      Table[vars[[i]] -> (vars[[i]]/.minW) , {i, Length[vars]}]);

  ];
  (************************)

CPrint[finalints];

 If[LengthWei===2,
  finalints=IntroWeight2[finalints,WeStored,CoordsChanged];
  ];

Print[Cases[{finalints},Int[0,__],-1]];
finalints= finalints/.{Int[0,any__]->0};


Ln=Log;Sq=Sqrt;
AppendTo[collectedint,finalints];
Clear[Ln,Sq];

CPrint[finalints];

,{ic,1,Length[inputregintsaux]}];

Return[collectedint]
]

(*****************************)

(*Function to change x[i]->x<>i*)
ListWI[inputint_] :=
  Module[{temp},
   temp = inputint/. Int[f1_] :> Int[f1, Union[Cases[{f1}, x[_], -1]]];
   temp = temp /. Int[f1_, vars_] :> (Int[f1] /.
     Table[vars[[i]] -> Symbol["x" <> ToString[i]], {i, Length[vars]}]);
   Return[temp]];



(*****************************)




(*********************************************************************)
(*********************************************************************)


(*********************************************************************)
(*********************************************************************)


ApplySectors[adatafile_]:=
Module[{
 int0,intlist,integral,con,SecMapslist,
 sectors,SecChangeVars,regints,CoordsChanged,
 collectedtotal,collectedintsum,
 collectedtotalSM,collectedChanged,
 SecDecTime,NSec,jc,kc},

intlist=Read[ToString[adatafile]<>".dat"];
Close[ToString[adatafile]<>".dat"];

SecMapslist=Read[ToString[adatafile]<>"_MapsToCV.dat"];
Close[ToString[adatafile]<>"_MapsToCV.dat"];

collectedtotal={};
collectedtotalSM={};
collectcon={};
SecDecTime=Timing[

Do[
int0=Cases[intlist[[jc]],pow[ia_,ja_]-> {ia,ja}];

(*Introduce aux varibles*)
integral=Int[1,int0[[All,1]],int0[[All,2]], {x[1], x[2], x[3], x[4]}];

sectors=SectorDecomposeGeneralProduct[integral];

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
  {Derivative[der__][WE0][x__]:>
    WE0[2,x,{der}],WE0[x__]:>WE0[1,x]};

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


(*Applies ApplySectors to a folder, aname1, with folders and files
  called aname2 *)


DirSec[aname1_,aname2_]:=Module[{aux1folder,aux2file,
  aux3Maps,inputMaps,ic,jc,initialdir},
initialdir=Directory[];
SetDirectory[initialdir<>"/"<>ToString[aname1]];
aux1folder=FileNames[ToString[aname2]~~__];

For[jc=1,jc<=Length[aux1folder],jc++,
SetDirectory[initialdir<>"/"<>
ToString[aname1]<>"/"<>ToString[aux1folder[[jc]]]];
aux2file=FileNames[];


(*New: Extract Mappings*)
aux3Maps=Flatten[StringCases[aux2file,__~~"_Maps.dat"~~EndOfString]][[1]];
inputMaps=Read[aux3Maps];Close[aux3Maps];
(*New Ends*)


For[ic=1,ic<=Length[aux2file],ic++,
If[
StringFreeQ[aux2file[[ic]],"_"],
CopyFile[initialdir<>"/Packages/CoordsMapped"<>ToString[inputMaps[[1]][[1]]]
<>"/Maps"<>VecToString[inputMaps[[2]]]<>".dat",
StringDelete[aux2file[[ic]],".dat"]<>"_MapsToCV.dat"];
ApplySectors[StringDelete[aux2file[[ic]],".dat"]]
  ]
   ];
];
SetDirectory[initialdir];
]


End[]
EndPackage[]
