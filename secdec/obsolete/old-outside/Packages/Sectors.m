(* ::Package:: *)

(******************************************************************************
 *                                                                            *
 * Package for automatized sector decomposition, based on the algorithms of   *
 *                                                                            *
 * T. Binoth and G. Heinrich, Nucl. Phys. B585 (2000) 741                     *
 * T. Binoth and G. Heinrich, Nucl. Phys. B680 (2004) 375                     *
 *                                                                            *
 * Generalisation of M. Czakon, 7 Jan 06 , for qt distbution of ttbar at NNLO *
 * by C. Czakon, S. Sapeta and R. Angeles                                     *
 *                                                                            *
 ******************************************************************************)

 Print["Sectors"];
 CPrint["created by M. Czakon"];
 CPrint["last modified 26 Jun May 2017"];

 (******************************************************************************
  *                                                                            *
  *  List of updates:                                                          *
  *  - Breakdown taylor, ap-ep-exp to improve Series                           *
  *     Efficientcy (May 11)                                                   *
  *  - IntegerPart in "taylor" (May 2)                                         *
  *  - In Grouplogs, pow->Sq a^b  for general integer b  (May 4)              *
  *  - Reinforce Sq to Sqrt  (May 31)                                          *
  *                                                                            *
  ******************************************************************************)


 (******************************************************************************
  *                                                                            *
  *  List of updates to go outside of the boundary                             *
  *  - SectorIntsGeneralProduct[args, W_] , W keeps track of changes of vars   *
  *     change succelively implements changes of variables due to SecDec       *
  *  - RegularizeGeneralProduct inclusdes the symbolic part W                  *
  *  - Func PrepareIntegralsForNumericalChecks deleted                         *
  *                                                                            *
  *    Last update: 26 Jun 17.                                                 *
  ******************************************************************************)

 BeginPackage["Sectors`", {"Symbols`"}]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



FUPolynomials::usage = "FUPolynomials[integrand, momenta, kinematics] gives the
F and U polynomials, as well as the M and Q matrices for a Feynman integrand
given by a product of propagators\n\n
DS[k, m, n] = 1/(k^2-m^2)^n\n\n
The notation is the same as in\n\n
T. Binoth and G. Heinrich, Nucl. Phys. B585 (2000) 741."



DS::usage = "Propagator, DS[k, m, n] = 1/(k^2-m^2)^n"



(*******************************************************************************
*                                                                              *
* ep::usage = "Parameter of the dimensional regularization"                    *
* ap::usage = "Parameter of the analytic regularisation"                       *
*                                                                              *
*  x::usage = "Integration variables used by the algorithm"                    *
*                                                                              *
*                                                                              *
*******************************************************************************)

(******************************************************************************
 *                                                                            *
 * Generalized functions (Sebastian)                                          *
 *                                                                            *
 ******************************************************************************)

SectorDecomposeGeneralProduct::usage = ""
RegularizeGeneralProduct::usage = "Plus prescription"
AlphaEpsilonExpand::usage =  "Expands ap->0, and then ep->"
AlphaEpsilonExpandMod::usage = "Expands the terms of sums separately;
makes Series[] works for finite(ep,ap->0) ints"
GroupLogs::usage =  "After regularisation, groups the term of the form
e^(ep Ln x) e^(ap Ln x) with equal x and y"
Ln::usage =  "Undefined function used by GroupLogs to keep
logarithms together"
Sq::usage =  "Undefined function used by GroupLogs to keep
roots together"
PrepareIntegralsGeneralProduct::usage = "After regularisation,
prepair functions for evaluation with CUBA"
PrepareIntegralsGeneralProductMod::usage = "After regularisation,
prepair functions for evaluation with CUBA"
PrepareIntegralsForNumericalChecks::usage = ""
IntToProduct::usage = "Translate list_integras.dat into standard form"



Options[PrimarySectorIntegrals] = {
  FPolynomial -> 0
};

Begin["`Private`"]

(******************************************************************************
 *                                                                            *
 * Private                                                                    *
 *                                                                            *
 ******************************************************************************)

verbose=False;
(*
verbose=True;
*)
CPrint[str_]:= Block[{},If[verbose==True,Print[str]]];



(******************************************************************************
 *                                                                            *
 * For a given polynomial, poly, in the variables x[i], i integer, gives a    *
 * minimal set of variables for which poly vanishes. The chosen set has the   *
 * lowest maximal powers of the variables in poly.                            *
 *                                                                            *
 ******************************************************************************)

