(* ::Package:: *)

(************************************************************************************************
 *   Generates the (kp,lp,kT,lT) coordinates Mapped into a maximal number of hypercubes         *
 *   Later these are used while power pounting tools are invoked.                               *
 *                                                                                              *
 ************************************************************************************************)

BeginPackage["GenCoords`", {"Mappings`","Symbols`"}];

Print["GenCoords"];


 (******************************************************************************
  *      List of updates                                                       *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *****************************************************************************)



(******************************************************************************
 *                                                                            *
 * Public.                                                                    *
 *                                                                            *
 ******************************************************************************)


Begin["`Private`"]


storingdir="coords2";
maindir=Directory[];
CreateDirectory[maindir<>"/"<>ToString[storingdir]];
SetDirectory[maindir<>"/"<>ToString[storingdir]];


 (******************************************************************************
  *                                                                            *
  * Case without exact gluon prop.                                              *
  *                                                                            *
  ******************************************************************************) 

 MapsForPowerCountingWithout[kp, kpcoord];
 MapsForPowerCountingWithout[lp, lpcoord];
 MapsForPowerCountingWithout[kT, kTcoord];
 MapsForPowerCountingWithout[lT, lTcoord];
 MapsForPowerCountingWithout[1, jacobiansWO];


SelectSplittingsWO[n0_,ny_,nx_,input_]:=Cases[input,{a_,n0,ny,nx}:>a][[1]]
ListofCoordsMappedWO[input_]:=Block[{coleccion,n0,n2,n3},
coleccion[0]={};
For[n0=0,n0<2,n0++,
coleccion[2]={};
For[n2=0,n2<2,n2++,
coleccion[3]={};
For[n3=0,n3<2,n3++,
AppendTo[coleccion[3],SelectSplittingsWO[n0,n2,n3,ToExpression[ToString[input]<>ToString[coord[0]]] ]/SelectSplittingsWO[n0,n2,n3,jacobiansWO[0]] //Simplify]
]
AppendTo[coleccion[2],coleccion[3]]
]
AppendTo[coleccion[0],coleccion[2]]
];
Return[coleccion[0]]
]


listWO[a_]:=Block[{},Write[ToString[a]<>"listWO.dat",ListofCoordsMappedWO[a]];
Close[ToString[a]<>"listWO.dat"];]
 
                                    listWO[kT];
                                    listWO[lT];
                                    listWO[kp];
                                    listWO[lp];

Print["Success"];



 (******************************************************************************
  *                                                                            *
  * Case without exact gluon prop.                                              *
  *                                                                            *
  ******************************************************************************) 


                                    MapsForPowerCountingWith[kp,kpcoord];
                                    MapsForPowerCountingWith[lp,lpcoord];
                                    MapsForPowerCountingWith[kT,kTcoord];
                                    MapsForPowerCountingWith[lT,lTcoord];
                                    MapsForPowerCountingWith[1,jacobiansW];


SelectSplittingsW[n0_,nyT_,ny_,nx_,input_]:=Cases[input,{a_,n0,nyT,ny,nx}:>a][[1]]


ListofCoordsMappedW[input_]:=Block[{aux,coleccion,n0,n1,n2,n3},
coleccion[0]={};
For[n0=0,n0<2,n0++,
coleccion[1]={};
For[n1=0,n1<2,n1++,
coleccion[2]={};
For[n2=0,n2<2,n2++,
coleccion[3]={};
For[n3=0,n3<2,n3++,
AppendTo[coleccion[3],

SelectSplittingsW[n0,n1,n2,n3,
ToExpression[ToString[input]<>ToString[coord[0]]]]
/SelectSplittingsW[n0,n1,n2,n3,jacobiansW[0]] 
//Simplify

]
]
AppendTo[coleccion[2],coleccion[3]]
]
AppendTo[coleccion[1],coleccion[2]]
]
AppendTo[coleccion[0],coleccion[1]]
];
Return[coleccion[0]]
]


listW[a_]:=Block[{},Write[ToString[a]<>"listW.dat",ListofCoordsMappedW[a]];
Close[ToString[a]<>"listW.dat"];]


                                    listW[kT];
                                    listW[lT];
                                    listW[kp];
                                    listW[lp];


CompareFun[a_]:=Module[{old,new},
new=Read[maindir<>"/coords2/"<>a];
Close[maindir<>"/coords2/"<>a];
old=Read[maindir<>"/coords/"<>a];
Close[maindir<>"/coords/"<>a];
Print[new-old//Simplify]
]

CompareFun["kplistW.dat"];
CompareFun["lplistW.dat"];
CompareFun["kTlistW.dat"];
CompareFun["lTlistW.dat"];
                       
CompareFun["kplistWO.dat"];
CompareFun["lplistWO.dat"];
CompareFun["kTlistWO.dat"];
CompareFun["lTlistWO.dat"];



End[]
EndPackage[]
                       
Exit[]
