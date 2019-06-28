(* ::Package:: *)

(**************************************************************************************************
 *   Mappings (lp,kp,lT,kT) to the Hypercube. Double cut Graphs of soft ttbar function, uses HEP  *
 *   Last update 26 10 17                                                                         *
 **************************************************************************************************)

BeginPackage["PowerCountingTools`", {"Mappings`","Symbols`"}];

Print["PowerCountingTools"];



 (**************************************************************************************************
  *      List of updates									   *
  *   - Last update fixes indices in ReadW 4 5 17                                                  *
  **************************************************************************************************)




(******************************************************************************
 *                                                                            *
 * Public.                                                                     *
 *                                                                            *
 ******************************************************************************)






(********************************************************************************
 *                                                                              *
 * Global functions, and symbolic vars.						*
 *										*
 * Note: it is importante to treat separately input with(out) exact gluon prop	*
 *                                                                              *
 ********************************************************************************)

(*Undefined vars to do  power counting*)


\[Lambda]::usage = "Expansion parameter in power counting"
ckp::usage = "Auxiliary obj to show power counting"
clp::usage = "Auxiliary obj function to show power counting"
ckT::usage = "Auxiliary obj to show power counting"
clT::usage = "Auxiliary obj to show power counting"


DivSkeleton::usage = "Reads 16 funcs and determines which parts contains divs"

DivSkeletonWO::usage = "Reads 8 funcs and..."



ShowAllBehaviourx::usage = "Using this skeleton show the divergen behavior of x"

ShowAllBehavioury::usage = "of y"

ShowAllBehaviourxT::usage = "of xT"

ShowAllBehaviouryT::usage = "of yT"



testx::usage = "Use output ot DivSkeletonX to determine if splittings 
		are necessary for x variable."

testy::usage = "for y variable."

testyT::usage = "for yT variable"



(*With this functions, the following functions apply only the necessary 
mappings and splitings*)

WhichMappingsWith::usage = "Use TestX funcs to determine minimal mappings 
   		 	    to hypercube." 

WhichMappingsWithout::usage = "Same for the case without exact gluon 
			       propagators" 

HowManyMaps::usage = "Counts how many maps are needed in total. It serves
                     to determine whether plus or minus on-shell integration
 		     is more convenient." 



Begin["`Private`"]


(******************************************************************************
*                                                                             *
* PowerCountingTools                                                          *
*                                                                             *
*******************************************************************************)

(*
List of permutations required for Power counting. Below, each list {i,j,k}
is used to to scale (yT-> \[Lambda]^i , y -> \[Lambda]i^j, x -> \[Lambda]^k)
*)


Flist=Flatten[{{{0,0,0}},Permutations[{1,0,0}],Permutations[{1,1,0}],{{1,1,1}}},1];


(* Behaviour: calculates the power behavior of a function "a" in 
   the limit \[Lambda]->0 *)


Behaviour[a_]:=Module[{n,beha},
n=-4;
beha=Series[a,{\[Lambda],0,n}];
While[Normal[beha]=!=0 ;n++,beha=Series[a,{\[Lambda],0,n}]];
Return[beha]
]

(*Total1var: tests if integral "int", in the region defined by the list  "pointer", 
is free from divergences associated to variable "x1". Works for graphs 
with or without 3g vertex*)

Test1var[int_,x1_,x2_,x3_,x4_,pointer__]:=Module[{aux1,aux2,aux3,
auxdegree,ascaled,beha,behapow,question,n},

question=True;

For[n=1,n<=8,n++,
aux1=Flist[[n]][[1]];
aux2=Flist[[n]][[2]];
aux3=Flist[[n]][[3]];

If[aux1===0,aux1=x2,aux1=\[Lambda]];
If[aux2===0,aux2=x3,aux2=\[Lambda]];
If[aux3===0,aux3=x4,aux3=\[Lambda]];
auxdegree=-Plus@@Flist[[n]]-1;

ascaled=int/.{x1->\[Lambda],x2->aux1,x3->aux2,x4->aux3}/.{EPS->-1/2,ap->0};

beha=Behaviour[ascaled];

behapow=beha/.{f_[w__]:>List[w]/;f===SeriesData}/.{__,w1_,w2_,w3_}:>w1/w3;

question=(question)&&(behapow>auxdegree)

];
Return[{x1,question,pointer}]
]

(************************************************************************
*					   				*
* Applies Test1var to vars "yT" , "y" and "x"				*
*									*
*									*
************************************************************************)



Test3var[int_,pointer__]:={Test1var[int,yT,xT,x,y,pointer],
Test1var[int,y,yT,xT,x,pointer],
Test1var[int,x,y,xT,yT,pointer]}

(************************************************************************
*					   				*
*  DivSkeleton: applies Test3var to the output of MapsForPowerCounting. *
*  Below,vList stands by the output of MapsForPowerCounting;n=0 	*
*   corresponds to I_d and n=1 to I_u, and var is the 			*
*  variable (yT,y or x) that one to test. 				*
*									*
*  This function returns the regions 					*
*  which contain divergences, see Documentation.nb for examples. 	*
*									*
************************************************************************)