Poly0s[poly_, x_] :=
Block[{vars = Union[Cases[{poly}, x[_], -1]], P, Cmp, sets},

  (* recursively set variables from vars[[a]] to vars[[b]] in p to zero. list
     contains the variables that have already been set to zero. the recursion
     stops if the polynomial p is zero. *)

  P[p_, a_, b_, list_] := Table[
    P[p /. vars[[i]] -> 0, i + 1, b, Append[list, vars[[i]]]],
    {i, a, b}] /; p =!= 0;

  (* compares lists of variables for length and sum of powers *)

  Cmp[list1_, list2_] :=
  Block[{len1 = Length[list1], len2 = Length[list2], pow1, pow2},
    If[len1 != len2, Return[len1 < len2]];
    pow1 = Sum[Exponent[poly, list1[[i]]], {i, len1}];
    pow2 = Sum[Exponent[poly, list2[[i]]], {i, len2}];
    Return[pow1 < pow2]];

  sets = Cases[P[poly, 1, Length[vars], {}], P[0, __, list_] :> list, -1];
  sets = Sort[sets, Cmp];

  If[Length[sets] != 0, Return[First[sets]], Return[{}]]]



(******************************************************************************
 *                                                                            *
 *                                                                            *
 *                                                                            *
 *                                                                            *
 * Generalized functions (Sebastian)                                          *
 *                                                                            *
 *                                                                            *
 *                                                                            *
 *                                                                            *
 *                                                                            *
 ******************************************************************************)

(******************************************************************************
 *
 *  Sector decomposition for general product of polynomials
 *
 ******************************************************************************)

