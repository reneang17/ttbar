
(*
 * Replacements Surface of d-dimensional sphere
 *)
ReplSdim = {Subscript[S, dim_] -> (2 Pi^((dim + 1)/2))/Gamma[1/2 (dim + 1)]};


(*
 * Colour matrices
 *)
ReplColMatrices = {
   w[1, 3] -> -(CF/2) {{0, 1}, {1, 2 CF - Nc/2}},
   w[1, 4] -> -(CF/(2 Nc)) {{0, -Nc}, {-Nc, 1}},
   w[3, 3] -> CF/2 {{2 Nc, 0}, {0, CF}},
   w[3, 4] -> -(CF/(4 Nc)) {{4 Nc^2, 0}, {0, -1}}
};

ReplColMatricesGG = {
   w[3, 4] -> - {{CF Nc, 0, 0}, {0, -1/4, 0},{0, 0, -(Nc^2-4)/(4 Nc^2)}},
   w[3, 3] -> CF/(2 Nc) {{2 Nc^2, 0, 0}, {0, Nc^2, 0},{0, 0, Nc^2-4}},
   w[1, 3] -> -1/8 {{0, 4 Nc, 0}, {4 Nc, Nc^2, Nc^2-4},{0, Nc^2-4, Nc^2-4}},
   w[1, 4] -> -1/8 {{0, -4 Nc, 0}, {-4 Nc, Nc^2, -Nc^2+4},{0, -Nc^2+4, Nc^2-4}}
};

(*
 * Colour factor simplifications
 *)
ReplSimplColour = {CF -> (Nc^2 - 1)/(2 Nc)};

(*
 * Euler Gamma relations
 *)
ReplGammaE = {Log[E^(-EulerGamma + Lp/2)/mu] -> -EulerGamma + Lp/2 - Log[mu], 
              PolyGamma[0, 1/2] -> -EulerGamma - Log[4]};

ReplBoundary =  {t1 -> -mt M, u1 -> -mt M, beta -> 0};

ReplScalProd = {n1.n1 -> 0, n2.n2 -> 0, n1.n2 -> 2, n2.n1 -> 2};

ReplSPBoundary = {
   n1.v3 -> 1, n2.v3 -> 1, v3.v3 -> 1, v4.v3 -> 1,
   v3.n1 -> 1, v3.n2 -> 1, v4.n1 -> 1, v4.n2 -> 1,
   n1.v4 -> 1, n2.v4 -> 1, v3.v4 -> 1, v4.v4 -> 1,
   v3.k -> 1/2 (n1.k + n2.k), v4.k -> 1/2 (n1.k + n2.k)
};

ReplSPSpecial= {
   v3.k -> 1/2 (n1.k (1+beta CosTheta) + n2.k (1-beta CosTheta)),
   v4.k -> 1/2 (n1.k (1-beta CosTheta) + n2.k (1+beta CosTheta))
};

ReplSPSimplify = {
   v4.v3 -> v3.v4, v3.n1 -> n1.v3, v3.n2 -> n2.v3, v4.n1 -> n1.v4, 
   v4.n2 -> n2.v4, v4.v4 -> v3.v3
};

ReplSPSymbols = {
  v3.v3 -> c, n1.v3 -> a, n2.v3-> 2-a,
  v4.v4 -> c, n1.v4 -> 2-a, n2.v4-> a, v3.v4-> 2-c
};

ReplSimplifications = {
  Int[0] -> 0, 
  fac1_ Int[expr_] + fac2_ Int[expr_] -> (fac1 + fac2) Int[expr],
  Topology0[_,_,0,0,_,_] -> 0, TopologyM[_,_,0,0,_,_] -> 0
};


ReplColMatricesDuplicates = {w[n_, m_] /; n > m -> w[m, n]};

ReplColMatricesIdentities = {w[2, 4] -> w[1, 3], 
			     w[2, 3] -> w[1, 4], 
			     w[4, 4] -> w[3, 3]};


ReplSymbols = {a -> 1 - beta CosTheta, c -> 1 - beta^2};

ReplLaurent = {v : Power[y, -1 + fac_. ep] -> 
    1/(fac ep) delta[y] + star[Power[y, -1]]
               + Power[fac ep, 1] star[Power[Log[y],1] Power[y, -1]]
               + 1/2 Power[fac ep, 2] star[Power[Log[y],2] Power[y, -1]]

};

ReplArcTanh={ArcTanh[arg_] -> - (1/2) Log[(1 - arg)/(1 + arg)]};

(*
ReplLaurent = {v : Power[y, -1 + fac_. ep] -> 
    1/(fac ep) delta[y] + star[Power[y, -1 + fac ep]]
};
*)

ReplNotation = {
   G[0, -1, 1, 0, 1, 1] -> M2x3, 
   G[0, 0, 1, -1, 1, 1] -> M4x3, 
   G[0, 0, 2, 0, 1, 1] -> Mx33,
   G[0, -1, 0, 1, 1, 1] -> M2x4, 
   G[0, 0, -1, 1, 1, 1] -> M3x4, 
   G[0, 0, 0, 2, 1, 1] -> Mx44,
   G[0, 0, 1, 1, 1, 1] -> Mx34,
   G[2, 0, 1, 1, 1, 1] -> Mx1134,
   DG[0, -1, 1, 0, 1, 1] -> Derivative[1][M2x3],
   DG[0, 0, 1, -1, 1, 1] -> Derivative[1][M4x3],
   DG[0, 0, 2, 0, 1, 1] -> Derivative[1][Mx33],
   DG[0, -1, 0, 1, 1, 1] -> Derivative[1][M2x4],
   DG[0, 0, -1, 1, 1, 1] -> Derivative[1][M3x4],
   DG[0, 0, 0, 2, 1, 1] -> Derivative[1][Mx44],
   DG[0, 0, 1, 1, 1, 1] -> Derivative[1][Mx34],
   DG[2, 0, 1, 1, 1, 1] -> Derivative[1][Mx1134]
};
