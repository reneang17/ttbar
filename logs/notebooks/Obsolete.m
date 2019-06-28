
(*******************************************************************************
 *
 * Integrate expressions with plus prescription. 
 * / This function is now replaces by IntegrateExpression /
 *
 ******************************************************************************)

IntegratePlus[expr_, limits_, assumptions_] := Module[
  {x = limits[[1]], xlo = limits[[2]], xup = limits[[3]], func, fplus,
    mainpart, remainder},

  (* argument of plus[arg] *)
  fplus = Cases[Flatten[{expr}], plus[arg_] -> arg, -1];

  If[Length[fplus] == 0,

   (** case without plus[], regular integration **)
   
   mainpart = Simplify[Integrate[expr, limits], Assumptions -> assumptions];
   remainder = 0,

   (*** case with plus[] ***)
   fplus = fplus[[1]];
   func = expr/plus[fplus]; (* function multiplying plus[arg] *)

   (* first part, with subtraction *)
   mainpart = Integrate[fplus (func - ReplaceAll[func, x -> 1]), limits, 
     Assumptions -> assumptions]; 

   (* remainder with integrated plus argument *)
   remainder = ReplaceAll[func, x -> 1] Simplify[Integrate[fplus, {x, 0, xlo}], 
      Assumptions -> assumptions]
   ];

  Return[mainpart - remainder];
]

(*******************************************************************************
 *
 * Main function for computation of Dij and Eij
 *
 ******************************************************************************)

ComputeDijEijObsolete[func_, xi_] := Module[{expr,res,listToIntegrate, exprIntegrated},

  expr = func // Expand;
  expr = expr /.{F_ DiracDelta[-1 + xi] :> xi0 ReplaceAll[F, xi :>  1]};
  expr = expr /.{F_ DiracDelta[-1 + z/xi] :> xi0 z ReplaceAll[F, xi :>  z]};

  (* Already integrated terms are proportional to xi0. 
     Remaining terms still need to be integrated *)
  
  listToIntegrate = List @@ (expr /. xi0 -> 0);
  exprIntegrated = Coefficient[expr, xi0];
  res = Plus @@ (IntegratePlus[#, {xi, z, 1}, {z > 0, z < 1}] & /@ 
        listToIntegrate) + exprIntegrated // Expand;

  Return[res];
]



