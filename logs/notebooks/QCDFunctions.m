
(*******************************************************************************
 * 
 *  Notation and conventions
 *
 *    Pij(z) = as Pij0(z) + as^2 Pij1(z) + ...
 *
 *    where
 *
 *    as = alpas/(4 pi)
 *
 ******************************************************************************)

BeginPackage["QCDFunctions`", {"Symbols`","QCDConstants`", "MathFunctions`"}]

Print["QCDFunctions package by Sebastian Sapeta, 2017"];

pqg0::usage = ""
pgq0::usage = ""
pqq0::usage = ""
pgg0::usage = ""

Pqg0::usage = ""
Pgq0::usage = ""
Pqq0::usage = ""
Pgg0::usage = ""

Pqg1::usage = ""
Pgq1::usage = ""
Pqq1::usage = ""
Pgg1::usage = ""

Rqg0::usage = ""
Rgq0::usage = ""
Rqq0::usage = ""
Rgg0::usage = ""

Dqg::usage = ""
Dgq::usage = ""
Dqq::usage = ""
Dgg::usage = ""

Eqg::usage = ""
Egq::usage = ""
Eqq::usage = ""
Egg::usage = ""

gammasqq::usage= "gammasqq[beta34]"
gammasgg::usage= "gammasgg[beta34]"

gammacuspvel0::usage= "gammacuspvel0[beta]"
gammacuspvel1::usage= "gammacuspvel1[beta]"
gan::usage= "gan[beta]"


Begin["`Private`"]

(*******************************************************************************
 *
 *  Stripped LO splitting functions [arXiv:1403.6451 (JHEP 155)]
 *
 ******************************************************************************)

pqg0[z_] := z^2 + (1 - z)^2;

pgq0[z_] := (1 + (1 - z)^2)/z;

pqq0[z_] := -1 - z + 2 plus[1/(1 - z)];

pgg0[z_] := If[Length[Cases[{z},-arg_]]==1, 
               1/(1 - z) + 1/z - 2 + z (1 - z),         (* -z argument *)
	       plus[1/(1 - z)] + 1/z - 2 + z (1 - z)];  (*  z argument *)


(*******************************************************************************
 *
 *  LO splitting functions [arXiv:1403.6451 (JHEP 155)]
 *
 *  Notice that the prefactors in front of DiracDelta[1-z] correspond to 
 *  (-1)*single-particle, zeroth order anomalous dimensions for quark and gluon,
 *  respectively.
 *
 ******************************************************************************)

Pqg0[z_] := 2 TF pqg0[z];

Pgq0[z_] := 2 CF pgq0[z];

Pqq0[z_] := 2 CF pqq0[z] + 3 CF DiracDelta[1-z];

Pgg0[z_] := 4 CA pgg0[z] + (11/3 CA - 4/3 TF nf) DiracDelta[1-z];


(*******************************************************************************
 *
 *  NLO splitting functions [arXiv:1408.2500 (Czakon, Heymes, NPB 890)]
 *
 *  The results from 1408.2500 (Czakon, Heymes) are also in agreement with ESW
 *  modulo the fact that in the latter Pqg1(z) is multiplied by 2nf, which
 *  strictly speaking should not be done. 
 *
 *  The results below are multiplied by the factor 4 w.r.t. 1408.2500 because we
 *  make expansion in alpha_s/(4pi) whereas they do it in alpha_s/(2pi).
 *
 ******************************************************************************)
Pqq1[z_] := PqqV1[z] + PqqS1[z] 


PqqV1[z_] := 4 CF^2 (-(2 Log[z] Log[1-z] + 3/2 Log[z])pqq0[z] - 
                     (3/2+7 z/2) Log[z] - 1/2 (1+z) Log[z]^2 -5 (1-z)) +
             4 CF CA ((1/2 Log[z]^2 + 11/6 Log[z] + 67/18 - Pi^2/6) pqq0[z]+
	              (1+z) Log[z] + 20/3 (1-z)) +
	     4 CF TF nf (-(2/3 Log[z] + 10/9) pqq0[z]-4/3(1-z)) +
	     4 deltaPqq1[z]


deltaPqq1[z_] := (CF^2 (3/8-Pi^2/2+6 Zeta[3]) + 
                  CF CA (17/24+11 Pi^2/18-3 Zeta[3]) -
		  CF TF nf (1/6 + 2 Pi^2/9)) DiracDelta[-1+z]


PqqS1[z_] :=  4 CF TF (-2 +20/(9 z)+6 z - 56/9 z^2 + (1 + 5 z +8/3 z^2)Log[z]-
                        (1+z) Log[z]^2)

