(******************************************************************************
 *                                                                            *
 * Package for automatized sector decomposition, based on the algorithms of   *
 *                                                                            *
 * T. Binoth and G. Heinrich, Nucl. Phys. B585 (2000) 741                     *
 * T. Binoth and G. Heinrich, Nucl. Phys. B680 (2004) 375                     *
 *                                                                            *
 * M. Czakon, 7 Jan 06                                                        *
 *                                                                            *
 ******************************************************************************)

(*
Print["Sectors 2.0"];
Print["by Michal Czakon"];
Print["last modified 07 Feb 07"];
*)

BeginPackage["Sectors`"]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

Sectors::usage = "Implementation of the sector decomposition and integration
algorithms from\n\n
T. Binoth and G. Heinrich, Nucl. Phys. B585 (2000) 741\n
T. Binoth and G. Heinrich, Nucl. Phys. B680 (2004) 375\n\n
Typical use:\n\n
integral = DS[k+p1,0,1]*DS[k-p2,0,1]*DS[k,0,1]\n\n
momenta = {k}\n\n
kinematics = {p1^2 -> 0, p2^2 -> 0, p1*p2 -> 1/2*q^2}\n\n
PrimarySectorIntegrals[integral, momenta, kinematics]\n\n
SectorDecompose[%]\n\n
Regularize[%]\n\n
EpsilonExpand[%,(-1)^n*Gamma[n-l*d/2],0]\n\n
PrepareIntegrals[%]"

PrimarySectorIntegrals::usage = "PrimarySectorIntegrals[integrand, momenta,
kinematics] generates the primary sector integrals for a Feynman integrand
given by a product of propagators\n\n
DS[k, m, n] = 1/(k^2-m^2)^n\n\n
A numerator is allowed, which may, however, only be a product of one
integration momentum and some external momentum. The output is a list of
Int[p, F, nf, U, nu] objects, where p is a product of integration variables,
F and U are given by FUPolynomials and nf and nu their powers."

SectorDecompose::usage = "SectorDecompose[integrals] performs a recursive
sector decomposition of the integrals in the format given by
PrimarySectorIntegrals"

Regularize::usage = "Regularize[integrals] regularizes integrals given by
SectorDecompose"

EpsilonExpand::usage = "EpsilonExpand[integrals, norm, order] expand integrals
given by Regularize in epsilon to order. Every integrand is multiplied by norm"


PrepareIntegrals::usage = "PrepareIntegrals[integrals] prepare integrals
obtained by EpsilonExpand for numerical evaluation"


FUPolynomials::usage = "FUPolynomials[integrand, momenta, kinematics] gives the
F and U polynomials, as well as the M and Q matrices for a Feynman integrand
given by a product of propagators\n\n
DS[k, m, n] = 1/(k^2-m^2)^n\n\n
The notation is the same as in\n\n
T. Binoth and G. Heinrich, Nucl. Phys. B585 (2000) 741."

Int::usage = "Integral object"

DS::usage = "Propagator, DS[k, m, n] = 1/(k^2-m^2)^n"

ep::usage = "Parameter of the dimensional regularization"

x::usage = "Integration variables used by the algorithm"

(******************************************************************************
 *                                                                            *
 * Generalized functions (Sebastian)                                          *
 *                                                                            *
 ******************************************************************************)
SectorDecomposeGeneralProduct::usage = ""
RegularizeGeneralProduct::usage = ""
AlphaEpsilonExpand::usage =  ""
PrepareIntegralsGeneralProduct::usage = ""
PrepareIntegralsForNumericalChecks::usage = ""
IntToProduct::usage = ""
ap::usage = "Parameter of the analytic rapidity regularization"


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

PrimarySectorIntegrals[integrand_, momenta_, kinematics_, options___Rule] := 
Block[{opt = ParseOptions[PrimarySectorIntegrals, options], num, den, pow, n,
  l = Length[momenta], P, F, U, M, Q, p, delta = 0, integral, integrals, S},

  num = DeleteCases[integrand, DS[__]];
  den = Times @@ Cases[integrand, DS[__]];
  pow = Cases[integrand, DS[__, n_] :> n];
  n = Plus @@ pow;

  P =  Table[Coefficient[num, momenta[[i]]], {i, l}];

  {F, U, M, Q} = FUPolynomials[den, momenta, kinematics];

  If[(FPolynomial /. opt) =!= 0, F = FPolynomial /. opt];

  p = Product[x[i]^(pow[[i]]-1), {i, Length[pow]}];

  If[num =!= 1,
    p = Expand[p*Simplify[P.Inverse[M / U].Q]] /. kinematics;
    delta = -1];

  integral = Int[p, F, -n + 2*l - ep*l, U, n - 2*(l + 1) + ep*(l + 1) + delta];

  integrals = Table[integral /. x[i] -> 1, {i, Length[pow]}];
  integrals = integrals //. Int[a_ + b_, args__] -> {Int[a, args],Int[b, args]};
  integrals = Flatten[integrals];

  Do[S = Union[Cases[integrals[[i,2]], x_^2 :> x, -1]];
    integrals[[i]] = integrals[[i]] /. Int[args__] :> SectorInts[args, S],
  {i, Length[integrals]}];

  integrals = Flatten[integrals];

  Return[integrals]]

