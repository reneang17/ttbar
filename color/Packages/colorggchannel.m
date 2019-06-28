(* ::Package:: *)

(******************************************************************************
 *                                                                            *
 *                                                                            *
 ******************************************************************************)
Print["colorggchannel Package"];


BeginPackage["colorggchannel`",{"Symbols`"}]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)


Colourgg2::usage = ""

(*Nc::usage = ""
CF::usage = ""

rc::usage = "repeated colour index"
TT::usage = "Matrix in colour basis independe notation"
Tq::usage = "Colour charge of emitted gluon"*)




Begin["`Private`"]

(******************************************************************************
 *                                                                            *
 * Calculate Jacobian matrix for the transformation: {x} = f({y}), where {x}  * 
 * corresponds to the new and y to the old variables.                         *
 *                                                                            *
 ******************************************************************************)



(******************************************************************************
 *                                                                            *
 * Hard process defs                                                         *
 *                                                                            *
 ******************************************************************************)

SetAttributes[deltaF, Orderless];

cket = {deltaA[Subscript[a, 1], Subscript[a, 2]] deltaF[Subscript[a, 3], Subscript[a, 4]], 
        I f[Subscript[a, 1], Subscript[a, 2], c] T[c, Subscript[a, 3], Subscript[a, 4]], 
        d[Subscript[a, 1], Subscript[a, 2], c] T[c, Subscript[a, 3], Subscript[a, 4]]};

cbra = {deltaA[Subscript[c, 1], Subscript[c, 2]] deltaF[Subscript[c, 3], Subscript[c, 4]], 
        I f[Subscript[c, 2], Subscript[c, 1], a] T[a, Subscript[c, 4], Subscript[c, 3]], 
        d[Subscript[c, 1], Subscript[c, 2], a] T[a, Subscript[c, 4], Subscript[c, 3]]};



(******************************************************************************
 *                                                                            *
 * Explicit representaitno of colour charges :                              *
 *                                                                            *
 *       <Subscript[a, i]|  Subscript[T^c, i] |Subscript[b, i]>   =   T[c, a, b, i]  *  deltas                     *                                             *
 *                                                                            *
 ******************************************************************************)



(*In my notes*)
T[c_, a_, b_, 1] := -I f[b, c, a]
T[c_, a_, b_, 2] := -I f[b, c, a]


T[c_, a_, b_, 3] := -T[c, b, a]
T[c_, a_, b_, 4] := T[c, a, b]

(*When there are not T matrix associated to parton $i$ there should be 
an additional delta function. *)

NoInteraction[list_, a_, b_] := Module[{del, ic},
    del = 1;
    For[ic = 1, ic <= 4, ic++,
      If[Cases[list, ic] === {},
          
     If[ic < 3, 
      del = del deltaA[Subscript[a, ic], Subscript[b, ic]]];
          
     If[ic > 2, 
      del = del deltaF[Subscript[a, ic], Subscript[b, ic]]];
          ];
   
      ];
    Return[del]
    ]

scol = 1;
col = 1;

(*ColourBasis. Uses NoInteraction and T[__] to transform 
a list of matrix elements*)

ColourBasis[list_, a_, b_] := Module[{Caux, NoInt, tmp, ic},
  tmp = Union[Cases[list, _Integer, -1]];
  
  NoInt = NoInteraction[tmp, a, b];
  For[ic = 1, ic <= 4, ic++,
   Caux[ic] = Cases[list, TT[_, ic], -1];
   Caux[ic] = 
    Cases[Caux[ic], 
     TT[x_, y_] :> TT[x, bc[scol += 1], bc[scol += 2], y ]];
   Caux[ic] = 
    Caux[ic] //. {{x___, TT[r__, s_, v_], TT[t_, w_, u__], y___} /; 
        s =!= w :> {x, TT[r, s, v], TT[t, s, u], y}};
   ];
  
  Caux = DeleteCases[{Caux[1], Caux[2], Caux[3], Caux[4]}, {}];
  
  Caux = Caux //. {{TT[x_, y_, d_, w_], 
       z___} :> {TT[x, Subscript[a, w], d, w], z}};
  Caux = Caux //. {{z___, TT[x_, d_, y_, w_]} :> {z, 
       TT[x, d, Subscript[b, w], w]}};
  
  Caux = Times @@ Flatten[Caux];
  Caux = Caux /. {TT[x_, y__] :> T[bc[x], y]};
  Caux = Caux /. {TT -> T};
  
  Return[Caux NoInt];
  ]

(*ColourA (CA ) converts introduces a colour basis at amplitude level*)
ColourA[in_] := ColourBasis[in, a, b]
ColourCA[in_] := ColourBasis[in, b, c]


(******************************************************************************
 *                                                                            *
 * Evaluation of colour coefficients of the soft function in the           *
 * qq channel                                                                *
 *                                                                            *
 ******************************************************************************)