SectorDecomposeGeneralProduct[integrals_] :=
  Flatten[integrals //. Int[args__] :> SectorIntsGeneralProduct[args]]


(******************************************************************************
 *                                                                            *
 * Generates recursively the sector integrals                                 *
 *                                                                            *
 ******************************************************************************)

 SectorIntsGeneralProduct[p_, F_List?VectorQ, nf_List?VectorQ, W_] :=
 Block[{Sf = Table[Poly0s[F[[i]], x],{i,1,Length[F]}]},

   CPrint[{"Sf: ", Sf, " ", Length[Flatten[Sf]]}];

   If[Length[Flatten[Sf]]==0,Return[Int[p, F, nf, W]]];
   Do[
     If[Length[Sf[[i]]] == 0,
        CPrint[{"zero:", Sf[[i]]}];
        Continue[], S=Sf[[i]]; Break[]
       ];

   ,{i,1,Length[Sf]}];


   CPrint[{"S: ", S}];
   Return[SectorIntsGeneralProduct[p, F, nf, S, W]]
 ]



 SectorIntsGeneralProduct[p_, F_List?VectorQ, nf_List?VectorQ, S_, W_] :=
 Block[{ExtractVar, MapVars, Fmap, Umap, pmap, auxtable, change},

   CPrint["SectorInts2"];
   (* factorizes the lowest power of x *)

   ExtractVar[poly_, x_] :=
     Block[{factor},
       factor = x^Min[Exponent[poly, x, List]];
 	  CPrint["ExtractVarIn: ",{poly, x}];
    CPrint["ExtractVarOut: ",{Simplify[Expand[poly / factor]], factor}];
    Return[{Simplify[Expand[poly / factor]], factor}]];

   (* applies the transformation X[[i]] -> x*X[[i]], X[[i]] =!= x *)

   MapVars[poly_, X_, x_] :=
     Block[{XX = DeleteCases[X, x]},
       CPrint["MapVarsIn: ",{poly, X, x}];
       CPrint["MapVarsOut: ",{poly /. Table[XX[[i]] -> x*XX[[i]],
         {i, Length[XX]}],Table[XX[[i]] -> x*XX[[i]], {i, Length[XX]}]}];
       Return[{poly /. Table[XX[[i]] -> x*XX[[i]],
         {i, Length[XX]}],Table[XX[[i]] -> x*XX[[i]], {i, Length[XX]}]}]];

   If[Length[S] == 0,(*Print["SIGPOut4: ",Int[p, F, nf, W]];*) Return[Int[p, F, nf, W]]];

 	auxtable=Table[
     Fmap =
          Table[ExtractVar[MapVars[F[[j]], S, S[[i]]][[1]], S[[i]]], {j,1,Length[F]}];
     (*
     Print[Fmap];
     Print[ExtractVar[MapVars[F[[1]], S, S[[i]]], S[[i]]]];
     *)
     CPrint[{F, S[[i]],  S, Fmap}];
     pmap = MapVars[p, S, S[[i]]][[1]]*S[[i]]^(Length[S]-1)*
            Product[Fmap[[k]][[2]]^nf[[k]], {k,1,Length[Fmap]}];
     pmap = pmap //.
       {(z1_*z2_)^n_ -> z1^n*z2^n, (z_^n1_)^n2_ :> z^Expand[n1*n2],
       z_^n1_.*z_^n2_. -> z^(n1 + n2), z_^n_ :> z^Expand[n]};

  (* "change" var keeps track of changes of variables due to SecDec*)
 	change = W/. MapVars[p, S, S[[i]]][[2]];

     Int[pmap, Fmap[[All,1]], nf, change],
     {i, Length[S]}];

 	CPrint["SIGPOut4: ",auxtable];
   Return[auxtable]
 ]





(******************************************************************************)

RegularizeGeneralProduct[integrals_] :=
  Flatten[integrals /.
    Int[p_, F__, nf__, W_] :> Int[p,W Product[F[[i]]^nf[[i]],{i,1,Length[F]}]]
    /. Int[args__] :> RegularizedIntsGeneralProduct[args]
]

(******************************************************************************
 *                                                                            *
 * Regularizes recursively integrals of the form                              *
 *                                                                            *
 * p*f                                                                        *
 *                                                                            *
 * where p is a product of monomials and f a regular function                 *
 *                                                                            *
 ******************************************************************************)

RegularizedIntsGeneralProduct[p_, f_] :=
Block[{vars, var, pow, taylor, poly, ints,Ser,AuxSer},

  vars = Cases[{p}, x[i_]^n_ :> x[i] /; (n /. {ep -> 0, ap -> 0}) <= -1, -1];

  If[Length[vars] == 0, Return[Int[p*f]]];

  var = First[vars];
  pow = Exponent[p, var];

  (* the upper limit of the series below corresponds to |a_j|-1 in Eq. (21)
     of 0803.4177; without Expand, Series can be very slow for complicated
     functions *)

  taylor=Ser[f];
  taylor=taylor/. {Ser[a_.*f1_] :>  Map[Ser, a List @@ f1 ] /; (Head[f1] === Plus)};
  taylor=taylor/. {Ser[arg_]:>arg};
  AuxSer[arg_]:=Series[arg, {var, 0, IntegerPart[-(pow /. {ep -> 0, ap -> 0}) - 1]}];
  taylor =Plus @@ ParallelMap[AuxSer,{taylor}//Flatten];



  poly = p /. var -> 1;


  If[Head[taylor] === SeriesData,

    (* if f depends on var *)

    (* first term from Eq. (21) of 0803.4177 *)
    ints =
      Table[RegularizedIntsGeneralProduct[poly,
            1/(pow + i + 1)*SeriesCoefficient[taylor, i]],
            {i, 0, -(pow /. {ep -> 0, ap -> 0}) - 1}];

    (* second term from Eq. (21) of 0803.4177 *)
    ints = Append[ints,
           RegularizedIntsGeneralProduct[poly, var^pow*(f - Normal[taylor])]],

    (* if f does not depend on var *)

    ints = RegularizedIntsGeneralProduct[poly, f/(pow + 1)]];

  Return[ints]
]

(******************************************************************************)



AlphaEpsilonExpandMod[integrals_, norm_, order_] :=Block[{ints,ExpandAux},
 ints=integrals;
 ints=ints//. {Int[a_.*f_] :>Plus @@ Map[Int, a List @@ f] /; (Head[f] === Plus
 && Head[a] =!= WE0 && FreeQ[a,Ln])
 };
 
 
(*Commend below to get non-parallel version*)
 ints=ints /. Int[f_] :>
 Int[Normal[Series[norm*f, {ap, 0, order[[1]]}, {ep, 0, order[[2]]}]]];
 ints=ints//. {Int[a_] + Int[b_] -> Int[a + b]};
 Return[ints]

(*
 If[Head[ints]===Int,
   ints=ints/.{Int[any_]->{any}},
    	If[Head[ints]===Plus,
	  ints=List@@ints;
	  ints=ints/.{Int[any_]->{any}},
	  Print["Problem in AlphaEpsilonExpandMod"]
	]

   ];


 ExpandAux[input_]:= Normal[Series[norm*(input), {ap, 0, order[[1]]}, {ep, 0, order[[2]]}]];
 
 ints=ParallelMap[ExpandAux , ints ];
 
 ints=Plus @@ ints;
 ints=Int[ints]; 
 Return[ints]*)

(* Print[ints];*)

  ]

(******************************************************************************
 *                                                                            *
 * Takes the results from RegularizedIntsGeneralProduc and simplifies it,     *
 *                                                                            *
 * by grouping the terms   C Exp[ap x] Exp[ep y] with equal x and y          *
 *                                                                            *
 * The next step is AlphaEpsilonExpand.                                       *
 ******************************************************************************)