(******************************************************************************)

SectorDecompose[integrals_] :=
  Flatten[integrals //. Int[args__] :> SectorInts[args]]

(******************************************************************************
 *                                                                            *
 * Generates recursively the sector integrals                                 *
 *                                                                            *
 ******************************************************************************)

SectorInts[p_, F_, nf_, U_, nu_] := 
Block[{Sf = Poly0s[F, x], Su = Poly0s[U, x], S},

  (*
  Print[F, "  ", Sf];
  Print[Su];
  *)

  If[Length[Sf] == 0, 
    If[Length[Su] == 0,
      (*
      Print["return ", Int[p, F, nf, U, nu]];
      *)
      Return[Int[p, F, nf, U, nu]],
      S = Su],
    S = Sf];

  CPrint[S];
  Return[SectorInts[p, F, nf, U, nu, S]]]

SectorInts[p_, F_, nf_, U_, nu_, S_] := 
Block[{ExtractVar, MapVars, Fmap, Umap, pmap},

  (*
  Print["SectorInts2"];
  *)
  (* factorizes the lowest power of x *)

  ExtractVar[poly_, x_] :=
    Block[{factor},
      factor = x^Min[Exponent[poly, x, List]];
      Return[{Simplify[Expand[poly / factor]], factor}]];

  (* applies the transformation X[[i]] -> x*X[[i]], X[[i]] =!= x *)

  MapVars[poly_, X_, x_] := 
    Block[{XX = DeleteCases[X, x]},
      CPrint[{poly, " ", XX}];
      (*
      Print[Table[XX[[i]] -> x*XX[[i]], {i, Length[XX]}]];
      *)
      Return[poly /. Table[XX[[i]] -> x*XX[[i]], {i, Length[XX]}]]];

  If[Length[S] == 0, Return[Int[p, F, nf, U, nu]]];

  (*
  Print[S];
  *)
  Return[Table[
    Fmap = ExtractVar[MapVars[F, S, S[[i]]], S[[i]]];
    Umap = ExtractVar[MapVars[U, S, S[[i]]], S[[i]]];
    CPrint[{F, " ", S, " ", MapVars[F, S, S[[i]]], " ", Fmap}];
    pmap = MapVars[p, S, S[[i]]]*S[[i]]^(Length[S]-1)*Fmap[[2]]^nf*Umap[[2]]^nu;
    pmap = pmap //.
      {(z1_*z2_)^n_ -> z1^n*z2^n, (z_^n1_)^n2_ :> z^Expand[n1*n2], 
      z_^n1_.*z_^n2_. -> z^(n1 + n2), z_^n_ :> z^Expand[n]};
    Int[pmap, Fmap[[1]], nf, Umap[[1]], nu],
    {i, Length[S]}]]]



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

(******************************************************************************)

Regularize[integrals_] := 
  Flatten[integrals /.
    Int[p_, F_, nf_, U_, nu_] -> Int[p, F^nf*U^nu] /.
    Int[args__] :> RegularizedInts[args]]

(******************************************************************************
 *                                                                            *
 * Regularizes recursively integrals of the form                              *
 *                                                                            *
 * p*f                                                                        *
 *                                                                            *
 * where p is a product of monomials and f a regular function                 *
 *                                                                            *
 ******************************************************************************)

RegularizedInts[p_, f_] := 
Block[{vars, var, pow, taylor, poly, ints},

  vars = Cases[{p}, x[i_]^n_ :> x[i] /; (n /. ep -> 0) < 0, -1];
  If[Length[vars] == 0, Return[Int[p*f]]];

  var = First[vars];
  pow = Exponent[p, var];

  taylor = Series[f, {var, 0, -(pow /. ep -> 0) - 1}];
  poly = p /. var -> 1;

  If[Head[taylor] === SeriesData,

    (* if f depends on var *)

    ints = 
      Table[RegularizedInts[poly, 1/(pow + i + 1)*SeriesCoefficient[taylor, i]],
      {i, 0, -(pow /. ep -> 0) - 1}];
    ints = Append[ints, RegularizedInts[poly, var^pow*(f - Normal[taylor])]],

    (* if f doesn't depend on var *)

    ints = RegularizedInts[poly, f/(pow + 1)]];

  Return[ints]]

(******************************************************************************)

EpsilonExpand[integrals_, norm_, order_] := 
  integrals /. Int[f_] :> Int[Normal[Series[norm*f, {ep, 0, order}]]]

(******************************************************************************)

PrepareIntegrals[integrals_] :=
Block[{ints},

  ints = integrals /. Int[f_] :> Collect[f, ep, Int];
  ints = ints /. Int[f_] :> Int[f, Union[Cases[{f}, x[_], -1]]];

  ints = ints /. Int[f_, vars_] :> (Int[f, vars] /.
    Table[vars[[i]] -> Symbol["x" <> ToString[i]], {i, Length[vars]}]);

  ints = ints /. Int[f_, vars_] :>
    Int[f, Sequence @@ Table[{vars[[i]], 0, 1}, {i, Length[vars]}]];

  ints = Collect[Plus @@ ints, ep, ReplaceRepeated[#,
    n1_.*Int[f1_,vars__] + n2_.*Int[f2_,vars__] -> Int[n1*f1 + n2*f2,vars]] &];

  Return[ints]]

(******************************************************************************)

FUPolynomials[integrand_, momenta_, kinematics_] :=
Block[{denom = List @@ integrand, int, l = Length[momenta], m, j, q, f, u,
  vars},

  int = Sum[x[i]*denom[[i]] /. DS[k_, m_, _] -> k^2 - m^2,
    {i, Length[denom]}];
  m = Table[If[i != j, 1/2, 1]*
    Coefficient[int, momenta[[i]]*momenta[[j]]], {i, l}, {j, l}];
  j = int - momenta.m.momenta;
  q = Table[Expand[-1/2*Coefficient[j, momenta[[i]]]], {i, l}] ;
  j = Expand[j + 2*momenta.q] /. kinematics;
  u = Det[m];
  f = Expand[u*(q.Inverse[m].q - j)] /. kinematics;
  vars = DeleteCases[Variables[f], x[_]];
  f = Collect[f, vars, Simplify];

  Return[{f, u, m, q}]]

(******************************************************************************
 *                                                                            *
 * Return a list, where all the options are set, either as on the default     *
 * option list, or as specified by the user.                                  *
 *                                                                            *
 ******************************************************************************)

ParseOptions[f_, options___Rule] :=
Block[{pos},
  If[Length[pos = Position[{options}, First[#] -> _, 1, 1] ] === 0, #,
    {options}[[ Sequence @@ First[pos]]]] & /@ Options[f]]

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

SectorIntsGeneralProduct[p_, F_List?VectorQ, nf_List?VectorQ] := 
Block[{Sf = Table[Poly0s[F[[i]], x],{i,1,Length[F]}]},

  CPrint[{"Sf: ", Sf, " ", Length[Flatten[Sf]]}];

  If[Length[Flatten[Sf]]==0,Return[Int[p, F, nf]]];
  Do[
    If[Length[Sf[[i]]] == 0,
       CPrint[{"zero:", Sf[[i]]}];
       Continue[], (*If[i==Length[Sf],
                      Return[Int[p, F, nf]],*) S=Sf[[i]]; Break[]
       (*
       ]
       , 
       S=Sf[[i]]; Break[]
       *)
    ];
  ,{i,1,Length[Sf]}];

  (*
  Print[F, nf, S];
  *)

  CPrint[{"S: ", S}];
  Return[SectorIntsGeneralProduct[p, F, nf, S]]
]

SectorIntsGeneralProduct[p_, F_List?VectorQ, nf_List?VectorQ, S_] := 
Block[{ExtractVar, MapVars, Fmap, Umap, pmap},

  CPrint["SectorInts2"];
  (* factorizes the lowest power of x *)

  ExtractVar[poly_, x_] :=
    Block[{factor},
      factor = x^Min[Exponent[poly, x, List]];
      Return[{Simplify[Expand[poly / factor]], factor}]];

  (* applies the transformation X[[i]] -> x*X[[i]], X[[i]] =!= x *)

  MapVars[poly_, X_, x_] := 
    Block[{XX = DeleteCases[X, x]},
      CPrint[{poly, XX}];
      Return[poly /. Table[XX[[i]] -> x*XX[[i]], {i, Length[XX]}]]];

  If[Length[S] == 0, Return[Int[p, F, nf]]];

  Return[Table[
    Fmap = 
         Table[ExtractVar[MapVars[F[[j]], S, S[[i]]], S[[i]]], {j,1,Length[F]}];
    (*
    Print[Fmap];
    Print[ExtractVar[MapVars[F[[1]], S, S[[i]]], S[[i]]]];
    *)
    CPrint[{F, S[[i]],  S, Fmap}];
    pmap = MapVars[p, S, S[[i]]]*S[[i]]^(Length[S]-1)*
           Product[Fmap[[k]][[2]]^nf[[k]], {k,1,Length[Fmap]}];
    pmap = pmap //.
      {(z1_*z2_)^n_ -> z1^n*z2^n, (z_^n1_)^n2_ :> z^Expand[n1*n2], 
      z_^n1_.*z_^n2_. -> z^(n1 + n2), z_^n_ :> z^Expand[n]};
    Int[pmap, Fmap[[All,1]], nf],
    {i, Length[S]}]]
]

(******************************************************************************)

RegularizeGeneralProduct[integrals_] := 
  Flatten[integrals /.
    Int[p_, F__, nf__] :> Int[p,Product[F[[i]]^nf[[i]],{i,1,Length[F]}]] /.
    Int[args__] :> RegularizedIntsGeneralProduct[args]
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
Block[{vars, var, pow, taylor, poly, ints},

  vars = Cases[{p}, x[i_]^n_ :> x[i] /; (n /. {ep -> 0, ap -> 0}) <= -1, -1];

  If[Length[vars] == 0, Return[Int[p*f]]];

  var = First[vars];
  pow = Exponent[p, var];

  (* the upper limit of the series below corresponds to |a_j|-1 in Eq. (21)
     of 0803.4177; without Expand, Series can be very slow for complicated
     functions *)
  taylor = 
  Series[f//Expand, {var, 0, -(pow /. {ep -> 0, ap -> 0}) - 1}];

  (* alternatives to the above Taylor expansion: *)
  (*
  taylor = 
  Series[f//Expand, {var, 0, -(pow /. {ep -> 0, ap -> 0}) - 1}] //Simplify;
  taylor = 
  FullSimplify[
    Series[f//Expand, {var, 0, -(pow /. {ep -> 0, ap -> 0}) - 1}],
    Assumptions -> {x[1] > 0 , x[1] < 1, x[2] > 0 , x[2] < 1}];
  *)

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

    (* if f doesn't depend on var *)

    ints = RegularizedIntsGeneralProduct[poly, f/(pow + 1)]];

  Return[ints]
]

(******************************************************************************)

AlphaEpsilonExpand[integrals_, norm_, order_] := 
  integrals /. Int[f_] :> 
  Int[Normal[Series[norm*f, {ap, 0, order[[1]]}, {ep, 0, order[[2]]}]]]

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

  If[(Head[ints] =!= Int),
     ints = Collect[Plus @@ ints, {ap,ep}, ReplaceRepeated[#,
     n1_.*Int[f1_,vars__] + n2_.*Int[f2_,vars__] -> Int[n1*f1 + n2*f2,vars]] &];
  ];
  

  (* (* possible alternative version *)
  ints = ints //. {n1_.  Int[f1_, vars__] + n2_. Int[f2_, vars__] :> 
         Int[n1*f1 + n2*f2, vars]};
  *)

  (* simplify combined integrands as well as constant or zero integrands*)
  (*
  ints = ints /. Int[f_,vars__] :> Int[Simplify[f], vars];
  *)
  ints = ints /. Int[f_] -> f /.Int[0,vars__] -> 0;

  Return[ints//Expand]
]

(******************************************************************************)
PrepareIntegralsForNumericalChecks[integrals_] :=
Block[{ints},


  ints = integrals;
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

  (*
  If[(Head[ints] =!= Int),
     ints = Collect[Plus @@ ints, {ap,ep}, ReplaceRepeated[#,
     n1_.*Int[f1_,vars__] + n2_.*Int[f2_,vars__] -> Int[n1*f1 + n2*f2,vars]] &];
  ];
  *)
  

  (* possible alternative version *)
  ints = ints //. {n1_.  Int[f1_, vars__] + n2_. Int[f2_, vars__] :> 
         Int[n1*f1 + n2*f2, vars]};

  (* simplify combined integrands as well as constant or zero integrands*)
  (*
  ints = ints /. Int[f_,vars__] :> Int[Simplify[f], vars];
  *)

  Return[ints//Expand]
]

(******************************************************************************)
(* The 'integral' argument can be either single or a list of Int[] objects    *)
(******************************************************************************)
IntToProduct[integral_] :=
  integral /. Int[p_, F__, nf__] :> 
              Int[p Product[F[[i]]^nf[[i]], {i, 1, Length[F]}]]

End[]

EndPackage[]