Pgg1[z_] := 4 CF TF nf (-16 + 8 z + 20/3 z^2 + 4/(3 z) - (6+10 z) Log[z] -
                        (2+2 z) Log[z]^2) +
            4 CA TF nf (2 - 2 z + 26/9 (z^2 - 1/z) - 4/3 (1+z) Log[z] -
	                20/9 pgg0[z]) +
	    4 CA^2 (27/2 (1-z) + 67/9 (z^2 - 1/z) - 
	            (25/3 - 11/3 z + 44/3 z^2) Log[z] +
		    4 (1+z) Log[z]^2 + 2 pgg0[-z] S2[z] +
		    (67/9 - 4 Log[z] Log[1-z] + Log[z]^2 - Pi^2/3) pgg0[z]) +
	    4 deltaPgg1[z]

deltaPgg1[z_] := (CA^2 (8/3 + 3 Zeta[3]) - CF TF nf - 4/3 CA TF nf)*
                 DiracDelta[1-z]

Pqg1[z_] := 2 (CF TF) (4 - 9 z - (1 - 4 z) Log[z] - (1 - 2 z) Log[z]^2 + 
                       4 Log[1 - z] + (2 Log[(1 - z)/z]^2 - 4 Log[(1 - z)/z] - 
                       2/3 Pi^2 + 10) pqg0[z]) + 
            2 (CA TF) (182/9 + 14/9 z + 40/(9 z) + (136/3 z - 38/3) Log[z] -
                       4 Log[1 - z] - (2 + 8 z) Log[z]^2 + 2 pqg0[-z] S2[z] +
                       (-Log[z]^2 + 44/3 Log[z] - 2 Log[1 - z]^2 + 4 Log[1-z] +
                        Pi^2/3 - 218/9)pqg0[z])


Pgq1[z_] := 4 CF^2 (-(5/2) - (7 z)/2 + (2 + 7/2 z) Log[z] - 
                    (1 - 1/2 z) Log[z]^2 - 2 z Log[1 - z] - 
                    (3 Log[1 - z] + Log[1 - z]^2) pgq0[z]) + 
            4 CF CA (28/9 + 65/18 z + 44/9 z^2 - (12 + 5 z + 8/3 z^2) Log[z]+ 
                     (4 + z) Log[z]^2 + 2 z Log[1 - z] + S2[z] pgq0[-z] + 
                     (1/2 - 2 Log[z] Log[1 - z] + 1/2 Log[z]^2 + 
                      11/3 Log[1 - z] + Log[1 - z]^2 - Pi^2/6) pgq0[z]) + 
            4 CF TF nf (-(4/3) z - (20/9 + 4/3 Log[1 - z]) pgq0[z])


S2[z_] := -2 PolyLog[2, -z] + 1/2 Log[z]^2 - 2 Log[z] Log[1 + z] - Pi^2/6



(*******************************************************************************
 *
 *  LO reminder functions [1212.2621 (JHEP 110), 1109.6027 (JHEP 124), 
 *                         Li et al. PRD 88]
 *
 ******************************************************************************)

Rqg0[z_] := 4 TF z (1 - z);

Rgq0[z_] := 2 CF z;

Rqq0[z_] := CF (2 (1 - z) - Zeta[2] DiracDelta[1 - z]);

Rgg0[z_] := -CA Zeta[2] DiracDelta[1 - z];