GroupLogs[f_] :=
Block[{ints},

   ints=f //.{Power[a_,m_.+n_. ap]:>Power[a,m]paw[a^n]}//.{Power[a_,m_.+n_. ep]:>Power[a,m]pew[a^n]};
      ints=ints//.{Power[y_,-1/2]:>Sq[1/y]}//.{Power[y_,1/2]:>Sq[y]}
      //. {Power[y_, a_] :>Sq[y]*y^IntegerPart[a] /; FractionalPart[a] === 1/2}
      //. {Power[y_, a_] :>Sq[1/y]*y^IntegerPart[a] /; FractionalPart[a] === -1/2};

	  ints=ints//.{Sq[a_](Sq[a1_] c_+ d_):>Sq[a a1]c+Sq[a]d};

	  ints=ints//.{paw[a_](paw[a1_]c_+d_):>paw[a a1]c+paw[a]d};

    ints=ints//.{pew[a_](pew[a1_]c_+d_):>pew[a a1]c+pew[a]d};

    ints=ints//.{paw[a_]paw[b_]:>paw[a b]}//.{pew[a_]pew[b_]:>pew[a b]}//.{Sq[a_]Sq[b_]:>Sq[a*b]};

    ints=ints//.{a_.* Sq[z_] paw[x_]*pew[y_]+b_.*Sq[z_]*paw[x_]*pew[y_]:>(a+b)*Sq[z]*paw[x]*pew[y]};
    ints=ints//.{a_.*Sq[z_]*pew[y_]+b_.*Sq[z_]*pew[y_]:>(a+b)*Sq[z]*pew[y]};

	  ints=ints//.{c_(a_.*Sq[z_]*pew[y_]+b_):>c*a*Sq[z]*pew[y]+c*b};

    ints=ints/.{a_.*Sq[z_]pew[y_]:>(a//Simplify)*Sq[z//Simplify]*pew[(y//Simplify)]};
      (*ints=ints/.{Sq[z_]:>Sq[z//Simplify]};
      ints=ints/.{paw[z_]:>paw[z//Simplify]};
      ints=ints/.{pew[z_]:>pew[z//Simplify]};*)

    ints=ints/.{paw[x_]:>Exp[ap Ln[x]],pew[x_]:>Exp[ep Ln[x]]};

    Return[ints]
]

(******************************************************************************)

PrepareIntegralsGeneralProduct[integrals_] :=
Block[{ints},

  ints = (integrals /. Int[f_] :> Collect[f, {ep, ap}, Int])//Expand;


  (* determine integration variables *)
  ints = ints /. Int[f_] :> Int[f, Union[Cases[{f}, x[_], -1]]];

  (* change variable names from x[i] to xi *)
  ints = ints /. Int[f_, vars_] :> (Int[f, vars] /.
    Table[vars[[i]] -> Symbol["x" <> ToString[i]], {i, Length[vars]}]);

  (* add integration ranges *)
  ints = ints /. Int[f_, vars_] :>
    Int[f, Sequence @@ Table[{vars[[i]], 0, 1}, {i, Length[vars]}]];


  (* turn lists into one big sum and combine integrands; check of head needed
     for cases when there is only one integral *)

  If[(Head[ints] =!= Int && Head[ints] =!= Times),
     ints = Collect[Plus @@ ints, {ap,ep}, ReplaceRepeated[#,
     n1_.*Int[f1_,vars__] + n2_.*Int[f2_,vars__] -> Int[n1*f1 + n2*f2,vars]] &];
  ];

  ints = ints /. Int[f_] -> f /.Int[0,vars__] -> 0;

  Return[ints//Expand] (*What is the purpose of "Expand" here?*)
]

PrepareIntegralsGeneralProductMod[integrals_] :=
Block[{ints},

  ints = (integrals /. Int[f_] :> Collect[f, {ep, ap}, Int])//Expand;

  (* determine integration variables *)
  ints = ints /. Int[f_] :> Int[f,
  DeleteCases[
    DeleteCases[
      DeleteCases[Union[Cases[{f}, WE0[xi__]:>xi, -1]]
      , _Integer]
    , dx]
  , _List]
  ];


  (* add integration ranges *)
  ints = ints /. Int[f_, vars_] :>
    Int[f, Sequence @@ Table[{vars[[i]], 0, 1}, {i, Length[vars]}]];


  (* turn lists into one big sum and combine integrands; check of head needed
     for cases when there is only one integral *)

  If[(Head[ints] =!= Int && Head[ints] =!= Times),
     ints = Collect[Plus @@ ints, {ap,ep}, ReplaceRepeated[#,
     n1_.*Int[f1_,vars__] + n2_.*Int[f2_,vars__] -> Int[n1*f1 + n2*f2,vars]] &];
  ];


  ints = ints /. Int[f_] -> f /.Int[0,vars__] -> 0;

  Return[ints//Expand] (*What is the purpose of "Expand" here?*)
]



(******************************************************************************)
(* The 'integral' argument can be either single or a list of Int[] objects    *)
(******************************************************************************)
IntToProduct[integral_] :=
  integral /. Int[p_, F__, nf__] :>
              Int[p Product[F[[i]]^nf[[i]], {i, 1, Length[F]}]]

End[]

EndPackage[]
