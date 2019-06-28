(* ::Package:: *)

(******************************************************************************
 *                                                                            *
 * Substitution of Weights                                                    *
 *                                                                            *
 ******************************************************************************)

 Print["WeightSubs"];
CPrint["last modified 25 July 17"];

 (******************************************************************************
  *                                                                            *
  *                                                                            *
  *                                                                            *
  ******************************************************************************)



 BeginPackage["WeightSubs`", {"Symbols`","Sectors`"}]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

Substitutionfunc2::usage = "Substitute weights in case with two angle"

IntroWeight::usage =""

WSubs2::usage =""

WSubs1::usage =""



(******************************************************************************
 *                                                                            *
 * Private                                                                    *
 *                                                                            *
 ******************************************************************************)

Begin["`Private`"]



(******************************************************************************
* 
*
*
*
******************************************************************************)

(******************************************************************************)
IntroWeight[int_,sweight_,WExp_,Coords_]:=Module[{temp,
  templist1,reptemp1,templist3,reptemp3,
  weightlist,Waux},

templist1=Cases[{int[[1]]},WE0[1,__],-1]//Flatten;

templist3=Cases[{int[[2]]},WE0[3,__],-1]//Flatten;


Waux=(sweight/.{kp:>Coords[[1]],lp:>Coords[[2]],
   kT:>Coords[[3]],lT:>Coords[[4]]})/.
   {x[1]->x1,x[2]->x2,x[3]->x3,x[4]->x4,x[5]->x5,x[6]->x6};


reptemp1={WE0[1,bpoint__,b5_,b6_]:>
     WSubs1[{bpoint,b5, b6},Waux,WExp]};

reptemp3={ WE0[3,bpoint__,b5_,b6_]:>
     WSubs2[{bpoint, b5, b6},Waux,WExp]};


reptemp1 = Table[templist1[[i]] -> (templist1[[i]] /. reptemp1), {i,
    Length[templist1]}];

reptemp3 = Table[templist3[[i]] -> (templist3[[i]] /. reptemp3), {i,
        Length[templist3]}];



temp = {int[[1]]/. reptemp1, int[[2]]/. reptemp3};

Return[temp]
]
(******************************************************************************)



(******************************************************************************)
WSubs1[{bpoint__},Waux_,WExp_]:=Module[{temp,evapointb},
evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];

temp=(Waux/.evapointb)//Normal[Series[#,{dx,0,0}]]&;


temp=temp/. {W[xx5_, xx6_, K1_,0,0,L1_,0,0,KL1_,0,0]
  /; K1===1||L1===1||KL1===1 :>
(2WExp /.{k1->K1,k2->0,k3->0,
          l1->L1,l2->0,l3->0,
          kl1->KL1,kl2->0,kl3->0,
          x5->xx5}//Simplify)};


temp=temp/. {W[xx__] :> W[Sequence @@ Simplify[List[xx]]]};
Return[temp]
]
(******************************************************************************)

(******************************************************************************)
WSubs2[{bpoint__},Waux_,WExp_]:=Module[{temp,evapointb},
evapointb=Table[ToExpression["x"<>ToString[jc]]->{bpoint}[[jc]],{jc,6}];

temp=(Waux/.evapointb)//Normal[Series[#,{dx,0,0}]]&;
temp=temp/.{W[xx__,k1_,k2_,0,l1_,l2_,0,kl1_,kl2_,0] :>0};



temp=temp/. {W[xx__] :> W[Sequence @@ Simplify[List[xx]]]};

temp=temp/.{W->WW};


Return[temp]
]
(******************************************************************************)

End[]

EndPackage[]
