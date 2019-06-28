(*******************************************************************************
 *
 *
 ******************************************************************************)

BeginPackage["CommonFunctions`", {"MathFunctions`"}]

IntegrateExpression::usage = "IntegrateExpression[expr,lim,ass] 

Returns integral of a general expression \"expr\" in the limits \"lim\" with
assumptions \"ass\".";

IntegrateFunction::usage = "IntegrateFunction[expr, lim, ass]

Returns integral of a function (i.e. a single expression in the sense of
Expand[]) \"func\" in the limits \"lim\" with assumptions \"ass\".";

DeltaIntegrate::usage = "DeltaIntegrate[func, zis]

Integrate analytically expressions with DiracDelta of z1 and z2. The function
accepts also a sum of terms as an input. Used to obtain Sigma functions from Cii
functions.";

IntegrateConvolution::usage = "IntegrateConvolution[integrand, xi]

Integrate convolution of the form \[Integral]_z^1 dxi/xi f(xi) g(z/xi)."

SaveFunctions::usage = "SaveFunctions[filename,funclist]

Save a list of functions of the type func[z], given as a list in \"funclist\" to
a file \"filename\".";

Begin["`Private`"]

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
      res = Simplify[Integrate[expr, lim], Assumptions -> ass],

    (* case with a distribution *)
      dist=distarg[[1]][[1]];
      arg=distarg[[1]][[2]];
      If[(dist==star)&&(xlo!=0), Return["Lower limit has to be equal to 0"]];

      func = expr/dist[arg]; (* function multiplying dist[arg] *)

      (* case with star[] *)
        If[dist==star,
           res = Integrate[arg (func - ReplaceAll[func, x -> 0]), lim, 
                           Assumptions -> ass]; 
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


(*******************************************************************************
 *
 * Integrate analytically expressions with DiracDelta of z1 and z2
 *
 * The function accepts also a sum of terms as an input.
 *
 * Used to obtain Sigma functions from Cii functions.
 *
 ******************************************************************************)

DeltaIntegrate[func_, z1_, z2_] := Module[{Repl, res},

  res = func // Expand;

  (* Integrate over DiracDelta[1-z1] and DiracDelta[1-z2] *)

  Repl = {DiracDelta[-1 + x : z1 | z2] F_[args__] rep[a___] -> 
     F[args] rep[a, x ->  1]};

  res = (rep[]  res // Expand) //. Repl;
  res = res //. {fac_ rep[args___] -> R[fac, {args}]};
  res = res //. R -> ReplaceAll;


  (* Integrate terms with convolution of plus distributions 

     Gives the same result as in the Dqq and Dgg functions.

     The critical thing here is that the term where me make this substitution
     there are no more z1 and z2 except for those assumed in the replacement.
     If this is not the case, the relation used in the replacement is not
     correct. TODO: one could add some test whether this operation has been
     performed correctly.
  *)
  Repl = {1/z1/z2 DiracDelta[z - z1 z2] plus[1/(1 - z1)] plus[1/( 1 - z2)] -> 
          1/z plus[Log[(1 - z)^2/z]/(1 - z)]};
  res = res //. Repl;

  (* Integrate terms with plus distribution over DiracDelta[z-z1z2]

     The idea is that we want to integrate over zi != x, where x is the variable 
     entering the plus[] prescription. And this is the origin of (z1+z2-x) ->
     z/x. With this design, the argument of plus[] is not changed after
     consuming DiracDelta[z-z1z2]. The origin of 1/x comes from change of
     variables needed to integrate DiracDelta[z-z1z2] over zi and is explained
     in my notes. The remaining integral over zi != x has to be performed in the
     range [z,1], which matters for plus prescrition and is explained below 
  *)

  Repl = F_ DiracDelta[z - z1 z2] plus[1/(1 - x_)] :> 
	 plus[1/(1 - x)] 1/x ReplaceAll[F, (z1 + z2 - x) -> z/x];
  res = res //. Repl;

  (* Integrate over DiracDelta[z-z1] and DiracDelta[z-z2] *)

  Repl = {DiracDelta[z - x : z1 | z2] F_ -> R[F, x ->  z]};
  res = res //. Repl;
  res = res /. R -> ReplaceAll;

  (* Explicit expression for plus[]

     The key thing is that after DiracDelta[z-z1z2] has been consumed, 
     the remaining integral over z1 or z2 has limits [z,1] and this affect 
     the plus precription. Hence, the HeavisideTheta and the third term in 
     the substitution below. 
   *)

  Repl = {F_  plus[1/(1 - zi : z1 | z2)] :>  
          1/(1 - zi) (F - ReplaceAll[F, zi -> 1]) HeavisideTheta[zi - z] + 
          ReplaceAll[F, zi -> 1] Log[1 - z]};
  res = res //. Repl;

  (* Integrate the entire expression in the range z1, z2 \in [0,1] 

     This integration consumes all the HeavisideTheta functions and the
     remaining DiracDelta[z-z1z2] functions. The only subtlety here is the
     assumption z \in (0,1) rather than z \in [0,1]. The fact is, however,
     that what we get as a result is integrable in z, so both 0 and 1 form 
     sets of measure zero.

     It turns out that the integration below does not work properly for C2qq2qq,
     where the term ~ LT^4 DiracDelta[-1+z] dissapears. That is why we replace
     DiracDelta with delta and then perform the integration. For the moment I do
     not understand why this is necessary.
   *)


  res =  res /. DiracDelta[-1+z]-> delta[-1+z];

  res = Integrate[res, {z1, 0, 1}, {z2, 0, 1}, Assumptions -> {z < 1, z > 0}];

  Return[res /. delta[-1+z]-> DiracDelta[-1+z]];

]

(*******************************************************************************
 *
 * Integrate convolution of the form
 *
 *   int_z^1 dxi/xi f(xi) g(z/xi)
 *
 ******************************************************************************)

IntegrateConvolution[func_, xi_] := Module[{expr,res,exprToIntegrate, 
                                            exprIntegrated},

  expr = func // Expand;
  expr = expr /.{F_ DiracDelta[-1 + xi] :> xi0 ReplaceAll[F, xi :>  1]};
  expr = expr /.{F_ DiracDelta[-1 + z/xi] :> xi0 z ReplaceAll[F, xi :>  z]};
  (* Convolution of plus prescriptions *)
  expr = expr /.plus[1/(1 - z/xi)] plus[1/(1 - xi)] -> 
                xi0 xi plus[Log[(1 - z)^2/z]/(1 - z)];
  expr = expr /.{fac_ plus[1/(1 - z/xi)] :> 
                ReplaceAll[fac , xi -> z/xi] z/xi^2 plus[1/(1 - xi)]};

  (* Already integrated terms are proportional to xi0. 
     Remaining terms still need to be integrated *)
  
  exprToIntegrate = (expr) /. xi0 -> 0;
  exprIntegrated = Coefficient[expr, xi0];
  res = IntegrateExpression[exprToIntegrate, {xi, z, 1}, {z > 0, z < 1}] +
        exprIntegrated // Expand;

  Return[res];
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

];

End[]
EndPackage[]
