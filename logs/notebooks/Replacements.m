
(*******************************************************************************
 *
 * Mathematical relations
 *
 ******************************************************************************)

ReplLogs = {
  ArcTanh[z_]  -> 1/2 (Log[1+z] - Log[1-z]),
  Log[z+1/z-2] -> 2 Log[1-z] - Log[z],
  Log[1/z]     -> -Log[z],
  Log[1/z-1]   -> Log[1-z]-Log[z]
};

ReplPlus = {
  plus[(1 + z^2)/(1 - z)] -> 
  2 plus[1/(1 - z)] - (1 + z) + 3/2 DiracDelta[-1 + z], 
  Log[z]^n_. plus[1/(1 - z)] -> Log[z]^n/(1 - z),
  z plus[Log[(1 - z)^2/z]/(1 - z)] -> plus[Log[(1 - z)^2/z]/(1 - z)] -
  Log[(1-z)^2/z],
  z^pow_. plus[1/(1 - z)] -> plus[1/(1 - z)] + (z^pow - 1) /(1 - z)
};

ReplHarmonic = {
  H[-1, -1, 0, arg_] -> 1/6 (-\[Pi]^2 Log[1 + arg] + Log[1 + arg]^3 - 
                      6 PolyLog[3, 1/(1 + arg)]) + Zeta[3]
};

ReplBeta34 = {beta34 -> -Log[xs] - cI Pi};


ReplRiemann = {Coth[beta34] -> (1 + beta^2)/(2 beta), 
               Log[1 - E^(-2 beta34)] -> Log[4 beta/(1 + beta)^2], 
               PolyLog[weight_, E^(-2 beta34)] -> 
	       PolyLog[weight, (-1 + beta)^2/(1 + beta)^2]
};


ReplIPowers = {Power[cI, 2] -> -1, Power[cI, 3] -> -cI};

Replxs = {xs -> (1 - beta)/(1 + beta)};

ReplLogsu1t1 = {Log[t1^2/u1^2] -> 2 Log[t1/u1], 
                Log[-(t1/(M mt))] -> Log[t1/u1] + Log[-(u1/(M mt))], 
                Log[t1^2/(M^2 mt^2)] -> 2 Log[-(t1/(M mt))]
};

ReplColour = {CA -> Nc, CF -> (Nc^2 - 1)/(2 Nc)};


(* Colour matrices *)
ReplColMatrices = {
   w[1, 3] -> -(CF/2) {{0, 1}, {1, 2 CF - Nc/2}},
   w[1, 4] -> -(CF/(2 Nc)) {{0, -Nc}, {-Nc, 1}},
   w[2, 3] -> -(CF/(2 Nc)) {{0, -Nc}, {-Nc, 1}},
   w[3, 3] -> CF/2 {{2 Nc, 0}, {0, CF}},
   w[3, 4] -> -(CF/(4 Nc)) {{4 Nc^2, 0}, {0, -1}}
};

ReplColMatricesGG = {
   w[3, 4] -> - {{CF Nc, 0, 0}, {0, -1/4, 0},{0, 0, -(Nc^2-4)/(4 Nc^2)}},
   w[3, 3] -> CF/(2 Nc) {{2 Nc^2, 0, 0}, {0, Nc^2, 0},{0, 0, Nc^2-4}},
   w[1, 3] -> -1/8 {{0, 4 Nc, 0}, {4 Nc, Nc^2, Nc^2-4},{0, Nc^2-4, Nc^2-4}},
   w[1, 4] -> -1/8 {{0, -4 Nc, 0}, {-4 Nc, Nc^2, -Nc^2+4},{0, -Nc^2+4, Nc^2-4}},
   w[2, 3] -> -1/8 {{0, -4 Nc, 0}, {-4 Nc, Nc^2, -Nc^2+4},{0, -Nc^2+4, Nc^2-4}}
};



ReplNumbers = {CF -> 4/3, Nc -> 3, CA -> 3, TF -> 1/2};

ReplNotation = {\[Beta]t -> beta, Mtt-> M, \[Beta]0 -> beta0, 
                \[Beta]34 -> beta34, hscale -> mu,
                Li2[arg_]-> PolyLog[2,arg], \[Theta] -> theta};

ReplFixLi = {Li2[1 - t1^2/(M^2 mt^2)] -> Li2[1 - (u1 t1)/(M^2 mt^2)], 
             Li2[1 - u1^2/(M^2 mt^2)] -> Li2[1 - (u1 t1)/(M^2 mt^2)]
};

ReplzDelta = {DiracDelta[-1 + z] F_ :> DiracDelta[-1 + z] ReplaceAll[F, z -> 1]};

