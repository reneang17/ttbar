(* ::Package:: *)

(*******************************************************************************
 * 
 *  Integrate NLO integral at the boundary
 *
 ******************************************************************************)

ProcessIntegralNLO[integral_] := Module[{tmp, ReplChangeVar, jac, intx, 
                                        inty, reslist = {}},

  tmp = integral /. measure[ddk] -> dkT kT^(d - 3) Subscript[S, d - 3];
  tmp = Expand[tmp] //.  dkT fac_ Int[delta[-1 + kT] rest_] :>  
                         ReplaceAll[fac Int[rest], kT :> 1];
  ReplChangeVar = {km -> Sqrt[x/y], kp -> Sqrt[x y]};

  jac = FullSimplify[Det[{D[#, x] & /@ ReplChangeVar[[All, 2]], 
                          D[#, y] & /@ ReplChangeVar[[All, 2]]}], 
                     Assumptions -> {x > 0, y > 0}];
  tmp = FullSimplify[tmp /. ReplChangeVar, 
                     Assumptions -> {x > 0, y > 0}] /. {x -> x + 1} /. 
                     theta[x] -> 1 // PowerExpand;
  tmp = tmp /. Int[expr__] -> Int[jac expr] // FullSimplify;
  tmp = tmp /. {fac_ delta[x] :>  ReplaceAll[fac, x :>  0]};
  tmp = tmp /. Int[arg_] :>  Integrate[arg, {y, 0, Infinity}];
  Return[tmp];
];

(*******************************************************************************
 * 
 *  Integrate NNLO integral at the boundary -- simplest method
 *
 ******************************************************************************)

ProcessIntegralNNLO[integral_] := Module[{tmp, ReplChangeVar, jac, intx, inty, 
                                          reslist = {}, ypow, tmpscaled, 
                                          yratio(*,x,y*)},

  tmp = integral/. measure[ddk] -> dkT kT^(d - 3) Subscript[S, d - 3];
  tmp = tmp //. {k.k^pow_. -> (kp km - kT^2)^pow, k0 -> 1/2 (kp + km),
                theta[expr_/2] -> theta[expr]};
  tmp = Expand[tmp] //. dkT fac_ Int[delta[-1 + kT] rest_] :>  
                        ReplaceAll[fac Int[rest], kT :> 1];
  tmp = tmp /. theta[km + kp] -> 1;
  tmp = tmp /. {n1.k -> kp, n2.k -> km};
  ReplChangeVar = {km -> Sqrt[x/y], kp -> Sqrt[x y]};
  jac = FullSimplify[Det[{D[#, x] & /@ ReplChangeVar[[All, 2]], 
                          D[#, y] & /@ ReplChangeVar[[All, 2]]}],
                     Assumptions -> {x > 0, y > 0}];
  tmp = FullSimplify[tmp /. ReplChangeVar, 
                     Assumptions -> {x > 0, y > 0}] /. {x -> x + 1} /.
                     theta[x] -> 1 // PowerExpand;
  tmp = tmp /. Int[expr__] -> Int[jac expr] // FullSimplify;
  If[tmp == 0, Return[0]];

  (*Check if the integral is scaleless. If so, set it to zero. *)
  tmp = tmp /. Int[ y^(-1 - ap) arg_] /; FreeQ[arg, y] :> 0;
  Print[tmp];
  tmp = tmp /.  Int[arg_] :>  
                Integrate[arg, {x, 0, Infinity}, 
                          GenerateConditions -> False];
  tmp = Integrate[tmp, {y, 0, Infinity}, 
                       GenerateConditions -> False];
(*
  tmp = tmp /.  Int[arg_] :>  
                Integrate[arg, {x, 0, Infinity}, {y, 0, Infinity}, 
                          GenerateConditions -> False];
  tmp = tmp /.  Int[arg_] :>  
                Integrate[arg, {x, 0, Infinity}, {y, 0, Infinity}, 
                          GenerateConditions -> False];
*)
  Return[tmp];
];

(*******************************************************************************
 * 
 *  Integrate NNLO integral at the boundary -- alternative method
 *
 ******************************************************************************)
ProcessIntegralNNLOAlt[integral_] := Module[{tmp, ReplChangeVar, jac, intx, 
                                             inty, reslist = {}, ypow, 
                                             tmpscaled, yratio},

  tmp = integral /. measure[ddk] -> dkT kT^(d - 3) Subscript[S, d - 3];
  tmp = tmp //. {k.k^n_. -> M2^n};
  tmp = tmp /. {Int[arg_] ->  Int[arg delta[k.k - M2]]};
  tmp = tmp //. {k.k^pow_. -> (kp km - kT^2)^pow, k0 -> 1/2 (kp + km),
                 theta[expr_/2] -> theta[expr]};
  tmp = Expand[tmp] //.  dkT fac_ Int[delta[-1 + kT] rest_] :>  
                         ReplaceAll[fac Int[rest], kT :> 1];
  tmp = tmp /. theta[km + kp] -> 1;
  tmp = tmp /. {n1.k -> kp, n2.k -> km};
  ReplChangeVar = {km -> Sqrt[x/y], kp -> Sqrt[x y]};
  jac = FullSimplify[Det[{D[#, x] & /@ ReplChangeVar[[All, 2]], 
                          D[#, y] & /@ ReplChangeVar[[All, 2]]}], 
                     Assumptions -> {x > 0, y > 0}];
  tmp = FullSimplify[tmp /. ReplChangeVar, 
                     Assumptions -> {x > 0, y > 0}] /. {x -> x + 1} /. 
                     theta[x] -> 1 // PowerExpand;
  tmp = tmp /. Int[expr__] -> Int[jac expr] // FullSimplify;
  tmp = Expand[tmp] //. fac_ Int[delta[x - var_] rest_] :>  
                        ReplaceAll[fac Int[rest], x :> var];
  If[tmp == 0, Return[0]];
  
  (*Check if the integral is scaleless. If so, set it to zero. *)
  tmp = tmp /. Int[ y^(-1 - ap) arg_] /; FreeQ[arg, y] :> 0;
  tmp = tmp /.  Int[arg_] :>  Integrate[arg, {y, 0, Infinity}, 
                                        GenerateConditions -> False];
  
  tmp = tmp /. theta[arg_] -> HeavisideTheta[arg](*//Simplify*);
  tmp = Integrate[tmp, {M2, 0, Infinity}, GenerateConditions -> False];
  Return[tmp];
]

(*******************************************************************************
 * 
 *  Check if integral is scaleless
 *
 ******************************************************************************)
CheckScalelessness[integral_, var_] := Module[{expint, tmp, orig, res, lam},
  expint = Expand[integral];
  If[Head[expint] === Plus, tmp = List @@ expint, tmp = {expint}];
  orig = tmp;
  tmp = tmp /. var -> lam var // PowerExpand;
  res = Table[tmp[[i]]/orig[[i]], {i, 1, Length[orig]}];
  Return[FreeQ[#, var]&/@res];
]

(*******************************************************************************
 * 
 *  Integrate NNLO integral at the boundary -- massive method
 *
 ******************************************************************************)
ProcessIntegralNNLOMassive[integral_] := Module[{tmp, ReplChangeVar, jac, 
                                                 intx, inty, reslist = {}, 
						 ypow, tmpscaled, yratio,
						 tmplist, scalelist
						 (*,x,y*)},
  tmp = integral/. measure[ddk] -> dkT kT^(d - 3) Subscript[S, d - 3];
  tmp = tmp //. {k.k^pow_. -> (kp km - kT^2)^pow, k0 -> 1/2 (kp + km),
                 theta[expr_/2] -> theta[expr]};
  tmp = Expand[tmp] //.  dkT fac_ Int[delta[-1 + kT] rest_] :>  
                         ReplaceAll[fac Int[rest], kT :> 1];
  tmp = tmp /. theta[km + kp] -> 1;
  tmp = tmp /. {n1.k -> kp, n2.k -> km};
  ReplChangeVar = {km -> Sqrt[x/y], kp -> Sqrt[x y]};
  jac = FullSimplify[Det[{D[#, x] & /@ ReplChangeVar[[All, 2]], 
                          D[#, y] & /@ ReplChangeVar[[All, 2]]}], 
                     Assumptions -> {x > 0, y > 0}];
  tmp = FullSimplify[tmp /. ReplChangeVar, Assumptions -> {x > 0, y > 0}] /. 
                     {x -> x + 1} /.  theta[x] -> 1 // PowerExpand;
  tmp = tmp /. Int[expr__] -> Int[jac expr] // FullSimplify;

  tmp = Expand[tmp] //. fac_ Int[delta[exp_ + x] rest_] :>  
                        ReplaceAll[fac Int[rest], x :> -exp];
  If[tmp == 0, Return[0]];

  (*Check if the integral is scaleless. If so, set it to zero. *)
  scalelist=CheckScalelessness[(tmp/.Int[arg_]-> arg),y];
  tmplist = If[Head[tmp]===Plus,List@@Expand[tmp], {tmp}];
  tmplist=Table[If[scalelist[[i]],0,tmplist[[i]]],{i,1,Length[tmplist]}];

  tmp = Plus@@tmplist;
  tmp = tmp /.  Int[arg_] :>  
     Integrate[arg, {y, 0, Infinity}, GenerateConditions -> False];
  tmp = tmp /. theta[arg_] -> HeavisideTheta[arg](*//Simplify*);
  Return[tmp];
]

(*******************************************************************************
 *
 * Save a list of functions of the type func[z] to a file.
 * 
 * Arguments
 *   filename   -   string
 *   funclist   -   list of lists of the form {{funcname, funcbody},{},...}
 * 
 * Example
 *   SaveFunctions["Iij2.m", {{Iij2[z], "Iij2[z_]"}}]
 *
 *
 ******************************************************************************)

SaveFunctions[filename_,funclist_] := Block[{funcname, function, pos},

  Do[
    function = funclist[[pos]][[1]];
    funcname = funclist[[pos]][[2]];
    WriteString[filename, funcname <>" := "];
    Write[filename, function];
    WriteString[filename, "\n"];
    , {pos,1,Length[funclist]}
  ];

  Close[filename];

];

AssignFromFile[fname_] := Module[{var},
  var = Read[fname];
  Close[fname];
  Return[var];
]

MySeriesCoefficient[eqlist_, nap_, nep_] := Module[{res},
  res = eqlist /. Equal -> List;
  res = SeriesCoefficient[res, {ap, 0, nap}, {ep, 0, nep}];
  res = Table[res[[i]]/. List-> Equal, {i,1,Length[res]}];
  Return[res // Simplify];
]


MySeriesCoefficient[eqlist_, nap_] := Module[{res},
  res = eqlist /. Equal -> List;
  res = SeriesCoefficient[res, {ap, 0, nap}];
  res = Table[res[[i]]/. List-> Equal, {i,1,Length[res]}];
  Return[res // Simplify];
]

(*******************************************************************************
 *
 * Integrate analytically an expression with delta, star and plus distributions
 *
 * Arguments
 *   expr  -  expression to be integrated
 *   lim   -  variable and limits in the form: {x,min,max}
 *   ass   -  assumptions in a form of the list {ass1, ass2,...}
 *
 ******************************************************************************)

IntegrateExpression[expr_,lim_,ass_] := Module [{listToIntegrate, kappa},

  (* Auxiliary variable kappa introduced to allow for unified treatment of
     expressions consisting of several or just one term (in the latter case
     ``List@@'' would lead to incorrect result and ``+kappa'' fixes that problem
  *)

  listToIntegrate = List @@ (expr+kappa);
  (Plus @@ (IntegrateFunction[#, lim, ass] & /@ listToIntegrate)) /. kappa-> 0
];

NIntegrateExpression[expr_,lim_,ass_,be_,theta_] := Module [{listToIntegrate, kappa},

  (* Auxiliary variable kappa introduced to allow for unified treatment of
     expressions consisting of several or just one term (in the latter case
     ``List@@'' would lead to incorrect result and ``+kappa'' fixes that problem
  *)

  listToIntegrate = List @@ (expr+kappa)/.beta->be/.CosTheta->Cos[theta];
  (Plus @@ (NIntegrateFunction[#, lim, ass] & /@ listToIntegrate)) /. kappa-> 0
];


(*******************************************************************************
 *
 * Integrate analytically a function with delta, star and plus distributions
 *
 * Arguments
 *   expr  -  expression to be integrated
 *   lim   -  variable and limits in the form: {x,min,max}
 *   ass   -  assumptions in a form of the list {ass1, ass2,...}
 *
 ******************************************************************************)

IntegrateFunction[expr_, lim_, ass_] := Module[
{x = lim[[1]], xlo = lim[[2]], xup = lim[[3]], func, distarg, res, mainpart,
remainder, dist, arg},

  distarg = Cases[Flatten[{expr}], (f:(delta|star|plus))[x_] -> {f,x}, -1];


  If[Length[distarg]==0,

    (* case without a distribution *)
      res = Simplify[Integrate[expr, lim, GenerateConditions -> False], Assumptions -> ass],

    (* case with a distribution *)
      dist=distarg[[1]][[1]];
      arg=distarg[[1]][[2]];
      If[(dist==star)&&(xlo!=0), Return["Lower limit has to be equal to 0"]];

      func = expr/dist[arg]; (* function multiplying dist[arg] *)

      (* case with star[] *)
        If[dist==star,
           res = Integrate[arg (func - ReplaceAll[func, x -> 0]), lim, GenerateConditions -> False, Assumptions -> ass]; 
         ];

      (* case with delta[] *)
        If[dist==delta,
            res = ReplaceAll[func, Flatten[Solve[arg==0,x]]];
          ];

      (* case with plus[] *)
        If[dist==plus,
           (* first part with subtraction *)
           mainpart = Integrate[arg (func - ReplaceAll[func, x -> 1]), lim, 
                                Assumptions -> ass]; 
				 
           (* remainder with integrated plus argument *)
           remainder = ReplaceAll[func, x -> 1] 
                       Simplify[Integrate[arg, {x, 0, xlo}], Assumptions->ass];
           res = mainpart - remainder;
           ];
  ];

  Return[res];
];  


IntegrateFunction[expr_, lim_, ass_] := Module[
{x = lim[[1]], xlo = lim[[2]], xup = lim[[3]], func, distarg, res, mainpart,
remainder, dist, arg},

  distarg = Cases[Flatten[{expr}], (f:(delta|star|plus))[x_] -> {f,x}, -1];


  If[Length[distarg]==0,

    (* case without a distribution *)
      res = Simplify[Integrate[expr, lim, GenerateConditions -> False], Assumptions -> ass],

    (* case with a distribution *)
      dist=distarg[[1]][[1]];
      arg=distarg[[1]][[2]];
      If[(dist==star)&&(xlo!=0), Return["Lower limit has to be equal to 0"]];

      func = expr/dist[arg]; (* function multiplying dist[arg] *)

      (* case with star[] *)
        If[dist==star,
           res = Integrate[arg (func - ReplaceAll[func, x -> 0]), lim, GenerateConditions -> False, Assumptions -> ass]; 
         ];

      (* case with delta[] *)
        If[dist==delta,
            res = ReplaceAll[func, Flatten[Solve[arg==0,x]]];
          ];

      (* case with plus[] *)
        If[dist==plus,
           (* first part with subtraction *)
           mainpart = Integrate[arg (func - ReplaceAll[func, x -> 1]), lim, 
                                Assumptions -> ass]; 
				 
           (* remainder with integrated plus argument *)
           remainder = ReplaceAll[func, x -> 1] 
                       Simplify[Integrate[arg, {x, 0, xlo}], Assumptions->ass];
           res = mainpart - remainder;
           ];
  ];

  Return[res];
];  

NIntegrateFunction[expr_, lim_, ass_] := Module[
{x = lim[[1]], xlo = lim[[2]], xup = lim[[3]], func, distarg, res, mainpart,
remainder, dist, arg},

  distarg = Cases[Flatten[{expr}], (f:(delta|star|plus))[x_] -> {f,x}, -1];


  If[Length[distarg]==0,

    (* case without a distribution *)
      res = Simplify[Integrate[expr, lim, GenerateConditions -> False], Assumptions -> ass],

    (* case with a distribution *)
      dist=distarg[[1]][[1]];
      arg=distarg[[1]][[2]];
      If[(dist==star)&&(xlo!=0), Return["Lower limit has to be equal to 0"]];

      func = expr/dist[arg]; (* function multiplying dist[arg] *)

      (* case with star[] *)
        If[dist==star,
           res = NIntegrate[arg (func - ReplaceAll[func, x -> 0]), lim(*, GenerateConditions -> False, Assumptions -> ass*)]; 
         ];

      (* case with delta[] *)
        If[dist==delta,
            res = ReplaceAll[func, Flatten[Solve[arg==0,x]]];
          ];

      (* case with plus[] *)
        If[dist==plus,
           (* first part with subtraction *)
           mainpart = NIntegrate[arg (func - ReplaceAll[func, x -> 1]), lim(*, 
                                Assumptions -> ass*)]; 
				 
           (* remainder with integrated plus argument *)
           remainder = ReplaceAll[func, x -> 1] 
                       Simplify[NIntegrate[arg, {x, 0, xlo}](*, Assumptions->ass*)];
           res = mainpart - remainder;
           ];
  ];

  Return[res];
];  


(*******************************************************************************
 * 
 *  Generic expansion of integrals in ap and ep
 *
 ******************************************************************************)

ExpandedMasters[F_, mi_, mf_, ni_, nf_] := Module[{res},
  res = Table[ap^m ep^n F[m, n][beta], {m, mi, mf}, {n, ni, nf}];
  res = res /. 
    Derivative[1][f_][xap_, xep_] -> Derivative[1][f[xap, xep]];
  res = Plus @@ Flatten[res];
  Return[res];
]


ExpandedMastersList[intlist_, range_] := Module[{OutList, DerList},
  DerList = Derivative[1][#] & /@ intlist;
  OutList = Table[Thread[#[[i]] -> 
     ExpandedMasters[#[[i]], range[[1]], range[[2]], range[[3]], range[[4]]]], 
     {i, 1, Length[#]}] & /@ {intlist, DerList};
  Return[OutList // Flatten];
]

SolveDiffEq[eq_] := Module[
  {var = Cases[eq, F_[x1_, x2_][beta], -1][[1]], sol},
  sol = DSolve[Equal @@ eq /. ReplSymbols, var, beta] // Flatten;
  Return[sol];
];

DSolveGeneral[eqlist_] := Module[{res, subst, sol = {}},
  Do[
   If[n > 1,
    subst = Flatten[Table[res[i], {i, 1, n - 1}]], subst = {}];
   res[n] = SolveDiffEq[eqlist[[n]] /. subst];
   AppendTo[sol, res[n]];
   , {n, 1, Length[eqlist]}];
  Return[sol // Flatten];
];
