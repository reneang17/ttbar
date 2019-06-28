(* ::Package:: *)

(******************************************************************************
 *                                                                            *
 * Substitution of Weights                                                    *
 *                                                                            *
 ******************************************************************************)

 Print["WeightingSubs"];
 Print["last modified 25 July 17"];

 (******************************************************************************
  *                                                                            *
  *                                                                            *
  *                                                                            *
  ******************************************************************************)



 BeginPackage["WeightingSubs`", {"Symbols`","SectorsNew`"}]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

Substitutionfunc2::usage = "Substitute weights in case with two angle"

IntroWeight::usage =""
WDeri::usage =""
WSubs::usage =""

IntroWeight2::usage =""
WDeri2::usage =""
WSubs2::usage =""

WDeri1::usage =""
WSubs1::usage =""

WDeri6::usage =""
WSubs5::usage =""


(******************************************************************************
 *                                                                            *
 * Private                                                                    *
 *                                                                            *
 ******************************************************************************)

Begin["`Private`"]


 (*****************************************************************************)
Dxi[inputvec_,input_]:=D[input,ToExpression[StringJoin["x",
ToString[ Flatten[Position[inputvec,1]][[1]]]
]]
]
(******************************************************************************)

(******************************************************************************)
Dxi[inputvec_,input_,order_]:=D[input,ToExpression[StringJoin["x",
ToString[ Flatten[Position[inputvec,2]][[1]]]
]]
]
(******************************************************************************)

(******************************************************************************)
WDeri1[{bpoint__},cvec_,WauxList_]:=Module[{temp,templist,
evapointb,repsp,repspdx},

repsp={spU[{bb1_,cc2_}]:>Simplify[bb1 . cc2]};
repspdx={spU[{arg1_,arg2_}]:>spU[{arg1,Normal[Series[arg2,{dx,0,0}]]}]};

If[Plus@@cvec===1,
temp=WauxList;
templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2]}]}),{ic,Length[templist]}];

];

If[Plus@@cvec===2,
temp=WauxList;
templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2,2]}]}),{ic,Length[templist]}];

templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2,2]}]}),{ic,Length[templist]}];

];

evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];

temp=((temp/.evapointb)/.repspdx);
temp=(temp/.{reg21->1,reg22->0})+(temp/.{reg21->0,reg22->1});
temp=temp/.repsp;


Return[temp]
]
(******************************************************************************)


(******************************************************************************)
WDeri2[{bpoint__},cvec_,WauxList_]:=Module[{temp,templist,
evapointb,repsp,repspdx},

repsp={spU[{bb1_,cc2_}]:>Simplify[bb1 . cc2]};
repspdx={spU[{arg1_,arg2_}]:>spU[{arg1,Normal[Series[arg2,{dx,0,0}]]}]};

If[Plus@@cvec===1,
temp=WauxList;
templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2]}]}),{ic,Length[templist]}];
];

If[Plus@@cvec===2,
temp=WauxList;
templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2,2]}]}),{ic,Length[templist]}];

templist=Union[Cases[{temp},spU[__],-1]];
temp=Sum[D[temp,templist[[ic]]]*
(templist[[ic]]/.{spU[{ent1_,ent2_}]:>spU[{ent1,Dxi[Join[cvec,{0,0}],ent2,2]}]}),{ic,Length[templist]}];
];


evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];

temp=((temp/.evapointb)/.repspdx);
temp=temp-(temp/.{x6->0});
temp=(temp/.{reg21->1,reg22->0})+(temp/.{reg21->0,reg22->1});
temp=temp/.repsp;

Return[temp]
]
(******************************************************************************)

(******************************************************************************)
WSubs1[{bpoint__},WauxList_]:=Module[{temp,evapointb,repsp,repspdx},
evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];


repsp={spU[{bb1_,cc2_}]:>Simplify[bb1 . cc2]};
repspdx={spU[{arg1_,arg2_}]:>spU[{arg1,Normal[Series[arg2,{dx,0,0}]]}]};

temp=(WauxList/.evapointb)/.repspdx;
temp=(temp/.{reg21->1,reg22->0})+(temp/.{reg21->0,reg22->1});
temp=temp/.repsp;
Return[temp]
]
(******************************************************************************)

(******************************************************************************)
WSubs2[{bpoint__},WauxList_]:=Module[{temp,evapointb,repsp,repspdx},
evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];

repsp={spU[{bb1_,cc2_}]:>Simplify[bb1 . cc2]};
repspdx={spU[{arg1_,arg2_}]:>spU[{arg1,Normal[Series[arg2,{dx,0,0}]]}]};

temp=(((WauxList/.evapointb)/.repspdx)/.repsp);

temp=(temp/.{reg21->1,reg22->0})+(temp/.{reg21->0,reg22->1});
temp=temp-(temp/.{x6->0});
Return[temp]
]
(******************************************************************************)

(******************************************************************************)
IntroWeight2[int_,sweight_,Coords_]:=Module[{temp,
  templist1,reptemp1,templist3,reptemp3,dem5,dem56,
  weightlist,WauxList},
temp= int;
templist1=Union[Cases[{temp[[1]]},WE0[1,__],-1],Cases[{temp[[1]]},WE0[2,__],-1]]//Flatten;

templist3=Union[Cases[{temp[[2]]},WE0[3,__],-1],Cases[{temp[[2]]},WE0[4,__],-1]]//Flatten;



WauxList=(sweight/.{kp:>Coords[[1]],lp:>Coords[[2]],
   kT:>Coords[[3]],lT:>Coords[[4]]})/.{x[1]->x1,x[2]->x2,x[3]->x3,
   x[4]->x4,x[5]->x5,x[6]->x6};

dem5=(x5*(2-x5))^(-1/2);
dem56=(x5*(2-x5))^(-1/2)(x6*(1-x6))^(-1);

reptemp1={
     WE0[1,bpoint__,b5_,b6_]:>
     WSubs1[{bpoint,reg21*b5/2+reg22*(2-b5)/2,b6+reg32*(2-b6)},WauxList[[2]]]*dem5,
     WE0[2,bpoint__,b5_,b6_,cvec_]:>
     WDeri1[{bpoint,reg21*b5/2+reg22*(2-b5)/2,b6+reg32*(2-b6)},cvec,WauxList[[2]]]*dem5
        };
reptemp3={
		 WE0[3,bpoint__,b5_,b6_]:>
     WSubs2[{bpoint,reg21*b5/2+reg22*(2-b5)/2,reg31*b6+reg32*(2-b6)},WauxList[[2]]]*dem56,
		 WE0[4,bpoint__,b5_,b6_,cvec_]:>
     WDeri2[{bpoint,reg21*b5/2+reg22*(2-b5)/2,reg31*b6+reg32*(2-b6)},cvec,WauxList[[2]]]*dem56
        };

reptemp1 = Table[templist1[[i]] -> (templist1[[i]] /. reptemp1), {i,
    Length[templist1]}];

reptemp3 = Table[templist3[[i]] -> (templist3[[i]] /. reptemp3), {i,
        Length[templist3]}];



temp = {temp[[1]]/. reptemp1/.{reg31->1,reg32->0},
        temp[[1]]/. reptemp1/.{reg31->0,reg32->1},
        temp[[2]]/. reptemp3/.{reg31->1,reg32->0},
        temp[[2]]/. reptemp3/.{reg31->0,reg32->1}} ;

Return[temp]
]
(******************************************************************************)

End[]

EndPackage[]
