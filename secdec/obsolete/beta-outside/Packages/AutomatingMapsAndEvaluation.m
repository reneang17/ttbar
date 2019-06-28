(* ::Package:: *)

(****************************************************************************
 *   Automating                                                             *
 *   Last update 8 05 17                                                    *
 ****************************************************************************)


BeginPackage["AutomatingMapsAndEvaluation`", {
  "Symbols`","CountMaps`","SecAndPlus`",
  "SectorsNew`","CubaBongo`","WeightingSubs`"}];


Print["AutomatingMapsAndEvaluation"];



(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)


DirExpandAndWeight::usange=""

VecToString::usage = "Transform vector to string with mappings data"

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
(******************************************************************************)

(******************************************************************************)
  DirExpandAndWeight[aname1_,aname2_]:=Module[{aux1,aux2,ic,jc,initialdir},
  initialdir=Directory[];
  SetDirectory[initialdir<>"/"<>ToString[aname1]];
  aux1=FileNames[ToString[aname2]~~__];
  For[jc=1,jc<=Length[aux1],jc++,

  SetDirectory[initialdir<>"/"<>ToString[aname1]<>"/"<>ToString[aux1[[jc]]]];
  aux2=FileNames[];

  If[
  StringCases[aux2,__~~"_Sec.dat"]=!={} &&
   StringCases[aux2,__~~"_SecMapped.dat"]=!={} &&
    StringCases[aux2,__~~"_Weight.dat"]=!={},
        For[ic=1,ic<=Length[aux2],ic++,

          If[
            StringCases[aux2[[ic]],__~~"_Sec.dat"]=!={},
            ApplyExpandAndWeight[
            StringDrop[aux2[[ic]],-StringLength["_Sec.dat"]]];
            ]
           ],
    Print["Something went wrong on DirExpandAndWeight"]

    ]

  ];
  SetDirectory[initialdir];
  ]
(******************************************************************************)




(******************************************************************************)
ExpandAfterPlusPrescription[inputregints_,con_,CoordsChanged_,WeStored_]:=
Module[{LengthWei=WeStored[[1]],
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
    const1=con * 4^(-2ep); 
    
    simple=inputregintsaux[[ic]];

    simple=simple/.{Int[f_]:>
      Int[GroupLogs[const1*
      (x5*(1-x5))^(-1/2)*(x5*(1-x5))^(-ep)*f]]};
    simple=simple/. {WE0[1,xx__] ->WE0[0,xx, x5],
    WE0[2,xx__,yy_] ->WE0[2,xx, x5,yy]
   };

    expandedints=AlphaEpsilonExpandMod[simple,
    (Gamma[1-ep])^2/Gamma[1-2*ep]/Pi/2,{0,0}];
    ];
(************************)

(************************)
If[LengthWei===2,
    const1=Simplify[con * 4^(-ep) ];
    const2=Simplify[con];
 
    simple=inputregintsaux[[ic]];

    simple={simple/.{WE0[1,xx__]-> const1 WE0[1, xx, x5, 0](x5*(2-x5))^(-ep),
           WE0[2, xx__, yy_]-> const1 WE0[2,xx, x5, 0, yy](x5*(2-x5))^(-ep)},
           simple/.{WE0[1,xx__]->const2*(WE0[3, xx, x5, x6])(x5*(2-x5))^(-ep)*(x6(2-x6))^(-ep),
           WE0[2,xx__,y_]->const2*(WE0[4, xx, x5, x6, yy])(x5*(2-x5))^(-ep)*(x6(2-x6))^(-ep)
}
};

  simple=simple/.{Int[f_]:>Int[GroupLogs[f]]};

    expandedints={AlphaEpsilonExpandMod[simple[[1]],
      Gamma[1-ep]^2/Gamma[1-2*ep]/Pi/2,{0,0}],
    AlphaEpsilonExpandMod[simple[[2]],-ep/Pi,{0,0}]};
];
(************************)


If[Head[expandedints]=!=List,expandedints={expandedints}];

finalints =PrepareIntegralsGeneralProductMod[#]&/@ expandedints;



(************************)
If[LengthWei===1,
    weights[1]=WeStored[[2]]
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



 If[LengthWei===2,
  finalints=IntroWeight2[finalints,WeStored,CoordsChanged];
  ];


finalints=Plus@@ finalints;

(*Print[Cases[{finalints},Int[0,__],-1]];*)
finalints= finalints/.{Int[0,any__]->0};


Ln=Log;Sq=Sqrt;
AppendTo[collectedint,finalints];
Clear[Ln,Sq];



,{ic,1,Length[inputregintsaux]}];

Return[collectedint]
]
(******************************************************************************)




End[]
EndPackage[]
