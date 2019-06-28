
(*******************************************************************************
 *
 *  Calculate the complete factor from the Fourier transform
 *
 *
 *                    /
 *          1         |                                         
 *    --------------- | d^(d-2)q_perp Exp[-i x_perp.q_perp] qT^(-p)
 *    (2Pi)^((d-2)/2) |                                       
 *                    /
 *
 *
 *  IMPORTANT
 *  It is easy to get confused when studying this FT and the momentum-space
 *  integrals which contain d-2-dimensional, transverse delta function and are
 *  azimuthaly averaged. The cleanest derivation of the power of qT below can be
 *  found in my paper notes. Because we use -p and not p, we later take - power
 *  of qT from the graphs. This correspond to factoring out rescaling qT from
 *  the graphs in the form 1/qT^p. This notebook and my paper notes are
 *  consistent in this respect.
 *
 ******************************************************************************)
BeginPackage["CalculateFourierTransform`"];



Begin["`Private`"];
   
  Get["Replacements.m"];
  Get["Functions.m"];

  (*
   * General formula for integration over theta and qT (coming from inverse FT
   *)
  tmp = Integrate[qT^a Sin[theta]^b Exp[I xT qT Cos[theta]], 
                  {theta, 0, Pi}, {qT, 0, Infinity}, 
                  GenerateConditions -> False];
  
  tmp = tmp /. (-1)^-a (-1 + (-1)^a) -> (-1)^(-a/ 2) (-(-1)^(-a/2) + (-1)^(a/2)) /. (-I^-a + I^a) -> 2 I Sin[(a Pi)/2] /. I^(1 - a) (-I xT)^(-1 - a) -> -xT^(-1 - a);
  
  tmp = tmp /. Sin[Pi z_] -> -Pi/(Gamma[-z] Gamma[1 + z]);

  (*
   * Complete result for the Fourier transform of the 1/qT^p term in d-2 
   * dimensions (see my paper notes for derivation)
   *)
  qTpFTtmp = 1/(2 Pi)^((d - 2)/2) Subscript[S, d - 4] tmp /. 
          {a -> d - 3 - p, b -> d - 4} /. d -> 4 - 2 ep /. 
          ReplSdim // Simplify;
  qTpFT[Lp_,p_] := qTpFTtmp /. {xT -> ( 2 Exp[-EulerGamma] Exp[Lp/2])/mu};

  (*
   * Alternative version of the above in 2 dimensions
   *)

  qTpFT2dtmp = 1/(2 Pi)^((d - 2)/2) Subscript[S, d - 4] tmp /. 
               {a -> d - 3 - p, b -> d - 4} /. 
               d -> 4 /. ReplSdim // Simplify;

  qTpFT2d[Lp_,p_] = qTpFT2dtmp /. {xT -> ( 2 Exp[-EulerGamma] Exp[Lp/2])/mu};

  SaveFunctions["FourierTransform.m", {{qTpFT[Lp,p], "qTpFT[Lp_,p_]"},
                                       {qTpFT2d[Lp,p], "qTpFT2d[Lp_,p_]"}}];

End[];
EndPackage[];
