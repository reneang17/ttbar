(*******************************************************************************
 * 
 *
 ******************************************************************************)
BeginPackage["QCDConstants`", {"Symbols`"}]


beta0::usage =  ""
gammacusp0::usage = ""
gammacusp1::usage = ""
gammaq0::usage = ""
gammaq1::usage = ""
gammag0::usage = ""
gammag1::usage = ""
gammaQ0::usage = ""
gammaQ1::usage = ""
MqqI::usage = ""
Mqq1::usage = ""
Mqq2::usage = ""
Mqq3::usage = ""
MggI::usage = ""
Mgg1::usage = ""
Mgg2::usage = ""
Mgg3::usage = ""


Begin["`Private`"]

(*******************************************************************************
 *
 *  1-loop beta function
 *
 ******************************************************************************)

  beta0 = 11/3 CA - 4/3 TF nf;

(*******************************************************************************
 *
 *  Anomalous dimensions [JHEP 097]
 *
 ******************************************************************************)

  (* Cusp *)
  gammacusp0 = 4;
  gammacusp1 = 4 (67/9 - Pi^2/3) CA - 80/9 TF nf;

  (* Single-particle: massless quark *)
  gammaq0 = -3 CF;  (* minus prefactor in front of delta(1-z) in Pqq0 *)
  gammaq1 = CF^2 (-(3/2) + 2 Pi^2 - 24 Zeta[3]) + 
            CF CA (-(961/54) - (11 Pi^2)/6 + 26 Zeta[3]) + 
            CF TF nf (130/27 + (2 Pi^2)/3);

  (* Single-particle: gluon *)
  gammag0 = -beta0; (* minus prefactor in front of delta(1-z) in Pgg0 *) 
  gammag1 = CA^2 (-(692/27) + 11/18 Pi^2 + 2 Zeta[3]) + 
            CA TF nf ((256/27) - (2 Pi^2)/9) + 
            4 CF TF nf;

  (* Single-particle: massive quark *)
  gammaQ0 = -2 CF;
  gammaQ1 = CF CA (-(98/9) + (2 Pi^2)/3 - 4 Zeta[3]) + 40/9 CF TF nf;

  (* Matrices qq channel*)
  MqqI = IdentityMatrix[2];
  Mqq1 = {{0, 0}, {0, 1}};
  Mqq2 = {{0, CF/(2 Nc)}, {1, -1/Nc}};
  Mqq3 = {{0, CF/2}, {-Nc, 0}};

  (* Matrices gg channel*)
  MggI = IdentityMatrix[3];
  Mgg1 = {{0, 0, 0}, {0, 1, 0}, {0, 0, 1}};
  Mgg2 = {{0, 1/2, 0}, {1, -Nc/4, (Nc^2-4)/(4 Nc)}, {0,Nc/4,-Nc/4}};
  Mgg3 = {{0, Nc/2, 0}, {-Nc, 0, 0}, {0, 0, 0}};

End[]

EndPackage[]
