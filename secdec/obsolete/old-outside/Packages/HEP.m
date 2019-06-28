(******************************************************************************
 *                                                                            *
 *                                                                            *
 ******************************************************************************)
Print["HEPFunc Package"," by Sebastian Sapeta"];

BeginPackage["HEP`"]

(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)

HEPFunc::usage = "Implementation of methods repetedly needed in HEP calculaations"

JacobianMatrix::usage = ""
JacobianDeterminant::usage = ""
InvertReplacement::usage = "InvertReplacement[repl, vars] reverts replacement
'repl' by solving it for new variables 'vars.'"
FuncFromReplRule::usage = ""
EvalPlus::usage = ""

Begin["`Private`"]

(******************************************************************************
 *                                                                            *
 * Calculate Jacobian matrix for the transformation: {x} = f({y}), where {x}  * 
 * corresponds to the new and y to the old variables.                         *
 *                                                                            *
 ******************************************************************************)

JacobianMatrix[f_List?VectorQ, x_List] := Module[{},
  Outer[D, f, x] /; Equal @@ (Dimensions /@ {f, x})
]


(******************************************************************************
 *                                                                            *
 * Calculate Jacobian determinant for the transformation: {x} = f({y}),       *
 * where {x} corresponds to the new and {y} to the old variables.             *
 *                                                                            *
 ******************************************************************************)

JacobianDeterminant[f_List?VectorQ, x_List] :=
  Det[JacobianMatrix[f, x]] /; Equal @@ (Dimensions /@ {f, x})


(******************************************************************************
 *                                                                            *
 * Invert replacement rule {x} -> {f({y})} to {y} -> {f({x})},  where {x}     *
 * correspond to the new and {y} to the old variables.                        *
 * Arguments                                                                  *
 *   repl   -  list with replacement rules {new -> old}                       *
 *   vars   -  new variables appear in the 'repl' list                        *
 *                                                                            *
 ******************************************************************************)

InvertReplacement[repl_, vars_] := Module[{equations},
  equations = repl //. {Rule[left__, right__] -> Equal[left, right]};
  Return[Together @@ Solve[equations, vars]];
]

(******************************************************************************
 *                                                                            *
 * For vector functions from replacement rules. Output takes the form:        *
 * {{f}, {new variables}}                                                     *
 * Arguments                                                                  *
 *   replrule    - list with replacement rules {new -> old}                   *
 *   invreplrule - list with inverse replacement rules {old -> new}           *
 *                                                                            *
 ******************************************************************************)

FuncFromReplRule[replrule_, invreplrule_] := Module[{newvars, funcvec},
  newvars = replrule /. Rule[left__, right__] :>  left;
  funcvec = invreplrule /. Rule[left__, right__] :>  right;
  Return[{funcvec, newvars}];
]

(******************************************************************************
 *                                                                            *
 * Evaluate plus distribution for further integration                         *
 * Arguments                                                                  *
 *   expr  - full integratad containing plus distribution                     *
 *   var   - variable of integration                                          *
 *                                                                            *
 ******************************************************************************)

EvalPlus[expr_, var_] := Block[{tmp,f,b},
  Cases[f[b],f[_],-1]
  (*
  Print[tmp //.plus :> PLUS]
  expr //. {func_ plus[p_] -> p (func - Limit[func , var ->  1])}
  *)
]


End[]
EndPackage[]