(*******************************************************************************
 *
 *  Convolutions of LO splitting functions [arXiv :1109.6027 (JHEP 124),
 *                                          arXiv :1212.2621 (JHEP 110)]
 *
 *  These functions are defined as 
 *
 *    D_{ij} = \sum_{k=q,qbar,g} \int_z^1 du/u P^{(0)}_{ik} P^{(0)}_{kj}(z/u) .
 *
 *  The formulae are also derived in my notebook . Note that the results from
 *  the above sources differ by factor 4 with my formulae. It comes from
 *  different convention for LO splitting functions which manifests itself as an
 *  explicit factor 2 in evolution equation for Iij (compare second term in
 *  Eq. (2.7) of JHEP 124 and the same term in Eq. (2.24) of JHEP 155.
 *
 ******************************************************************************)

Dqq[z_] := 4 CF^2 (4 plus[Log[(1 - z)^2/z]/(1 - z)] + 3 plus[(1+z^2)/(1-z)] -
                   4 (1+z) Log[1-z] + 3 (1+z) Log[z] - 2 (1-z) - 
		   9 /4 DiracDelta[-1+z]) +
           4 CF TF (4/(3 z) + 1 - z - 4 z^2/3 + 2(1+z) Log[z]);

Dgg[z_] := 16 CA^2 (plus[Log[(1 - z)^2/z]/(1 - z)] + 
                    (1-2 z + z^2 - z^3)/z Log[(1-z)^2/z] -
		    2 (1+z) Log[z] + 3 (1-z) - 11/3 (1-z^3)/z) + 
           4 CA beta0 (z plus[1/(1-z)] + (1-z)/z + z (1-z)) +
	   8 CF TF nf (2 (1+z) Log[z] + 1 - z + 4/3 (1-z^3)/z) + 
	   beta0  Pgg0[z]


Dqg[z_] := 4 CF TF ((z^2 + (1-z)^2) Log[(1-z)^2/z] - 2 z^2 Log[z] - 1/2 + 2 z) +
	   8 CA TF ((z^2 + (1 - z)^2) Log[1 - z] + (1 + 4 z) Log[ z] + 2/(3 z)
                      + 1/2 + 4 z - (31 z^2)/6) + 
           2 TF beta0 (z^2 + (1 - z)^2);

Dgq[z_] := 4 CA CF ((1 + (1 - z)^2)/z Log[(1 - z)^2/z] - (2 + 6 z + 3 z^2)/ z
                    Log[z] - (1 - z) (31/(3 z) + 7/3 + (4 z)/3)) +
	   4 CF^2 ((1 + (1 - z)^2)/z Log[(1-z)^2/z] + (2 Log[z])/z + 2 - z/ 2) +
           2 CF beta0 (1 + (1 - z)^2)/z;

(*******************************************************************************
 *
 *  Convolutions of LO splitting functions and reminders. [CalculateDijEij.m]
 *
 ******************************************************************************)

Get["Eij.m"]


(*******************************************************************************
 *
 *  Anomalous dimension functions
 *
 ******************************************************************************)

  (* Cusp *)
  gammacusp[as_] := gammacusp0 as + gammacusp1 as^2

  (* Massless, single-quark anomalous dimension *)
  gammaq[as_] := gammaq0 as + gammaq1 as^2

  (* Massive, single-quark anomalous dimension *)
  gammaQ[as_] := gammaQ0 as + gammaQ1 as^2

  (* Gluon single-particle anomalous dimension *)
  gammag[as_] := gammag0 as + gammag1 as^2

  (* Massive cusp angle *)
  gammacuspvel[beta_, as_] := gammacuspvel0[beta] as + gammacuspvel1[beta] as^2

  gammacuspvel0[beta_] := gammacusp0 beta Coth[beta]

  gammacuspvel1[beta_] := gammacusp1 beta Coth[beta] + 
      8 CA (Pi^2/6 + Zeta[3] + beta^2 + Coth[beta]^2 (PolyLog[3, Exp[-2 beta]] +
      beta PolyLog[2, Exp[-2 beta]] - Zeta[3] + Pi^2/6 beta + beta^3/3) + 
      Coth[beta] (PolyLog[2, Exp[-2 beta]] - 2 beta Log[1 - Exp[-2 beta]] - 
      Pi^2/ 6 (1 + beta) - beta^2 - beta^3/3))

  (* g function *)
  gan[beta_] := Coth[beta] (beta^2 + 2 beta Log[1 - Exp[-2 beta]] - 
               PolyLog[2, Exp[-2 beta]] + Pi^2/6) - beta^2 - Pi^2/6

(*******************************************************************************
 *
 *  Anomalous dimension matrices [arXiv:1003.5827 (JHEP 097)]
 *
 *  The corresponding formulae for the hard anomalous dimension matrices can be
 *  found in Eqs. (5.3) and (5.8). Then, Eq. (5.16) gives the relation between
 *  soft and hard anomalous dimensions.
 *
 ******************************************************************************)

  gammahqq[beta34_] := 
             (CF gammacuspvel[beta34, as] + 2 gammaq[as] + 2 gammaQ[as]) MqqI + 
             Nc/2 (gammacusp[as] (Log[t1^2/(M^2 mt^2)] + cI Pi) - 
                   gammacuspvel[beta34, as]) Mqq1 + 
             gammacusp[as] Log[t1^2/ u1^2] (Mqq2 + as mk0 gan[beta34] Mqq3);

  gammahgg[beta34_] := 
             (CF gammacuspvel[beta34, as] + 2 gammag[as] + 2 gammaQ[as]) MggI + 
             Nc/2 (gammacusp[as] (Log[t1^2/(M^2 mt^2)] + cI Pi) - 
                   gammacuspvel[beta34, as]) Mgg1 + 
             gammacusp[as] Log[t1^2/ u1^2] (Mgg2 + as gan[beta34] Mgg3);

  gammasqq[beta34_] := gammahqq[beta34] - 2 gammaq[as] MqqI;

  gammasgg[beta34_] := gammahgg[beta34] - 2 gammag[as] MggI;

End[]
EndPackage[]
