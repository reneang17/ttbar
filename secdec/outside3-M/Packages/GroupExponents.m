(* ::Package:: *)

(****************************************************************************
 *   Automating                                                             *
 *   Last update 8 05 17                                                    *
 ****************************************************************************)


BeginPackage["GroupExponents`", {
  "Symbols`","Sectors`","WeightSubs`"}];


Print["GroupExponents"];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)


DirGroupExponents::usange=""


Begin["`Private`"]


(******************************************************************************
 *                                                                            *
 * Applies SecDeCWithGlogs to a list of mapped integrals                     *
 *                                                                            *
 ******************************************************************************)

(* Read adatafile, and applies it Sector decomposition. Then creates files *
*  with time expended, adatafile_SecT.dat, and a file with each integral  *
*  resulting from applying the plus prescription to each regime,          *
*  adatafile_SecT.dat.                                                    *)

(*********************************************************************)

(******************************************************************************)
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

  Write[ToString[adatafile]<>"_Grouped.dat",collectedtotal];
  Close[ToString[adatafile]<>"_Grouped.dat"];


  ]
(******************************************************************************)

(******************************************************************************)
  DirGroupExponents[aname1_,aname2_]:=Module[{aux1,aux2,ic,jc,initialdir},
  initialdir=Directory[];
  SetDirectory[initialdir<>"/"<>ToString[aname1]];
  aux1=FileNames[ToString[aname2]~~__];
  For[jc=1,jc<=Length[aux1],jc++,

  SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
  aux2=FileNames[];

  If[
     StringCases[aux2,ToString[aux1[[jc]]]<>"_Sec.dat"]=!={} &&
     StringCases[aux2,ToString[aux1[[jc]]]<>"_SecMapped.dat"]=!={} &&
     StringCases[aux2,ToString[aux1[[jc]]]<>"_Weight.dat"]=!={},
       ApplyExpandAndWeight[ToString[aux1[[jc]]]],
       Print["Something went wrong on DirExpandAndWeight"]

    ];

  ];
  SetDirectory[initialdir];
  ]
(******************************************************************************)




(******************************************************************************)
ExpandAfterPlusPrescription[inputregints_,con_,CoordsChanged_,WeStored_]:=
Module[{LengthWei=WeStored[[1]],
  collectedint,
  inputregintsaux,simple,weights,
  expandedints,finalints,const1,const2,ic,lc,WauxF,minW,
  y1,y2,y3,y4,y5,y6,
  auxrepl,
  EpAzimuth=(Gamma[1-ep])^2/Gamma[1-2*ep]/2},

inputregintsaux=inputregints;
auxrepl={spU[{arg1_, arg2_}] :> arg1 . arg2};

If[Head[inputregintsaux]===Int,inputregintsaux={inputregintsaux};];
collectedint={};

Do[

(************************)
  If[LengthWei===1,
    const1=con * 4^(-ep);

    simple=inputregintsaux[[ic]];

    simple=simple/.{Int[f_]:>
      Int[GroupLogs[const1*
     (ST5)^(-ep)*f]]};
    simple=simple/. {WE0[1,xx__] ->WE0[0,xx, x5],
    WE0[2,xx__,yy_] ->WE0[2,xx, x5,yy]
   };

];
(************************)

(************************)
If[LengthWei===2,
    const1=Simplify[con *  4^(-ep) ];
    const2=Simplify[con    ];

    (*New line delete and uncooment if it causes problems
    simple=ListWI[inputregintsaux[[ic]]];*)
    simple=inputregintsaux[[ic]];

    simple={simple/.{WE0[1,xx__]-> const1 WE0[1, xx, x5, 0](ST5)^(-ep)},
            simple/.{WE0[1,xx__]->const2*(WE0[3, xx, x5, x6])(ST5)^(-ep)*(x6(2-x6))^(-ep)}
	   };

  simple=simple/.{Int[f_]:>Int[GroupLogs[f]]};

];
(************************)



AppendTo[collectedint,simple];
Clear[Ln,Sq];



,{ic,1,Length[inputregintsaux]}];

Return[collectedint]

]
(******************************************************************************)




End[]
EndPackage[]