ReplAdjoinForFundamental = {d[i_, j_, k_] :> (col += 3; 
         1/TF (T[i, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
                   ad[col + 3]] T[k, ad[col + 3], ad[col + 1]] + 
               T[k, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
                   ad[col + 3]] T[i, ad[col + 3], ad[col + 1]])),
   f[a_, b_, c_] T[c_, d_, e_] /; a =!= b :> -f[a, c, b] T[c, d, e],
   f[c_, a_, b_] T[c_, d_, e_] /; a =!= b :> -f[a, c, b] T[c, d, e],
   f[a_, c_, b_] T[c_, d_, e_] /; a =!= b :> ( col += 3; 
    I (T[a, d, fu[col + 1]] T[b, fu[col + 1], e] - 
       T[b, d, fu[col + 2]] T[a, fu[col + 2], e]))
  };

ReplColour = {d[i_, j_, k_] :> (col += 3; 
     1/TF (T[i, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
          ad[col + 3]] T[k, ad[col + 3], ad[col + 1]] + 
        T[k, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
          ad[col + 3]] T[i, ad[col + 3], ad[col + 1]])), 
   f[i_, j_, k_]^
    n_. :> (col += 3; 
     f[i, j, k]^(n - 1) 1/( 
      I TF) (T[i, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
          ad[col + 3]] T[k, ad[col + 3], ad[col + 1]] - 
        T[k, ad[col + 1], ad[col + 2]] T[j, ad[col + 2], 
          ad[col + 3]] T[i, ad[col + 3], ad[col + 1]])), 
   deltaF[a_, b_] F_ [args1___, b_, args2___] -> F[args1, a, args2],
   deltaA[a_, b_] F_ [args1___, b_, args2___] -> F[args1, a, args2],
   deltaF[a_, b_]^2 -> deltaF[a, a],
   deltaA[a_, b_]^2 -> deltaA[a, a],
   T[c_, i_, j_] T[c_, k_, l_] -> 
    TF ( deltaF[i, l] deltaF[j, k] - 1/Nc deltaF[i, j] deltaF[k, l]),
   deltaF[a_, a_] -> Nc,
   deltaA[a_, a_] -> Nc^2 - 1
   };

SimplifyColour[expr_] := FixedPoint[Expand[#] //. ReplColour &, expr]


Patch[inp_]:=Module[{out},

out=inp/.{{TT[a1__],TT[a2__]},{TT[a3__],TT[a4__]}}:>{{},{TT[a1],TT[a2],TT[a3],TT[a4]}};

out=ColourCA[out[[1]]]ColourA[out[[2]]];
Return[out];
]

Colourqq[inp_] := Module[{tmp, reslocal, mtmp, in},
    in = Patch[inp];
    
    mtmp = ConstantArray[0, {3, 3}];
    Do[
      reslocal = 
    1/(Nc^2 - 1) in cbra[[imain]] cket[[jmain]] //. 
     ReplAdjoinForFundamental;
      mtmp[[imain]][[jmain]] = SimplifyColour[reslocal] // Simplify;
      , {imain, 1, Length[cket]}
      , {jmain, 1, Length[cket]}
      ];
    mtmp = mtmp // Together;
    mtmp = FullSimplify[mtmp, Assumptions -> Nc > 0];
    mtmp = mtmp //. {(*-1+Nc^2\[Rule] 2 Nc CF,*)TF -> 1/2};
    Return[mtmp]
    ]




Colourgg2[{a_, b_}] := Module[{aux1},

scol = 1;col = 1;

If[FreeQ[b,Tq]&&FreeQ[a,Tq], Return[Colourqq[{a,b}]]];

If[FreeQ[a,Tq]===False && FreeQ[b,Tq]===False, 
   aux={(a/.{{TT[_,ii_],Tq[__]}:> {TT[cc,ii]}}),(b/.{{Tq[__],TT[_,ii_]}:> {TT[cc,ii]}}) };
   Return[Nc Colourqq[aux]]];

If[FreeQ[b,Tq] && FreeQ[a,Tq]===False, 
   Return[
Colourqq[({ a/. {{x1___, TT[cd_,ii_],Tq[cd_,a1_,a2_]}:> {x1, TT[a1,ii],TT[a2,ii]} } , b })  ]-
Colourqq[({ (a/. {{x1___,TT[cd_,ii_],Tq[cd_,a1_,a2_]}:> {x1, TT[a2,ii],TT[a1,ii]} }) , b })  ] //Simplify ]
  ];

If[FreeQ[a,Tq] && FreeQ[b,Tq]===False, 
   Return[
Colourqq[( {a,  (b/. {{Tq[a1_,a2_,cd_],TT[cd_,ii_], x1___}:> {TT[a1,ii],TT[a2,ii], x1}}) }  )]-
Colourqq[( {a,  (b/. {{Tq[a1_,a2_,cd_],TT[cd_,ii_], x1___}:> {TT[a2,ii],TT[a1,ii], x1}}) }  )] //Simplify  ]
  ];

]



End[]
EndPackage[]
