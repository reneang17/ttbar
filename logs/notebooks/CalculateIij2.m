Get["CommonFunctions.m"];
Get["BeamFunctions.m"];
Get["GLYResults.m"];
Get["Replacements.m"];
Get["HPL4.m"];

(*******************************************************************************
 *
 * Determine Iij2 by integrating corresponding integrands over LT and adding
 * finite term from Gehrmann et al.
 *
 ******************************************************************************)

(*******************************************************************************
 *
 * Integrands
 *
 ******************************************************************************)

integrandIqq2[LT_] := (CF gammacusp1 LT/2 - gammaq1) Iqq0[z] +
                      (CF gammacusp0 LT/2 - gammaq0 + beta0) Iqq1[z] -Pqq1[z]- 
		      (CF gammacusp0 LT^2/4 - gammaq0 LT) Pqq0[z] + 
		      Dqq[z] LT - Eqq[z];

integrandIgg2[LT_] := (CA gammacusp1 LT/2 - gammag1) Igg0[z] +
                      (CA gammacusp0 LT/2 - gammag0 + beta0) Igg1[z] -Pgg1[z]- 
		      (CA gammacusp0 LT^2/4 - gammag0 LT) Pgg0[z] + 
		      Dgg[z] LT - Egg[z];

integrandIqg2[LT_] := (CF gammacusp0 LT/2 - gammaq0 + beta0) Iqg1[z] -Pqg1[z]- 
		      (CF gammacusp0 LT^2/4 - gammaq0 LT) Pqg0[z] + 
		      Dqg[z] LT - Eqg[z];

integrandIgq2[LT_] := (CA gammacusp0 LT/2 - gammag0 + beta0) Igq1[z] -Pgq1[z]- 
		      (CA gammacusp0 LT^2/4 - gammag0 LT) Pgq0[z] + 
		      Dgq[z] LT - Egq[z];

(*******************************************************************************
 *
 * Conformal parts of beam functions [arXiv:1403.6451 (JHEP 155)]
 *
 ******************************************************************************)

Iqq20[z_] := Simplify[Coefficient[Iqq2GLY[z], LT, 0] //. ReplHarmonic //. 
                      HPLrulesW4 //. HPLrulesW3 //. HPLrulesW2 //. HPLrulesW1];

Igg20[z_] := Simplify[Coefficient[Igg2GLY[z], LT, 0] //. ReplHarmonic //. 
                      HPLrulesW4 //. HPLrulesW3 //. HPLrulesW2 //. HPLrulesW1];

Iqg20[z_] := Simplify[Coefficient[Iqg2GLY[z], LT, 0] //. ReplHarmonic //. 
                      HPLrulesW4 //. HPLrulesW3 //. HPLrulesW2 //. HPLrulesW1];

Igq20[z_] := Simplify[Coefficient[Igq2GLY[z], LT, 0] //. ReplHarmonic //. 
                      HPLrulesW4 //. HPLrulesW3 //. HPLrulesW2 //. HPLrulesW1];

(*******************************************************************************
 *
 * Results
 *
 ******************************************************************************)

Iqq2[z_] := Integrate[integrandIqq2[LT], LT] (* + Iqq20[z] *);

Igg2[z_] := Integrate[integrandIgg2[LT], LT] (* + Igg20[z] *);

Iqg2[z_] := Integrate[integrandIqg2[LT], LT] + Iqg20[z];

Igq2[z_] := Integrate[integrandIgq2[LT], LT] + Igq20[z];

(*******************************************************************************
 *
 * Write results
 *
 ******************************************************************************)

SaveFunctions["Iij2.m", {{Iqq2[z],"Iqq2[z_]"}, {Igg2[z],"Igg2[z_]"}, 
                         {Iqg2[z],"Iqg2[z_]"}, {Igq2[z],"Igq2[z_]"}}];

