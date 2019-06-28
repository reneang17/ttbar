(*******************************************************************************
 *
 *
 ******************************************************************************)

Print["PVReduction package by Sebastian Sapeta, 2017"];
(*
BeginPackage["PVReduction`"]

ContractReplNumWrapShift::usage = ""

Begin["`Private`"]
*)
(*******************************************************************************
 *
 * Replacaments 
 *
 ******************************************************************************)
ReplContractions = {
   g[mu, nu] g[mu, nu] -> d,
   g[mu, nu] v1_[mu] v2_[nu] -> sp[v1, v2],
   g[mu_, nu_] v_[nu_] -> v[mu],
   g[mu_, nu_] v_[mu_] -> v[nu],
   v1_[i_] v2_[i_] -> sp[v1, v2],
   v1_[i_]^2 -> sp[v1, v1],
   g[mu_, a2_] g[mu_, b2_] -> g[a2, b2], 
   g[a2_, mu_] g[b2_, mu_] -> g[a2, b2], 
   g[a2_, mu_] g[mu_, b2_] -> g[a2, b2],
   g[arg_,arg_] -> d,
   g[arg1_,arg2_]^2-> g[arg1,arg1]
};

ReplScalarProducts = {
   sp[q, q] -> q.q,
   sp[q, k] -> sp[k,q],
   sp[q, n] -> sp[n,q],
   sp[k, k] -> d1[m1] + m1^2,
   sp[n, q] -> n.q,
   sp[n, n] -> 0
};

ReplWrap = {
   INT[argINT_] Power[d1[argd1_], n_.] -> INT[argINT d1[argd1]^n], 
   INT[argINT_] Power[d2[argd2_], n_.] -> INT[argINT d2[argd2]^n],
   INT[argINT_] Power[k[argk_], n_.] -> INT[argINT k[argk]^n],
   (*
   INT[argINT_] Power[n[argk_], pow_.] -> INT[argINT n[argk]^pow],
   INT[argINT_] Power[(prop:d3[arg_]|d4[arg_]), n_.] -> INT[argINT prop[arg]^n] 
   *)
   INT[argINT_] Power[d3[arg_], n_.] -> INT[argINT d3[arg]^n],
   INT[argINT_] Power[d4[arg_], n_.] -> INT[argINT d4[arg]^n] 
};

ReplPVIntegrals = {
   INT[1/d1[m_]] -> A0[m],
   INT[1/d2[m_]] -> A0[m],
   INT[1/(d1[m1_] d2[m2_])] -> B0[m1, m2],
   INT[k[mu_]/d1[m_]] -> 0,
   INT[k[mu_]/(d1[m1_] d2[m2_])] -> q[mu] B1,
   INT[1/(d3[ap3_] d4[ap4_] d1[m_])] -> A0[ap3,ap4],
   INT[1/(d3[ap3_] d4[ap4_] d2[m_])] -> A0[ap4,ap3],
   INT[1/(d3[ap3_] d4[ap4_] d1[m1_] d2[m2_])] -> B0[ap3,ap4],
   INT[k[mu_]/(d3[ap3_] d4[ap4_] d1[m1_] d2[m2_])] -> q[mu] Bq + n[mu] Bn
};

ReplShifts = {
   INT[k[mu_]/d2[m2]] -> INT[k[mu]/d1[m2]] - q[mu] INT[1/d1[m2]], 
   INT[k[mu_]/(d3[alpha_] d4[alpha_] d2[m2])] -> 
                                      INT[k[mu]/(d3[alpha] d4[alpha] d1[m2])] - 
                                      q[mu] INT[1/(d3[alpha] d4[alpha] d1[m2])] 
};

ReplZeroMass = {
   m1 -> 0, 
   m2 -> 0
};

Repld3d4Powers = {
  d3[arg1_]^pow1_. d3[arg2_]^pow2_. -> 1/d3[-pow1 arg1 - pow2 arg2]
};

(*******************************************************************************
 *
 * Triple gluon vertex - kinematic part (all momenta incoming)
 *
 ******************************************************************************)
tgvF[mu_, p_, nu_, q_, sigma_, r_] := Module[{res, ReplSums},

     ReplSums = {Plus[fac1_. arg1_, fac2_. arg2_][index_] -> 
                 fac1 arg1[index] + fac2 arg2[index]};

     res = (p - q)[sigma] g[mu, nu] + 
           (q - r)[mu] g[nu, sigma] + 
	   (r - p)[nu] g[sigma, mu];

     Return[res/.ReplSums];
]

(*******************************************************************************
 *
 * Function generating numerator replacements based on the provided propagators
 *
 ******************************************************************************)
GenNumReplacements[name_, expr_] := Module[
  {res, 
  repl = {k q -> sp[k, q], k n -> sp[k, n], k k -> sp[k, k], 
          Power[q,2]-> sp[q,q]}},

  If[name == d2,
   res = Flatten[Solve[(Expand[expr] /. repl) == d2[m2], sp[k, q]]];
  ];
  If[name == d3,
   res = Flatten[Solve[1/d3[-1] == (expr /. repl), sp[k, n]]];
  ];
  Return[res];
]

(*******************************************************************************
 *
 * 
 *
 ******************************************************************************)
ContractReplNumWrapShift[equation_, vector_, numrepl_] := Module[{res},

  res = Expand[equation vector] //. ReplContractions //. ReplScalarProducts 
                                //. numrepl //. ReplScalarProducts;
  res = Expand[res INT[1]] //. ReplWrap /. INT[1] -> 1 /. ReplShifts;
  res = res /. Repld3d4Powers;

  Return[res];
];

(*
End[]
EndPackage[]
*)