(*******************************************************************************
 * 
 * Fourier transform leading to  LT -> qT replacements 
 * We define 
 *   LqT[n] = 1/qT^2 Log[qT^2/mu^2]^n
 ******************************************************************************)
ReplFourierTransform = {
  pow[LT,     kappa] ->     delta[qT2],
  pow[LT, 1 + kappa] ->  -  star[LqT[0]],
  pow[LT, 2 + kappa] ->   2 star[LqT[1]], 
  pow[LT, 3 + kappa] ->  -3 star[LqT[2]] -  4 Zeta[3] delta[qT2],
  pow[LT, 4 + kappa] ->   4 star[LqT[3]] + 16 Zeta[3] star[LqT[0]]
};


(*******************************************************************************
 * 
 * Replace LqT[n] ->  1/qT^2 Log[qT^2/mu^2]^n and integrated version
 *
 ******************************************************************************)
(*
ReplqT = Thread[LqT[#] -> 1/qT2 Log[qT2/mu^2]^#] & /@ Range[0, 3]
*)

ReplqT = Thread[If[#>=0,LqT[#] -> 1/qT2 Log[qT2/mu^2]^#,LqT[#]->0]] & /@ Range[0, 3]

ReplIntegratedqT = {
delta[qT2]   -> 1, 
star[LqT[0]] -> -Log[mu^2/qT2],
star[LqT[1]] -> -(1/2) Log[mu^2/qT2] Log[qT2/mu^2],
star[LqT[2]] -> -Log[1/mu^2]^2 Log[mu^2/qT2] - Log[1/mu^2] (Log[mu^2]^2 - 
                 Log[qT2]^2) + 1/3 (-Log[mu^2]^3 + Log[qT2]^3), 
star[LqT[3]] -> 1/4 (-Log[mu^2]^4 - 4 Log[1/mu^2]^3 Log[mu^2/qT2]+ Log[qT2]^4 - 
                6 Log[1/mu^2]^2 (Log[mu^2]^2 - Log[qT2]^2) - 
		4 Log[1/mu^2] (Log[mu^2]^3 - Log[qT2]^3))};


(*******************************************************************************
 * 
 * All HSiinm names
 *
 ******************************************************************************)
allHSes = Flatten[Flatten[Table["HS" <> (ToString[#]) <> ToString[i] <> 
                  ToString[j], {i, 0, 2}, {j, 0, i}]] & /@ {qq}] // ToExpression

ReplTmp= {Pqg1[_]-> 0, Pgq1[_]-> 0};


(*******************************************************************************
 * 
 * Replace HSiinm -> hsiinm
 *
 ******************************************************************************)
ReplHShs = {HSqq00 -> hsqq00, HSqq11 -> hsqq11, HSqq10 -> hsqq10, 
            HSqq21 -> hsqq21, HSqq22 -> hsqq22, HSgg00 -> hsgg00, 
	    HSgg11 -> hsgg11, HSgg10 -> hsgg10, HSgg21 -> hsgg21, 
	    HSgg22 -> hsgg22};

(*******************************************************************************
 * 
 * Obsolete
 *
 ******************************************************************************)
(* 
  Replacements to make the complex structure of the Log, Li2 and Li3  functions
  manifest.

  The thing is that Li_n(z) is real-valued if Re[z] < 1. Hence, our particular
  functions, like Li_2(1/xs^2), do return complex values because  0 < xs < 1.
  The above fact cannot be changed. What is worth doing, however, is to make the
  real and the imaginary parts explicit by transforming the formulae such that
  everything is expressed through real-valued functions. Then, the
  real-imaginary structure of the results is manifest. And that is the goal of
  the transformations below.
*)
ReplComplexLog = {Log[1 - 1/xs^2] -> Log[1/xs^2 - 1] + cI Pi};

ReplComplexPolyLog2 = {PolyLog[2, 1/xs^2] -> Pi^2/3 + 2 cI Pi Log[xs] - 
                                            2 Log[xs]^2 - PolyLog[2, xs^2]};

ReplComplexPolyLog3 = {PolyLog[3, 1/ xs^2] -> -(2/3) Log[xs] (Pi^2 + 
                                              3 cI Pi Log[xs] -
                                              2 Log[xs]^2) + PolyLog[3, xs^2]};
ReplRiemannOld = {Coth[cI Pi + arg_] -> Coth[arg], 
               PolyLog[n_, E^(-2 (cI Pi + Log[arg_]))] -> PolyLog[n, 1/arg^2], 
               Log[1 - arg_ E^(-2 cI Pi)] -> Log[1 - arg], 
               Log[1 - E^(-2 (cI Pi + Log[arg_]))] -> Log[1 - 1/arg^2]
};
(*
ReplSymbols = ReplBeta34;
*)