DivSkeleton[vList_,n_,var_]:=Module[{auxlist},
auxlist=Flatten[
Test3var[#[[1]],#[[2]],#[[3]],#[[4]],#[[5]]]&/@vList
,1];
auxlist=Cases[auxlist,{var,False,n,__}];
Return[auxlist]
]

(*Case without exact gluon propagator*)

DivSkeletonWO[vList_,n_,var_]:=Module[{auxlist},
auxlist=Flatten[
Test3var[#[[1]],#[[2]],#[[3]],#[[4]]]&/@vList
,1];
auxlist=Cases[auxlist,{var,False,n,__}];
Return[auxlist]
]


(******************************************************************************
*                                                                             *
* The following functions allow us to look at a partcicular  "Mapping",       *
* together with the behaviour of the coordinates, in a given div limit        *
*                                                                             *
*******************************************************************************)


(*First, we read files that contain (kp,lp,kT,lT) when all, 8 or 16, mappings 
applied. These are produced separely by the Generatecoord.m package.*)

SetDirectory["coords"]
CPrint[Directory[]];

readWO[a_]:=Block[{n0,n1,n2,n3},
For[n0=0,n0<2,n0++,
For[n2=0,n2<2,n2++,
For[n3=0,n3<2,n3++,
ToExpression["c"<>ToString[a]][n0,n2,n3]=
	Read[ToString[a]<>"listWO.dat"][[n0+1]][[n2+1]][[n3+1]];
Close[ToString[a]<>"listWO.dat"];
   ]
  ]
 ]
]

readW[a_]:=Block[{n0,n1,n2,n3},
For[n0=0,n0<2,n0++,
For[n1=0,n1<2,n1++,
For[n2=0,n2<2,n2++,
For[n3=0,n3<2,n3++,
ToExpression["c"<>ToString[a]][n0,n1,n2,n3]=
	Read[ToString[a]<>"listW.dat"][[n0+1]][[n1+1]][[n2+1]][[n3+1]];
Close[ToString[a]<>"listW.dat"];
    ]
   ]
  ]
 ]
]

readWO[kT];
readWO[lT];
readWO[kp];
readWO[lp];
readW[kT];
readW[lT];
readW[kp];
readW[lp];

ResetDirectory[]

BehaviourCord[a_]:=Module[{n,beha},
n=-2;
beha=Series[a,{\[Lambda],0,n}];
While[Normal[beha]=!=0 ;n++,beha=Series[a,{\[Lambda],0,n}]];
n=n+1;
beha=Series[a,{\[Lambda],0,n}];
Return[beha]
]

(************************************************************************
*								  	*
* ShowBehavior: is only for demostrative purposes. 			*
* It displays the divergent behaviour of 				*
* MapsForPowerCounting[int ,name], in 					*
* human redable form. It focuses in the region given		 	* 
* by the input list "vec" using the scaling Flist[[n]]. It outputs,	*
* {vec, {scaling of yT,xT,x,y} , scaling of kp,lp,lT,kT, `		*
* scaling of int ~\[Lambda]^p , not divergen: true or flase}            *
*									*
*************************************************************************)

ShowBehaviour[name_,vec__,x1_,x2_,x3_,x4_,n_]:=Module[{i,aux,auxdegree,
auxeva,ascaled,beha,behapow},

For[i=1,i<4,i++,aux[i]=Flist[[n]][[i]]];

If[aux[1]===0,aux[1]=x2,aux[1]=\[Lambda]];
If[aux[2]===0,aux[2]=x3,aux[2]=\[Lambda]];
If[aux[3]===0,aux[3]=x4,aux[3]=\[Lambda]];
auxdegree=-Plus@@Flist[[n]]-1;

auxeva={x1->\[Lambda],x2->aux[1],x3->aux[2],x4->aux[3]};

ascaled[5]=Apply[name,vec]/.auxeva/.{EPS->-1/2,ap->0};

ascaled[1]=Apply[ckp,vec]/.auxeva;

ascaled[2]=Apply[clp,vec]/.auxeva;

ascaled[3]=Apply[ckT,vec]/.auxeva;

ascaled[4]=Apply[clT,vec]/.auxeva;


For[i=1,i<5,i++,beha[i]=BehaviourCord[ascaled[i]]];

beha[5]=Behaviour[ascaled[5]];


(*Print[beha[5]];*)
(*At this point beta is O(\[Lambda]^n), the next extep take behapow= n*)

behapow=beha[5]/.{f_[w__]:>List[w]/;f===SeriesData}/.{__,w1_,w2_,w3_}:>w1/w3;

(*(un)comment line below  if you (don't) want to see the behavoiour of momentum coords*)
Return[{vec,{x1->\[Lambda],x2->aux[1],x3->aux[2],x4->aux[3]},
{kp->beha[1],lp->beha[2],kT->beha[3],lT->beha[4]},beha[5],behapow>auxdegree}]
]

ShowAllBehaviourx[a_,vec__]:=Block[{j},For[j=1,j<9,j++,
			     Print[ShowBehaviour[a,vec,x,y,xT,yT,j]]]]

ShowAllBehavioury[a_,vec__]:=Block[{j},For[j=1,j<9,j++,
			     Print[ShowBehaviour[a,vec,y,x,xT,yT,j]]]]

ShowAllBehaviourxT[a_,vec__]:=Block[{j},For[j=1,j<9,j++,
			      Print[ShowBehaviour[a,vec,xT,y,x,yT,j]]]]

ShowAllBehaviouryT[a_,vec__]:=Block[{j},For[j=1,j<9,j++,
			      Print[ShowBehaviour[a,vec,yT,y,xT,x,j]]]]


(******************************************************************************
 *                                                                            *
 * Decision functions design to read list of power couning and decide which   *
 * Mappins  are necessary.                                                    *
 *                                                                            *
 ******************************************************************************)

(*Decides if y splitting is required*)

testy[inputlist_,ud_]:=Module[{input,b1,cont},
 input=inputlist;
If[Cases[input,{y,False,ud,___,0,_}]=!={},
b1=2;If[(Cases[input,{y,False,ud,___,1,_}]=!={}),b1=b1-2];,
b1=2;If[(Cases[input,{y,False,ud,___,1,_}]=!={}),b1=b1+1];
];
Return[b1]
]

(*Decides if x splitting is required*)

testx[inputlist_,ud_]:=Module[{input,c1},
input=inputlist;
If[Cases[input,{x,False,ud,__,0}]=!={},
    c1=2;If[(Cases[input,{x,False,ud,__,1}]=!={}),c1=c1-2;
    (*New line begins
    If[(Cases[input,{y,False,ud,___,1,_}]=!={})&&(Cases[input,{y,False,ud,___,0,_}]=!={})
       && (Cases[input,{y,False,ud,___,1,0}]==={}) && (Cases[input,{y,False,ud,___,0,1}]==={})
    ,c1=4];
    New line ends*)
    ];,
c1=2;If[(Cases[input,{x,False,ud,__,1}]=!={}),c1=c1+1];
  ];
Return[c1]
]

(*Decides if yT splitting is required*)

testyT[inputlist_]:=Module[{input,a},
input= inputlist;
If[(Cases[input,{yT,False,1,0,__}]=!={})||(Cases[input,{yT,False,0,0,__}]=!={}),
   a[1]=2;
   If[(Cases[input,{yT,False,1,1,__}]=!={}),a[1]=a[1]-2];
   a[0]=2;
   If[(Cases[input,{yT,False,0,1,__}]=!={}),a[0]=a[0]-2];
   ,
   a[1]=2;
   If[(Cases[input,{yT,False,1,1,__}]=!={}),a[1]=a[1]+1];
   a[0]=2;
   If[(Cases[input,{yT,False,0,1,__}]=!={}),a[0]=a[0]+1];
  ];
Return[{a[0],a[1]}]
]

(*Gives list with mins mappings. Case with exact gluon prop*)

WhichMappingsWith[int_]:=Module[{listn,a,b,c,aux},
MapsForPowerCountingWith[int,aux];
listn=Flatten[{DivSkeleton[aux[0],0,yT],DivSkeleton[aux[0],1,yT]},1];
{a[0],a[1]}=testyT[listn];
listn=Flatten[{DivSkeleton[aux[0],0,y],DivSkeleton[aux[0],1,y]},1];
{b[0],b[1]}={testy[listn,0],testy[listn,1]};
listn=Flatten[{DivSkeleton[aux[0],0,x],DivSkeleton[aux[0],1,x],listn},1];
{c[0],c[1]}={testx[listn,0],testx[listn,1]};
Return[{a[0],b[0],c[0],a[1],b[1],c[1]}]
]

(*Gives list with mins mappings. Case without exact gluon prop*)

WhichMappingsWithout[int_]:=Module[{listn,b,c,aux},
MapsForPowerCountingWithout[int,aux];
listn=Flatten[{DivSkeletonWO[aux[0],0,y],DivSkeletonWO[aux[0],1,y]},1];
{b[0],b[1]}={testy[listn,0],testy[listn,1]};
listn=Flatten[{DivSkeletonWO[aux[0],0,x],DivSkeletonWO[aux[0],1,x]},1];
{c[0],c[1]}={testx[listn,0],testx[listn,1]};
Return[{b[0],c[0],b[1],c[1]}]
]

(*Reads list provideded by WhichMappingsWith(out) and tells how many ints are
required*)

HowManyMaps[vec__]:=Module[{ic,temp,total,vecsize},vecsize=Length[vec];
total[0]=1;
ic=1;
For[ic=1,ic<=vecsize/2,ic++,If[vec[[ic]]===0,temp=1,temp=0];
total[0]=total[0]*2^temp;];

total[1]=1;
For[ic=vecsize/2+1,ic<=vecsize,ic++,If[vec[[ic]]===0,temp=1,temp=0];
total[1]=total[1]*2^temp;];
total=total[0]+total[1];

Return[total]]

End[]
EndPackage[]
