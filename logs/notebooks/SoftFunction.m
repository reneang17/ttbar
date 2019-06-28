(*******************************************************************************
 *
 * LT-dependent parts of NLO and NNLO soft function from RGE
 *
 ******************************************************************************)

softqq1 := {{(2*CF*Lp*Nc*(2*beta + (1 + beta^2)*Log[xs]))/beta, 
  -2*CF*Lp*Log[t1^2/u1^2]}, {-2*CF*Lp*Log[t1^2/u1^2], 
  (CF*Lp*(-2*beta*Nc^2*Log[t1^2/(M^2*mt^2)] + 4*beta*Log[t1^2/u1^2] + 
     Nc*(4*beta*CF + (1 + beta^2)*(2*CF - Nc)*Log[xs])))/(2*beta*Nc)}}

softgg1 := {{(2*CF*Lp*Nc*(2*beta + (1 + beta^2)*Log[xs]))/beta, -2*Lp*Nc*Log[t1^2/u1^2], 
  0}, {-2*Lp*Nc*Log[t1^2/u1^2], 
  (Lp*Nc*(4*beta*CF - 2*beta*Nc*Log[t1^2/(M^2*mt^2)] + 
     beta*Nc*Log[t1^2/u1^2] + 2*CF*Log[xs] + 2*beta^2*CF*Log[xs] - 
     Nc*Log[xs] - beta^2*Nc*Log[xs]))/(2*beta), 
  -(Lp*(-4 + Nc^2)*Log[t1^2/u1^2])/2}, 
 {0, -(Lp*(-4 + Nc^2)*Log[t1^2/u1^2])/2, 
  (Lp*(-4 + Nc^2)*(4*beta*CF - 2*beta*Nc*Log[t1^2/(M^2*mt^2)] + 
     beta*Nc*Log[t1^2/u1^2] + 2*CF*Log[xs] + 2*beta^2*CF*Log[xs] - 
     Nc*Log[xs] - beta^2*Nc*Log[xs]))/(2*beta*Nc)}}

softqq2 := {{(196*CA*CF*Lp*Nc)/9 + (22*CA*CF*Lp^2*Nc)/3 + 8*CF^2*Lp^2*Nc + 
   (16*CA*CF*Lp*Nc*Pi^2)/3 - (10*CA*CF*Lp*Nc*Pi^2)/(3*beta) - 
   (10*beta*CA*CF*Lp*Nc*Pi^2)/3 - (80*CF*Lp*Nc*nf*TF)/9 - 
   (8*CF*Lp^2*Nc*nf*TF)/3 + (8*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/
    Nc - (8*CA*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc + 
   (44*CA*CF*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   16*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)] - 
   (16*CF*Lp*Nc*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   (11*CA^2*CF*Lp^2*Log[xs])/(3*beta) + (11*beta*CA^2*CF*Lp^2*Log[xs])/3 + 
   (4*CA*CF^2*Lp^2*Log[xs])/beta + 4*beta*CA*CF^2*Lp^2*Log[xs] + 
   (134*CA*CF*Lp*Nc*Log[xs])/(9*beta) + (134*beta*CA*CF*Lp*Nc*Log[xs])/9 + 
   (4*CF^2*Lp^2*Nc*Log[xs])/beta + 4*beta*CF^2*Lp^2*Nc*Log[xs] - 
   (10*CA*CF*Lp*Nc*Pi^2*Log[xs])/3 - (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    (3*beta^2) + (8*CA*CF*Lp*Nc*Pi^2*Log[xs])/(3*beta) + 
   (8*beta*CA*CF*Lp*Nc*Pi^2*Log[xs])/3 - (5*beta^2*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 - (4*CA*CF*Lp^2*nf*TF*Log[xs])/(3*beta) - 
   (4*beta*CA*CF*Lp^2*nf*TF*Log[xs])/3 - (40*CF*Lp*Nc*nf*TF*Log[xs])/
    (9*beta) - (40*beta*CF*Lp*Nc*nf*TF*Log[xs])/9 - 
   (8*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   8*beta*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (8*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   8*beta*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] + 
   4*CA*CF^2*Lp^2*Log[xs]^2 + (2*CA*CF^2*Lp^2*Log[xs]^2)/beta^2 + 
   2*beta^2*CA*CF^2*Lp^2*Log[xs]^2 - 8*CA*CF*Lp*Nc*Log[xs]^2 + 
   (4*CA*CF*Lp*Nc*Log[xs]^2)/beta + 4*beta*CA*CF*Lp*Nc*Log[xs]^2 + 
   (4*CA*CF*Lp*Nc*Log[xs]^3)/3 + (2*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta^2) - 
   (4*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta) - (4*beta*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (2*beta^2*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (88*CA^2*CF*Lp*Log[xs]*Log[Cos[theta/2]])/(3*beta) + 
   (88*beta*CA^2*CF*Lp*Log[xs]*Log[Cos[theta/2]])/3 + 
   (32*CA*CF^2*Lp*Log[xs]*Log[Cos[theta/2]])/beta + 
   32*beta*CA*CF^2*Lp*Log[xs]*Log[Cos[theta/2]] - 
   (32*CA*CF*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta) - 
   (32*beta*CA*CF*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/3 + 
   32*CA*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]] + 
   (16*CA*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]])/beta^2 + 
   16*beta^2*CA*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]] - 
   (4*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   4*beta*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   4*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   2*beta^2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (22*CA^2*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) + 
   (22*beta*CA^2*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 + 
   (8*CA*CF^2*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   8*beta*CA*CF^2*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (8*CA*CF*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) - 
   (8*beta*CA*CF*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 + 
   8*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (4*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta^2 + 
   4*beta^2*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (22*CA^2*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) - 
   (22*beta*CA^2*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 - 
   (8*CA*CF^2*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   8*beta*CA*CF^2*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (8*CA*CF*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) + 
   (8*beta*CA*CF*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 - 
   8*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (4*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta^2 - 
   4*beta^2*CA*CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   4*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   2*beta^2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   4*CA*CF*Lp*Nc*Zeta[3] + (2*CA*CF*Lp*Nc*Zeta[3])/beta^2 + 
   2*beta^2*CA*CF*Lp*Nc*Zeta[3], (-22*CA^2*CF*Lp^2*Log[-(t1/(M*mt))])/
    (3*Nc) - (8*CA*CF^2*Lp^2*Log[-(t1/(M*mt))])/Nc + 
   (8*CA*CF*Lp^2*nf*TF*Log[-(t1/(M*mt))])/(3*Nc) + 
   2*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] - 
   (134*CA*CF*Lp*Log[t1^2/u1^2])/9 - 4*CF^2*Lp^2*Log[t1^2/u1^2] + 
   (2*CA*CF*Lp*Pi^2*Log[t1^2/u1^2])/3 + (40*CF*Lp*nf*TF*Log[t1^2/u1^2])/9 - 
   (4*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc^2 - 
   (4*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc + 
   (2*CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc + 
   (22*CA^2*CF*Lp^2*Log[-(u1/(M*mt))])/(3*Nc) + 
   (8*CA*CF^2*Lp^2*Log[-(u1/(M*mt))])/Nc - 
   (8*CA*CF*Lp^2*nf*TF*Log[-(u1/(M*mt))])/(3*Nc) - 
   2*CA*CF*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] + 
   (4*CA*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc^2 + 
   (4*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc - 
   8*CF^2*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   (CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   beta*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] - 
   (4*CA*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/(beta*Nc) - 
   (4*beta*CA*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/Nc + 
   (CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/(2*beta*Nc) + 
   (beta*CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/(2*Nc) - 
   (CA*CF^2*Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc) - 
   (beta*CA*CF^2*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc - 
   (CA*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*CA*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (4*CA*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/(beta*Nc) + 
   (4*beta*CA*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/Nc + 
   cI*(2*CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))] + (CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))])/
      beta + beta*CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))] + 
     (2*CF*Lp*mk0*Nc*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2])/beta + 
     2*beta*CF*Lp*mk0*Nc*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2] - 
     2*CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))] - (CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))])/
      beta - beta*CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))] + 
     4*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs] - 
     (2*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs])/beta - 
     2*beta*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs]) + 
   (4*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) + 
   (4*beta*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc - 
   (8*CA*CF^2*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc - 
   (2*CA^2*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/Nc + 
   (CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) + 
   (beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (2*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (2*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) - 
   (beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc + 
   (2*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (2*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc}, 
 {(-22*CA^2*CF*Lp^2*Log[-(t1/(M*mt))])/(3*Nc) - 
   (8*CA*CF^2*Lp^2*Log[-(t1/(M*mt))])/Nc + 
   (8*CA*CF*Lp^2*nf*TF*Log[-(t1/(M*mt))])/(3*Nc) + 
   2*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] - 
   (134*CA*CF*Lp*Log[t1^2/u1^2])/9 - 4*CF^2*Lp^2*Log[t1^2/u1^2] + 
   (2*CA*CF*Lp*Pi^2*Log[t1^2/u1^2])/3 + (40*CF*Lp*nf*TF*Log[t1^2/u1^2])/9 - 
   (4*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc^2 - 
   (4*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc + 
   (2*CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc + 
   (22*CA^2*CF*Lp^2*Log[-(u1/(M*mt))])/(3*Nc) + 
   (8*CA*CF^2*Lp^2*Log[-(u1/(M*mt))])/Nc - 
   (8*CA*CF*Lp^2*nf*TF*Log[-(u1/(M*mt))])/(3*Nc) - 
   2*CA*CF*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] + 
   (4*CA*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc^2 + 
   (4*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc - 
   8*CF^2*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   (CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   beta*CA*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] - 
   (4*CA*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/(beta*Nc) - 
   (4*beta*CA*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/Nc + 
   (CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/(2*beta*Nc) + 
   (beta*CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/(2*Nc) - 
   (CA*CF^2*Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc) - 
   (beta*CA*CF^2*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc - 
   (CA*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*CA*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (4*CA*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/(beta*Nc) + 
   (4*beta*CA*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/Nc + 
   cI*(-2*CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))] - (CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))])/
      beta - beta*CA*CF*Lp^2*Pi*Log[-(t1/(M*mt))] - 
     (2*CF*Lp*mk0*Nc*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2])/beta - 
     2*beta*CF*Lp*mk0*Nc*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2] + 
     2*CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))] + (CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))])/
      beta + beta*CA*CF*Lp^2*Pi*Log[-(u1/(M*mt))] - 
     4*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs] + 
     (2*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs])/beta + 
     2*beta*CF*Lp*mk0*Nc*Pi*Log[t1^2/u1^2]*Log[xs]) + 
   (4*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) + 
   (4*beta*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc - 
   (8*CA*CF^2*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc - 
   (2*CA^2*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/Nc + 
   (CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) + 
   (beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (2*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (2*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) - 
   (beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc + 
   (2*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (2*beta*CA*CF^2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc, 
  (98*CA*CF^2*Lp)/9 + (11*CA*CF^2*Lp^2)/3 + 4*CF^3*Lp^2 + 
   (8*CA*CF^2*Lp*Pi^2)/3 - (5*CA*CF^2*Lp*Pi^2)/(3*beta) - 
   (5*beta*CA*CF^2*Lp*Pi^2)/3 - (5*CA*CF*Lp*Nc*Pi^2)/3 + 
   (5*CA*CF*Lp*Nc*Pi^2)/(6*beta) + (5*beta*CA*CF*Lp*Nc*Pi^2)/6 - 
   (40*CF^2*Lp*nf*TF)/9 - (4*CF^2*Lp^2*nf*TF)/3 + 
   (22*CA*CF*Lp^2*Log[-(t1/(M*mt))])/(3*Nc) - 
   (11*CA^3*CF*Lp^2*Log[-(t1/(M*mt))])/(3*Nc) + 
   (8*CF^2*Lp^2*Log[-(t1/(M*mt))])/Nc - (4*CA^2*CF^2*Lp^2*Log[-(t1/(M*mt))])/
    Nc - (8*CF*Lp^2*nf*TF*Log[-(t1/(M*mt))])/(3*Nc) + 
   (4*CA^2*CF*Lp^2*nf*TF*Log[-(t1/(M*mt))])/(3*Nc) - 
   (67*CA*CF*Lp*Nc*Log[t1^2/(M^2*mt^2)])/9 - 
   2*CF^2*Lp^2*Nc*Log[t1^2/(M^2*mt^2)] + 
   (CA*CF*Lp*Nc*Pi^2*Log[t1^2/(M^2*mt^2)])/3 + 
   (20*CF*Lp*Nc*nf*TF*Log[t1^2/(M^2*mt^2)])/9 - 4*CF*Lp^2*Log[-(t1/(M*mt))]*
    Log[t1^2/(M^2*mt^2)] + 2*CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*
    Log[t1^2/(M^2*mt^2)] + (134*CA*CF*Lp*Log[t1^2/u1^2])/(9*Nc) + 
   (4*CF^2*Lp^2*Log[t1^2/u1^2])/Nc - (2*CA*CF*Lp*Pi^2*Log[t1^2/u1^2])/
    (3*Nc) - (40*CF*Lp*nf*TF*Log[t1^2/u1^2])/(9*Nc) + 
   (8*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc^2 - 
   (4*CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc^2 + 
   (4*CA*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc^2 - 
   (22*CA*CF*Lp^2*Log[-(u1/(M*mt))])/(3*Nc) - (8*CF^2*Lp^2*Log[-(u1/(M*mt))])/
    Nc + (8*CF*Lp^2*nf*TF*Log[-(u1/(M*mt))])/(3*Nc) + 
   4*CF*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   (8*CF*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc^2 - 
   (4*CA*CF^2*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc^2 + 
   (22*CA*CF^2*Lp*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   8*CF^3*Lp*Log[(t1*u1)/(M^2*mt^2)] - 
   (8*CF^2*Lp*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/3 - 
   4*CF^2*Lp*Nc*Log[t1^2/(M^2*mt^2)]*Log[(t1*u1)/(M^2*mt^2)] + 
   (8*CF^2*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)])/Nc + 
   (67*CA*CF^2*Lp*Log[xs])/(9*beta) + (67*beta*CA*CF^2*Lp*Log[xs])/9 + 
   (2*CF^3*Lp^2*Log[xs])/beta + 2*beta*CF^3*Lp^2*Log[xs] - 
   (11*CA*CF*Lp^2*Log[xs])/(12*beta*Nc) - (11*beta*CA*CF*Lp^2*Log[xs])/
    (12*Nc) - (CF^2*Lp^2*Log[xs])/(beta*Nc) - (beta*CF^2*Lp^2*Log[xs])/Nc - 
   (67*CA*CF*Lp*Nc*Log[xs])/(18*beta) - (67*beta*CA*CF*Lp*Nc*Log[xs])/18 - 
   (CF^2*Lp^2*Nc*Log[xs])/beta - beta*CF^2*Lp^2*Nc*Log[xs] - 
   (5*CA*CF^2*Lp*Pi^2*Log[xs])/3 - (5*CA*CF^2*Lp*Pi^2*Log[xs])/(6*beta^2) + 
   (4*CA*CF^2*Lp*Pi^2*Log[xs])/(3*beta) + (4*beta*CA*CF^2*Lp*Pi^2*Log[xs])/
    3 - (5*beta^2*CA*CF^2*Lp*Pi^2*Log[xs])/6 + (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    6 + (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/(12*beta^2) - 
   (2*CA*CF*Lp*Nc*Pi^2*Log[xs])/(3*beta) - (2*beta*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 + (5*beta^2*CA*CF*Lp*Nc*Pi^2*Log[xs])/12 - (20*CF^2*Lp*nf*TF*Log[xs])/
    (9*beta) - (20*beta*CF^2*Lp*nf*TF*Log[xs])/9 + 
   (CF*Lp^2*nf*TF*Log[xs])/(3*beta*Nc) + (beta*CF*Lp^2*nf*TF*Log[xs])/
    (3*Nc) + (10*CF*Lp*Nc*nf*TF*Log[xs])/(9*beta) + 
   (10*beta*CF*Lp*Nc*nf*TF*Log[xs])/9 - 
   (4*CA*CF^2*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   4*beta*CA*CF^2*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (2*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta + 
   2*beta*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs] - 
   (2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   2*beta*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   beta*CA^2*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (4*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/(beta*Nc) + 
   (4*beta*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/Nc - 
   (2*CA^2*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/(beta*Nc) - 
   (2*beta*CA^2*CF^2*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/Nc + 
   (CF*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[xs])/(2*beta) + 
   (beta*CF*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[xs])/2 - 
   (CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc^2) - 
   (beta*CF*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc^2 + 
   (2*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   2*beta*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] - 
   (4*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/(beta*Nc) - 
   (4*beta*CF^2*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/Nc + 
   (4*CF^3*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   4*beta*CF^3*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   (2*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta - 
   2*beta*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   4*CA*CF^2*Lp*Log[xs]^2 + (2*CA*CF^2*Lp*Log[xs]^2)/beta + 
   2*beta*CA*CF^2*Lp*Log[xs]^2 + (CF*Lp^2*Log[xs]^2)/2 + 
   (CF*Lp^2*Log[xs]^2)/(4*beta^2) + (beta^2*CF*Lp^2*Log[xs]^2)/4 - 
   (CF^2*Lp^2*Log[xs]^2)/Nc - (CF^2*Lp^2*Log[xs]^2)/(2*beta^2*Nc) - 
   (beta^2*CF^2*Lp^2*Log[xs]^2)/(2*Nc) + 2*CA*CF*Lp*Nc*Log[xs]^2 - 
   (CA*CF*Lp*Nc*Log[xs]^2)/beta - beta*CA*CF*Lp*Nc*Log[xs]^2 + 
   (2*CA*CF^2*Lp*Log[xs]^3)/3 + (CA*CF^2*Lp*Log[xs]^3)/(3*beta^2) - 
   (2*CA*CF^2*Lp*Log[xs]^3)/(3*beta) - (2*beta*CA*CF^2*Lp*Log[xs]^3)/3 + 
   (beta^2*CA*CF^2*Lp*Log[xs]^3)/3 - (CA*CF*Lp*Nc*Log[xs]^3)/3 - 
   (CA*CF*Lp*Nc*Log[xs]^3)/(6*beta^2) + (CA*CF*Lp*Nc*Log[xs]^3)/(3*beta) + 
   (beta*CA*CF*Lp*Nc*Log[xs]^3)/3 - (beta^2*CA*CF*Lp*Nc*Log[xs]^3)/6 - 
   (22*CA*CF*Lp*Log[xs]*Log[Cos[theta/2]])/(3*beta*Nc) - 
   (22*beta*CA*CF*Lp*Log[xs]*Log[Cos[theta/2]])/(3*Nc) - 
   (8*CF^2*Lp*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*CF^2*Lp*Log[xs]*Log[Cos[theta/2]])/Nc + 
   (8*CF*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta*Nc) + 
   (8*beta*CF*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*Nc) + 
   (4*CF*Lp*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]])/beta + 
   4*beta*CF*Lp*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]] - 
   (8*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc^2) - 
   (8*beta*CF*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc^2 + 
   4*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] + 
   (2*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/beta^2 + 
   2*beta^2*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] - 
   (8*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc - 
   (4*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]])/(beta^2*Nc) - 
   (4*beta^2*CF^2*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc - 
   (2*CA*CF^2*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   2*beta*CA*CF^2*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta + 
   beta*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   2*CA*CF^2*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*CF^2*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   beta^2*CA*CF^2*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) - 
   (beta^2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/2 + 
   (11*CA^3*CF*Lp*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/(3*Nc) + 
   (4*CA^2*CF^2*Lp*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/Nc - 
   (4*CA^2*CF*Lp*nf*TF*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/(3*Nc) - 
   2*CA^2*CF*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (4*CA^2*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/Nc^2 - 
   (CA^2*CF*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta - 
   beta*CA^2*CF*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (2*CA^2*CF^2*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/(beta*Nc) + 
   (2*beta*CA^2*CF^2*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/Nc - 
   (11*CA*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(6*beta*Nc) - 
   (11*beta*CA*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(6*Nc) - 
   (2*CF^2*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (2*beta*CF^2*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   (2*CF*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta*Nc) + 
   (2*beta*CF*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*Nc) + 
   (CF*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   beta*CF*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (2*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc^2) - 
   (2*beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc^2 + 
   CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta^2) + 
   (beta^2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 - 
   (2*CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta^2*Nc) - 
   (beta^2*CF^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   (11*CA*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(6*beta*Nc) + 
   (11*beta*CA*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(6*Nc) + 
   (2*CF^2*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (2*beta*CF^2*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   (2*CF*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta*Nc) - 
   (2*beta*CF*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*Nc) - 
   (CF*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   beta*CF*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (2*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc^2) + 
   (2*beta*CF*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc^2 - 
   CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta^2) - 
   (beta^2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2 + 
   (2*CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc + 
   (CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta^2*Nc) + 
   (beta^2*CF^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   2*CA*CF^2*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*CF^2*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   beta^2*CA*CF^2*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) + 
   (beta^2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/2 + 
   2*CA*CF^2*Lp*Zeta[3] + (CA*CF^2*Lp*Zeta[3])/beta^2 + 
   beta^2*CA*CF^2*Lp*Zeta[3] + CA*CF*Lp*Nc*Zeta[3] - 
   (CA*CF*Lp*Nc*Zeta[3])/(2*beta^2) - (beta^2*CA*CF*Lp*Nc*Zeta[3])/2}}

softgg2 := {{(196*CA*CF*Lp*Nc)/9 + (22*CA*CF*Lp^2*Nc)/3 + 8*CF^2*Lp^2*Nc + 
   (16*CA*CF*Lp*Nc*Pi^2)/3 - (10*CA*CF*Lp*Nc*Pi^2)/(3*beta) - 
   (10*beta*CA*CF*Lp*Nc*Pi^2)/3 - (80*CF*Lp*Nc*nf*TF)/9 - 
   (8*CF*Lp^2*Nc*nf*TF)/3 + 8*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[t1^2/u1^2] - 
   8*Lp^2*Nc*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] + 
   (44*CA*CF*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   16*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)] - 
   (16*CF*Lp*Nc*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   (134*CA*CF*Lp*Nc*Log[xs])/(9*beta) + (134*beta*CA*CF*Lp*Nc*Log[xs])/9 + 
   (11*CA*CF*Lp^2*Nc*Log[xs])/(3*beta) + (11*beta*CA*CF*Lp^2*Nc*Log[xs])/3 + 
   (8*CF^2*Lp^2*Nc*Log[xs])/beta + 8*beta*CF^2*Lp^2*Nc*Log[xs] - 
   (10*CA*CF*Lp*Nc*Pi^2*Log[xs])/3 - (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    (3*beta^2) + (8*CA*CF*Lp*Nc*Pi^2*Log[xs])/(3*beta) + 
   (8*beta*CA*CF*Lp*Nc*Pi^2*Log[xs])/3 - (5*beta^2*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 - (40*CF*Lp*Nc*nf*TF*Log[xs])/(9*beta) - 
   (40*beta*CF*Lp*Nc*nf*TF*Log[xs])/9 - (4*CF*Lp^2*Nc*nf*TF*Log[xs])/
    (3*beta) - (4*beta*CF*Lp^2*Nc*nf*TF*Log[xs])/3 - 
   (8*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   8*beta*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (8*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   8*beta*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   8*CA*CF*Lp*Nc*Log[xs]^2 + (4*CA*CF*Lp*Nc*Log[xs]^2)/beta + 
   4*beta*CA*CF*Lp*Nc*Log[xs]^2 + 4*CF^2*Lp^2*Nc*Log[xs]^2 + 
   (2*CF^2*Lp^2*Nc*Log[xs]^2)/beta^2 + 2*beta^2*CF^2*Lp^2*Nc*Log[xs]^2 + 
   (4*CA*CF*Lp*Nc*Log[xs]^3)/3 + (2*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta^2) - 
   (4*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta) - (4*beta*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (2*beta^2*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (88*CA*CF*Lp*Nc*Log[xs]*Log[Cos[theta/2]])/(3*beta) + 
   (88*beta*CA*CF*Lp*Nc*Log[xs]*Log[Cos[theta/2]])/3 + 
   (32*CF^2*Lp*Nc*Log[xs]*Log[Cos[theta/2]])/beta + 
   32*beta*CF^2*Lp*Nc*Log[xs]*Log[Cos[theta/2]] - 
   (32*CF*Lp*Nc*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta) - 
   (32*beta*CF*Lp*Nc*nf*TF*Log[xs]*Log[Cos[theta/2]])/3 + 
   32*CF^2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] + 
   (16*CF^2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]])/beta^2 + 
   16*beta^2*CF^2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] - 
   (4*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   4*beta*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   4*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   2*beta^2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (22*CA*CF*Lp*Nc*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) + 
   (22*beta*CA*CF*Lp*Nc*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 + 
   (8*CF^2*Lp*Nc*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   8*beta*CF^2*Lp*Nc*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (8*CF*Lp*Nc*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) - 
   (8*beta*CF*Lp*Nc*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 + 
   8*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (4*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta^2 + 
   4*beta^2*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (22*CA*CF*Lp*Nc*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) - 
   (22*beta*CA*CF*Lp*Nc*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 - 
   (8*CF^2*Lp*Nc*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   8*beta*CF^2*Lp*Nc*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (8*CF*Lp*Nc*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) + 
   (8*beta*CF*Lp*Nc*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 - 
   8*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (4*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta^2 - 
   4*beta^2*CF^2*Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   4*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   2*beta^2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   4*CA*CF*Lp*Nc*Zeta[3] + (2*CA*CF*Lp*Nc*Zeta[3])/beta^2 + 
   2*beta^2*CA*CF*Lp*Nc*Zeta[3], (-22*CA*Lp^2*Nc*Log[-(t1/(M*mt))])/3 - 
   8*CF*Lp^2*Nc*Log[-(t1/(M*mt))] + (8*Lp^2*Nc*nf*TF*Log[-(t1/(M*mt))])/3 + 
   2*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] - 
   (134*CA*Lp*Nc*Log[t1^2/u1^2])/9 - 4*CF*Lp^2*Nc*Log[t1^2/u1^2] + 
   (2*CA*Lp*Nc*Pi^2*Log[t1^2/u1^2])/3 + (40*Lp*Nc*nf*TF*Log[t1^2/u1^2])/9 + 
   (22*CA*Lp^2*Nc*Log[-(u1/(M*mt))])/3 + 8*CF*Lp^2*Nc*Log[-(u1/(M*mt))] - 
   (8*Lp^2*Nc*nf*TF*Log[-(u1/(M*mt))])/3 - 2*Lp^2*Nc^2*Log[t1^2/(M^2*mt^2)]*
    Log[-(u1/(M*mt))] + 2*Lp^2*Nc^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - 
   8*CF*Lp*Nc*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] - 
   (4*CF*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   4*beta*CF*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   beta*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + (Lp^2*Log[t1^2/u1^2]*Log[xs])/
    (2*beta) + (beta*Lp^2*Log[t1^2/u1^2]*Log[xs])/2 - 
   (CF*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/beta - beta*CF*Lp^2*Nc*Log[t1^2/u1^2]*
    Log[xs] + (4*CF*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs] - 
   (Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] + 
   cI*(2*Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))] + (Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))])/
      beta + beta*Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))] + 
     (2*Lp*Nc^2*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2])/beta + 
     2*beta*Lp*Nc^2*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2] - 
     2*Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))] - (Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))])/
      beta - beta*Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))] + 
     4*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs] - 
     (2*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs])/beta - 
     2*beta*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs]) + 
   (4*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta + 
   4*beta*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   (8*CF*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta - 
   8*beta*CF*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   2*Lp*Nc^2*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (2*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta - 
   2*beta*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (2*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta + 
   2*beta*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)], 
  -8*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2] + 2*Lp^2*Nc^2*Log[-(t1/(M*mt))]*
    Log[t1^2/u1^2] + 8*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - 
   2*Lp^2*Nc^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))]}, 
 {(-22*CA*Lp^2*Nc*Log[-(t1/(M*mt))])/3 - 8*CF*Lp^2*Nc*Log[-(t1/(M*mt))] + 
   (8*Lp^2*Nc*nf*TF*Log[-(t1/(M*mt))])/3 + 2*Lp^2*Nc^2*Log[-(t1/(M*mt))]*
    Log[t1^2/(M^2*mt^2)] - (134*CA*Lp*Nc*Log[t1^2/u1^2])/9 - 
   4*CF*Lp^2*Nc*Log[t1^2/u1^2] + (2*CA*Lp*Nc*Pi^2*Log[t1^2/u1^2])/3 + 
   (40*Lp*Nc*nf*TF*Log[t1^2/u1^2])/9 + (22*CA*Lp^2*Nc*Log[-(u1/(M*mt))])/3 + 
   8*CF*Lp^2*Nc*Log[-(u1/(M*mt))] - (8*Lp^2*Nc*nf*TF*Log[-(u1/(M*mt))])/3 - 
   2*Lp^2*Nc^2*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] + 
   2*Lp^2*Nc^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - 
   8*CF*Lp*Nc*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] - 
   (4*CF*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   4*beta*CF*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   beta*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + (Lp^2*Log[t1^2/u1^2]*Log[xs])/
    (2*beta) + (beta*Lp^2*Log[t1^2/u1^2]*Log[xs])/2 - 
   (CF*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/beta - beta*CF*Lp^2*Nc*Log[t1^2/u1^2]*
    Log[xs] + (4*CF*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs] - 
   (Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] + 
   cI*(-2*Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))] - (Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))])/
      beta - beta*Lp^2*Nc^2*Pi*Log[-(t1/(M*mt))] - 
     (2*Lp*Nc^2*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2])/beta - 
     2*beta*Lp*Nc^2*Pi*Log[(4*beta)/(1 + beta)^2]*Log[t1^2/u1^2] + 
     2*Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))] + (Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))])/
      beta + beta*Lp^2*Nc^2*Pi*Log[-(u1/(M*mt))] - 
     4*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs] + 
     (2*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs])/beta + 
     2*beta*Lp*Nc^2*Pi*Log[t1^2/u1^2]*Log[xs]) + 
   (4*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta + 
   4*beta*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   (8*CF*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta - 
   8*beta*CF*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   2*Lp*Nc^2*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (2*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta - 
   2*beta*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (2*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta + 
   2*beta*CF*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)], 
  (98*CA*CF*Lp*Nc)/9 + (11*CA*CF*Lp^2*Nc)/3 + 4*CF^2*Lp^2*Nc + 
   (8*CA*CF*Lp*Nc*Pi^2)/3 - (5*CA*CF*Lp*Nc*Pi^2)/(3*beta) - 
   (5*beta*CA*CF*Lp*Nc*Pi^2)/3 - (5*CA*Lp*Nc^2*Pi^2)/3 + 
   (5*CA*Lp*Nc^2*Pi^2)/(6*beta) + (5*beta*CA*Lp*Nc^2*Pi^2)/6 - 
   (40*CF*Lp*Nc*nf*TF)/9 - (4*CF*Lp^2*Nc*nf*TF)/3 - 
   (11*CA*Lp^2*Nc^2*Log[-(t1/(M*mt))])/6 - 2*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))] + 
   (2*Lp^2*Nc^2*nf*TF*Log[-(t1/(M*mt))])/3 - 
   (67*CA*Lp*Nc^2*Log[t1^2/(M^2*mt^2)])/9 - 
   2*CF*Lp^2*Nc^2*Log[t1^2/(M^2*mt^2)] + 
   (CA*Lp*Nc^2*Pi^2*Log[t1^2/(M^2*mt^2)])/3 + 
   (20*Lp*Nc^2*nf*TF*Log[t1^2/(M^2*mt^2)])/9 + Lp^2*Nc^3*Log[-(t1/(M*mt))]*
    Log[t1^2/(M^2*mt^2)] + (67*CA*Lp*Nc^2*Log[t1^2/u1^2])/18 + 
   CF*Lp^2*Nc^2*Log[t1^2/u1^2] - (CA*Lp*Nc^2*Pi^2*Log[t1^2/u1^2])/6 - 
   (10*Lp*Nc^2*nf*TF*Log[t1^2/u1^2])/9 + 2*Lp^2*Nc*Log[-(t1/(M*mt))]*
    Log[t1^2/u1^2] - (11*CA*Lp^2*Nc^2*Log[-(u1/(M*mt))])/6 - 
   2*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))] + (2*Lp^2*Nc^2*nf*TF*Log[-(u1/(M*mt))])/
    3 + Lp^2*Nc^3*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   2*Lp^2*Nc*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - Lp^2*Nc^3*Log[t1^2/u1^2]*
    Log[-(u1/(M*mt))] + (22*CA*CF*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   8*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)] - 
   (8*CF*Lp*Nc*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/3 - 
   4*CF*Lp*Nc^2*Log[t1^2/(M^2*mt^2)]*Log[(t1*u1)/(M^2*mt^2)] + 
   2*CF*Lp*Nc^2*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] - 
   (11*CA*Lp^2*Log[xs])/(12*beta) - (11*beta*CA*Lp^2*Log[xs])/12 - 
   (CF*Lp^2*Log[xs])/beta - beta*CF*Lp^2*Log[xs] + 
   (67*CA*CF*Lp*Nc*Log[xs])/(9*beta) + (67*beta*CA*CF*Lp*Nc*Log[xs])/9 + 
   (2*CF^2*Lp^2*Nc*Log[xs])/beta + 2*beta*CF^2*Lp^2*Nc*Log[xs] - 
   (67*CA*Lp*Nc^2*Log[xs])/(18*beta) - (67*beta*CA*Lp*Nc^2*Log[xs])/18 - 
   (CF*Lp^2*Nc^2*Log[xs])/beta - beta*CF*Lp^2*Nc^2*Log[xs] - 
   (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/3 - (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/(6*beta^2) + 
   (4*CA*CF*Lp*Nc*Pi^2*Log[xs])/(3*beta) + (4*beta*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 - (5*beta^2*CA*CF*Lp*Nc*Pi^2*Log[xs])/6 + (5*CA*Lp*Nc^2*Pi^2*Log[xs])/
    6 + (5*CA*Lp*Nc^2*Pi^2*Log[xs])/(12*beta^2) - 
   (2*CA*Lp*Nc^2*Pi^2*Log[xs])/(3*beta) - (2*beta*CA*Lp*Nc^2*Pi^2*Log[xs])/
    3 + (5*beta^2*CA*Lp*Nc^2*Pi^2*Log[xs])/12 + 
   (Lp^2*nf*TF*Log[xs])/(3*beta) + (beta*Lp^2*nf*TF*Log[xs])/3 - 
   (20*CF*Lp*Nc*nf*TF*Log[xs])/(9*beta) - (20*beta*CF*Lp*Nc*nf*TF*Log[xs])/
    9 + (10*Lp*Nc^2*nf*TF*Log[xs])/(9*beta) + (10*beta*Lp*Nc^2*nf*TF*Log[xs])/
    9 - (4*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   4*beta*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (2*CA*Lp*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta + 
   2*beta*CA*Lp*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[xs] - 
   (CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/2 + 
   (Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs])/2 - 
   (Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/(4*beta) - 
   (beta*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/4 - 
   (CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/2 + 
   (4*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   4*beta*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   (2*CF*Lp*Nc^2*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta - 
   2*beta*CF*Lp*Nc^2*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - CF*Lp^2*Log[xs]^2 - 
   (CF*Lp^2*Log[xs]^2)/(2*beta^2) - (beta^2*CF*Lp^2*Log[xs]^2)/2 - 
   4*CA*CF*Lp*Nc*Log[xs]^2 + (2*CA*CF*Lp*Nc*Log[xs]^2)/beta + 
   2*beta*CA*CF*Lp*Nc*Log[xs]^2 + (Lp^2*Nc*Log[xs]^2)/2 + 
   (Lp^2*Nc*Log[xs]^2)/(4*beta^2) + (beta^2*Lp^2*Nc*Log[xs]^2)/4 + 
   2*CA*Lp*Nc^2*Log[xs]^2 - (CA*Lp*Nc^2*Log[xs]^2)/beta - 
   beta*CA*Lp*Nc^2*Log[xs]^2 + (2*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (CA*CF*Lp*Nc*Log[xs]^3)/(3*beta^2) - (2*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta) - 
   (2*beta*CA*CF*Lp*Nc*Log[xs]^3)/3 + (beta^2*CA*CF*Lp*Nc*Log[xs]^3)/3 - 
   (CA*Lp*Nc^2*Log[xs]^3)/3 - (CA*Lp*Nc^2*Log[xs]^3)/(6*beta^2) + 
   (CA*Lp*Nc^2*Log[xs]^3)/(3*beta) + (beta*CA*Lp*Nc^2*Log[xs]^3)/3 - 
   (beta^2*CA*Lp*Nc^2*Log[xs]^3)/6 - (22*CA*Lp*Log[xs]*Log[Cos[theta/2]])/
    (3*beta) - (22*beta*CA*Lp*Log[xs]*Log[Cos[theta/2]])/3 - 
   (8*CF*Lp*Log[xs]*Log[Cos[theta/2]])/beta - 8*beta*CF*Lp*Log[xs]*
    Log[Cos[theta/2]] + (8*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta) + 
   (8*beta*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/3 + 
   (4*Lp*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]])/beta + 
   4*beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]] - 
   (2*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta - 
   2*beta*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   8*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] - 
   (4*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/beta^2 - 
   4*beta^2*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] + 
   4*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] + 
   (2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]])/beta^2 + 
   2*beta^2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] - 
   (2*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   2*beta*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*Lp*Nc^2*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta + 
   beta*CA*Lp*Nc^2*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   beta^2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) - 
   (beta^2*CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/2 + 
   (11*CA*Lp*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 + 
   4*CF*Lp*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (4*Lp*Nc^2*nf*TF*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 - 
   2*Lp*Nc^3*Log[t1^2/(M^2*mt^2)]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   Lp*Nc^3*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (2*CF*Lp*Nc^2*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta + 
   2*beta*CF*Lp*Nc^2*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (Lp*Nc^3*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta - 
   beta*Lp*Nc^3*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (11*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(6*beta) - 
   (11*beta*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/6 - 
   (2*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta - 
   2*beta*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (2*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) + 
   (2*beta*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 + 
   (Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta) - 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 - 
   2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta^2 - 
   beta^2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta^2) + 
   (beta^2*Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 + 
   (11*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(6*beta) + 
   (11*beta*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/6 + 
   (2*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta + 
   2*beta*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (2*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) - 
   (2*beta*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 - 
   (Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta) + 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2 + 
   2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta^2 + 
   beta^2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta^2) - 
   (beta^2*Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2 - 
   2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   beta^2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) + 
   (beta^2*CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/2 + 
   2*CA*CF*Lp*Nc*Zeta[3] + (CA*CF*Lp*Nc*Zeta[3])/beta^2 + 
   beta^2*CA*CF*Lp*Nc*Zeta[3] + CA*Lp*Nc^2*Zeta[3] - 
   (CA*Lp*Nc^2*Zeta[3])/(2*beta^2) - (beta^2*CA*Lp*Nc^2*Zeta[3])/2, 
  (22*CA*Lp^2*Log[-(t1/(M*mt))])/3 + 8*CF*Lp^2*Log[-(t1/(M*mt))] - 
   (11*CA*Lp^2*Nc^2*Log[-(t1/(M*mt))])/6 - 2*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))] - 
   (8*Lp^2*nf*TF*Log[-(t1/(M*mt))])/3 + (2*Lp^2*Nc^2*nf*TF*Log[-(t1/(M*mt))])/
    3 - 4*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] + 
   Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] + 
   (134*CA*Lp*Log[t1^2/u1^2])/9 + 4*CF*Lp^2*Log[t1^2/u1^2] - 
   (67*CA*Lp*Nc^2*Log[t1^2/u1^2])/18 - CF*Lp^2*Nc^2*Log[t1^2/u1^2] - 
   (2*CA*Lp*Pi^2*Log[t1^2/u1^2])/3 + (CA*Lp*Nc^2*Pi^2*Log[t1^2/u1^2])/6 - 
   (40*Lp*nf*TF*Log[t1^2/u1^2])/9 + (10*Lp*Nc^2*nf*TF*Log[t1^2/u1^2])/9 - 
   (22*CA*Lp^2*Log[-(u1/(M*mt))])/3 - 8*CF*Lp^2*Log[-(u1/(M*mt))] + 
   (11*CA*Lp^2*Nc^2*Log[-(u1/(M*mt))])/6 + 2*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))] + 
   (8*Lp^2*nf*TF*Log[-(u1/(M*mt))])/3 - (2*Lp^2*Nc^2*nf*TF*Log[-(u1/(M*mt))])/
    3 + 4*Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   Lp^2*Nc^3*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   4*Lp^2*Nc*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] + Lp^2*Nc^3*Log[t1^2/u1^2]*
    Log[-(u1/(M*mt))] + 8*CF*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] - 
   2*CF*Lp*Nc^2*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   (4*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] - 
   (2*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   2*beta*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs] - 
   (CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/2 - 
   (Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc) - 
   (beta*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc + (Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/
    (4*beta) + (beta*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/4 - 
   (4*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   4*beta*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (2*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   2*beta*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs] + 
   (CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   beta*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] - 
   (Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/(2*beta) - 
   (beta*Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/2 - 
   (8*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc + 
   (2*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta + 
   2*beta*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] + 
   4*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   Lp*Nc^3*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta) + 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 + 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta) - 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2}, 
 {-8*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2] + 2*Lp^2*Nc^2*Log[-(t1/(M*mt))]*
    Log[t1^2/u1^2] + 8*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - 
   2*Lp^2*Nc^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))], 
  (22*CA*Lp^2*Log[-(t1/(M*mt))])/3 + 8*CF*Lp^2*Log[-(t1/(M*mt))] - 
   (11*CA*Lp^2*Nc^2*Log[-(t1/(M*mt))])/6 - 2*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))] - 
   (8*Lp^2*nf*TF*Log[-(t1/(M*mt))])/3 + (2*Lp^2*Nc^2*nf*TF*Log[-(t1/(M*mt))])/
    3 - 4*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] + 
   Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] + 
   (134*CA*Lp*Log[t1^2/u1^2])/9 + 4*CF*Lp^2*Log[t1^2/u1^2] - 
   (67*CA*Lp*Nc^2*Log[t1^2/u1^2])/18 - CF*Lp^2*Nc^2*Log[t1^2/u1^2] - 
   (2*CA*Lp*Pi^2*Log[t1^2/u1^2])/3 + (CA*Lp*Nc^2*Pi^2*Log[t1^2/u1^2])/6 - 
   (40*Lp*nf*TF*Log[t1^2/u1^2])/9 + (10*Lp*Nc^2*nf*TF*Log[t1^2/u1^2])/9 - 
   (22*CA*Lp^2*Log[-(u1/(M*mt))])/3 - 8*CF*Lp^2*Log[-(u1/(M*mt))] + 
   (11*CA*Lp^2*Nc^2*Log[-(u1/(M*mt))])/6 + 2*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))] + 
   (8*Lp^2*nf*TF*Log[-(u1/(M*mt))])/3 - (2*Lp^2*Nc^2*nf*TF*Log[-(u1/(M*mt))])/
    3 + 4*Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   Lp^2*Nc^3*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   4*Lp^2*Nc*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] + Lp^2*Nc^3*Log[t1^2/u1^2]*
    Log[-(u1/(M*mt))] + 8*CF*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] - 
   2*CF*Lp*Nc^2*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   (4*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] - 
   (2*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   2*beta*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs] - 
   (CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/2 - 
   (Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc) - 
   (beta*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc + (Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/
    (4*beta) + (beta*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/4 - 
   (4*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   4*beta*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (2*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   2*beta*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs] + 
   (CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   beta*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] - 
   (Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/(2*beta) - 
   (beta*Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/2 - 
   (8*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc + 
   (2*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta + 
   2*beta*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] + 
   4*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   Lp*Nc^3*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta) + 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 + 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta) - 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2, 
  (-392*CA*CF*Lp)/(9*Nc) - (44*CA*CF*Lp^2)/(3*Nc) - (16*CF^2*Lp^2)/Nc + 
   (98*CA*CF*Lp*Nc)/9 + (11*CA*CF*Lp^2*Nc)/3 + 4*CF^2*Lp^2*Nc + 
   (20*CA*Lp*Pi^2)/3 - (10*CA*Lp*Pi^2)/(3*beta) - (10*beta*CA*Lp*Pi^2)/3 - 
   (32*CA*CF*Lp*Pi^2)/(3*Nc) + (20*CA*CF*Lp*Pi^2)/(3*beta*Nc) + 
   (20*beta*CA*CF*Lp*Pi^2)/(3*Nc) + (8*CA*CF*Lp*Nc*Pi^2)/3 - 
   (5*CA*CF*Lp*Nc*Pi^2)/(3*beta) - (5*beta*CA*CF*Lp*Nc*Pi^2)/3 - 
   (5*CA*Lp*Nc^2*Pi^2)/3 + (5*CA*Lp*Nc^2*Pi^2)/(6*beta) + 
   (5*beta*CA*Lp*Nc^2*Pi^2)/6 + (160*CF*Lp*nf*TF)/(9*Nc) + 
   (16*CF*Lp^2*nf*TF)/(3*Nc) - (40*CF*Lp*Nc*nf*TF)/9 - 
   (4*CF*Lp^2*Nc*nf*TF)/3 + (22*CA*Lp^2*Log[-(t1/(M*mt))])/3 + 
   8*CF*Lp^2*Log[-(t1/(M*mt))] - (11*CA*Lp^2*Nc^2*Log[-(t1/(M*mt))])/6 - 
   2*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))] - (8*Lp^2*nf*TF*Log[-(t1/(M*mt))])/3 + 
   (2*Lp^2*Nc^2*nf*TF*Log[-(t1/(M*mt))])/3 + (268*CA*Lp*Log[t1^2/(M^2*mt^2)])/
    9 + 8*CF*Lp^2*Log[t1^2/(M^2*mt^2)] - (67*CA*Lp*Nc^2*Log[t1^2/(M^2*mt^2)])/
    9 - 2*CF*Lp^2*Nc^2*Log[t1^2/(M^2*mt^2)] - 
   (4*CA*Lp*Pi^2*Log[t1^2/(M^2*mt^2)])/3 + 
   (CA*Lp*Nc^2*Pi^2*Log[t1^2/(M^2*mt^2)])/3 - 
   (80*Lp*nf*TF*Log[t1^2/(M^2*mt^2)])/9 + 
   (20*Lp*Nc^2*nf*TF*Log[t1^2/(M^2*mt^2)])/9 - 4*Lp^2*Nc*Log[-(t1/(M*mt))]*
    Log[t1^2/(M^2*mt^2)] + Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[t1^2/(M^2*mt^2)] - 
   (134*CA*Lp*Log[t1^2/u1^2])/9 - 4*CF*Lp^2*Log[t1^2/u1^2] + 
   (67*CA*Lp*Nc^2*Log[t1^2/u1^2])/18 + CF*Lp^2*Nc^2*Log[t1^2/u1^2] + 
   (2*CA*Lp*Pi^2*Log[t1^2/u1^2])/3 - (CA*Lp*Nc^2*Pi^2*Log[t1^2/u1^2])/6 + 
   (40*Lp*nf*TF*Log[t1^2/u1^2])/9 - (10*Lp*Nc^2*nf*TF*Log[t1^2/u1^2])/9 + 
   (8*Lp^2*Log[-(t1/(M*mt))]*Log[t1^2/u1^2])/Nc - 
   2*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[t1^2/u1^2] + 
   (22*CA*Lp^2*Log[-(u1/(M*mt))])/3 + 8*CF*Lp^2*Log[-(u1/(M*mt))] - 
   (11*CA*Lp^2*Nc^2*Log[-(u1/(M*mt))])/6 - 2*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))] - 
   (8*Lp^2*nf*TF*Log[-(u1/(M*mt))])/3 + (2*Lp^2*Nc^2*nf*TF*Log[-(u1/(M*mt))])/
    3 - 4*Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] + 
   Lp^2*Nc^3*Log[t1^2/(M^2*mt^2)]*Log[-(u1/(M*mt))] - 
   (8*Lp^2*Log[t1^2/u1^2]*Log[-(u1/(M*mt))])/Nc + 
   6*Lp^2*Nc*Log[t1^2/u1^2]*Log[-(u1/(M*mt))] - Lp^2*Nc^3*Log[t1^2/u1^2]*
    Log[-(u1/(M*mt))] - (88*CA*CF*Lp*Log[(t1*u1)/(M^2*mt^2)])/(3*Nc) - 
   (32*CF^2*Lp*Log[(t1*u1)/(M^2*mt^2)])/Nc + 
   (22*CA*CF*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   8*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)] + 
   (32*CF*Lp*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/(3*Nc) - 
   (8*CF*Lp*Nc*nf*TF*Log[(t1*u1)/(M^2*mt^2)])/3 + 
   16*CF*Lp*Log[t1^2/(M^2*mt^2)]*Log[(t1*u1)/(M^2*mt^2)] - 
   4*CF*Lp*Nc^2*Log[t1^2/(M^2*mt^2)]*Log[(t1*u1)/(M^2*mt^2)] - 
   8*CF*Lp*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   2*CF*Lp*Nc^2*Log[t1^2/u1^2]*Log[(t1*u1)/(M^2*mt^2)] + 
   (134*CA*Lp*Log[xs])/(9*beta) + (134*beta*CA*Lp*Log[xs])/9 - 
   (11*CA*Lp^2*Log[xs])/(12*beta) - (11*beta*CA*Lp^2*Log[xs])/12 + 
   (3*CF*Lp^2*Log[xs])/beta + 3*beta*CF*Lp^2*Log[xs] + 
   (11*CA*Lp^2*Log[xs])/(3*beta*Nc^2) + (11*beta*CA*Lp^2*Log[xs])/(3*Nc^2) + 
   (4*CF*Lp^2*Log[xs])/(beta*Nc^2) + (4*beta*CF*Lp^2*Log[xs])/Nc^2 - 
   (268*CA*CF*Lp*Log[xs])/(9*beta*Nc) - (268*beta*CA*CF*Lp*Log[xs])/(9*Nc) - 
   (8*CF^2*Lp^2*Log[xs])/(beta*Nc) - (8*beta*CF^2*Lp^2*Log[xs])/Nc + 
   (67*CA*CF*Lp*Nc*Log[xs])/(9*beta) + (67*beta*CA*CF*Lp*Nc*Log[xs])/9 + 
   (2*CF^2*Lp^2*Nc*Log[xs])/beta + 2*beta*CF^2*Lp^2*Nc*Log[xs] - 
   (67*CA*Lp*Nc^2*Log[xs])/(18*beta) - (67*beta*CA*Lp*Nc^2*Log[xs])/18 - 
   (CF*Lp^2*Nc^2*Log[xs])/beta - beta*CF*Lp^2*Nc^2*Log[xs] - 
   (10*CA*Lp*Pi^2*Log[xs])/3 - (5*CA*Lp*Pi^2*Log[xs])/(3*beta^2) + 
   (8*CA*Lp*Pi^2*Log[xs])/(3*beta) + (8*beta*CA*Lp*Pi^2*Log[xs])/3 - 
   (5*beta^2*CA*Lp*Pi^2*Log[xs])/3 + (20*CA*CF*Lp*Pi^2*Log[xs])/(3*Nc) + 
   (10*CA*CF*Lp*Pi^2*Log[xs])/(3*beta^2*Nc) - (16*CA*CF*Lp*Pi^2*Log[xs])/
    (3*beta*Nc) - (16*beta*CA*CF*Lp*Pi^2*Log[xs])/(3*Nc) + 
   (10*beta^2*CA*CF*Lp*Pi^2*Log[xs])/(3*Nc) - (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 - (5*CA*CF*Lp*Nc*Pi^2*Log[xs])/(6*beta^2) + 
   (4*CA*CF*Lp*Nc*Pi^2*Log[xs])/(3*beta) + (4*beta*CA*CF*Lp*Nc*Pi^2*Log[xs])/
    3 - (5*beta^2*CA*CF*Lp*Nc*Pi^2*Log[xs])/6 + (5*CA*Lp*Nc^2*Pi^2*Log[xs])/
    6 + (5*CA*Lp*Nc^2*Pi^2*Log[xs])/(12*beta^2) - 
   (2*CA*Lp*Nc^2*Pi^2*Log[xs])/(3*beta) - (2*beta*CA*Lp*Nc^2*Pi^2*Log[xs])/
    3 + (5*beta^2*CA*Lp*Nc^2*Pi^2*Log[xs])/12 - (40*Lp*nf*TF*Log[xs])/
    (9*beta) - (40*beta*Lp*nf*TF*Log[xs])/9 + (Lp^2*nf*TF*Log[xs])/(3*beta) + 
   (beta*Lp^2*nf*TF*Log[xs])/3 - (4*Lp^2*nf*TF*Log[xs])/(3*beta*Nc^2) - 
   (4*beta*Lp^2*nf*TF*Log[xs])/(3*Nc^2) + (80*CF*Lp*nf*TF*Log[xs])/
    (9*beta*Nc) + (80*beta*CF*Lp*nf*TF*Log[xs])/(9*Nc) - 
   (20*CF*Lp*Nc*nf*TF*Log[xs])/(9*beta) - (20*beta*CF*Lp*Nc*nf*TF*Log[xs])/
    9 + (10*Lp*Nc^2*nf*TF*Log[xs])/(9*beta) + (10*beta*Lp*Nc^2*nf*TF*Log[xs])/
    9 - (8*CA*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   8*beta*CA*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (16*CA*CF*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs])/(beta*Nc) + 
   (16*beta*CA*CF*Lp*Log[(4*beta)/(1 + beta)^2]*Log[xs])/Nc - 
   (4*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta - 
   4*beta*CA*CF*Lp*Nc*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (2*CA*Lp*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[xs])/beta + 
   2*beta*CA*Lp*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[xs] + 
   (4*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Log[-(t1/(M*mt))]*Log[xs] - 
   (2*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   2*beta*Lp^2*Nc*Log[-(t1/(M*mt))]*Log[xs] - 
   (CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(t1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(t1/(M*mt))]*Log[xs])/2 - 
   (2*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[xs])/(beta*Nc) - 
   (2*beta*Lp^2*Log[t1^2/(M^2*mt^2)]*Log[xs])/Nc + 
   (Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs])/2 + 
   (Lp^2*Log[t1^2/u1^2]*Log[xs])/(beta*Nc) + 
   (beta*Lp^2*Log[t1^2/u1^2]*Log[xs])/Nc - (Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/
    (4*beta) - (beta*Lp^2*Nc*Log[t1^2/u1^2]*Log[xs])/4 + 
   (4*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs])/beta + 
   4*beta*CF*Lp^2*Log[-(u1/(M*mt))]*Log[xs] - 
   (2*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   2*beta*Lp^2*Nc*Log[-(u1/(M*mt))]*Log[xs] - 
   (CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs])/beta - 
   beta*CF*Lp^2*Nc^2*Log[-(u1/(M*mt))]*Log[xs] + 
   (Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/(2*beta) + 
   (beta*Lp^2*Nc^3*Log[-(u1/(M*mt))]*Log[xs])/2 + 
   (8*CF*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   8*beta*CF*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   (16*CF^2*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/(beta*Nc) - 
   (16*beta*CF^2*Lp*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/Nc + 
   (4*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta + 
   4*beta*CF^2*Lp*Nc*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
   (2*CF*Lp*Nc^2*Log[(t1*u1)/(M^2*mt^2)]*Log[xs])/beta - 
   2*beta*CF*Lp*Nc^2*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 8*CA*Lp*Log[xs]^2 + 
   (4*CA*Lp*Log[xs]^2)/beta + 4*beta*CA*Lp*Log[xs]^2 - CF*Lp^2*Log[xs]^2 - 
   (CF*Lp^2*Log[xs]^2)/(2*beta^2) - (beta^2*CF*Lp^2*Log[xs]^2)/2 + 
   (4*CF*Lp^2*Log[xs]^2)/Nc^2 + (2*CF*Lp^2*Log[xs]^2)/(beta^2*Nc^2) + 
   (2*beta^2*CF*Lp^2*Log[xs]^2)/Nc^2 + (16*CA*CF*Lp*Log[xs]^2)/Nc - 
   (8*CA*CF*Lp*Log[xs]^2)/(beta*Nc) - (8*beta*CA*CF*Lp*Log[xs]^2)/Nc - 
   (2*Lp^2*Log[xs]^2)/Nc - (Lp^2*Log[xs]^2)/(beta^2*Nc) - 
   (beta^2*Lp^2*Log[xs]^2)/Nc - 4*CA*CF*Lp*Nc*Log[xs]^2 + 
   (2*CA*CF*Lp*Nc*Log[xs]^2)/beta + 2*beta*CA*CF*Lp*Nc*Log[xs]^2 + 
   (Lp^2*Nc*Log[xs]^2)/2 + (Lp^2*Nc*Log[xs]^2)/(4*beta^2) + 
   (beta^2*Lp^2*Nc*Log[xs]^2)/4 + 2*CA*Lp*Nc^2*Log[xs]^2 - 
   (CA*Lp*Nc^2*Log[xs]^2)/beta - beta*CA*Lp*Nc^2*Log[xs]^2 + 
   (4*CA*Lp*Log[xs]^3)/3 + (2*CA*Lp*Log[xs]^3)/(3*beta^2) - 
   (4*CA*Lp*Log[xs]^3)/(3*beta) - (4*beta*CA*Lp*Log[xs]^3)/3 + 
   (2*beta^2*CA*Lp*Log[xs]^3)/3 - (8*CA*CF*Lp*Log[xs]^3)/(3*Nc) - 
   (4*CA*CF*Lp*Log[xs]^3)/(3*beta^2*Nc) + (8*CA*CF*Lp*Log[xs]^3)/
    (3*beta*Nc) + (8*beta*CA*CF*Lp*Log[xs]^3)/(3*Nc) - 
   (4*beta^2*CA*CF*Lp*Log[xs]^3)/(3*Nc) + (2*CA*CF*Lp*Nc*Log[xs]^3)/3 + 
   (CA*CF*Lp*Nc*Log[xs]^3)/(3*beta^2) - (2*CA*CF*Lp*Nc*Log[xs]^3)/(3*beta) - 
   (2*beta*CA*CF*Lp*Nc*Log[xs]^3)/3 + (beta^2*CA*CF*Lp*Nc*Log[xs]^3)/3 - 
   (CA*Lp*Nc^2*Log[xs]^3)/3 - (CA*Lp*Nc^2*Log[xs]^3)/(6*beta^2) + 
   (CA*Lp*Nc^2*Log[xs]^3)/(3*beta) + (beta*CA*Lp*Nc^2*Log[xs]^3)/3 - 
   (beta^2*CA*Lp*Nc^2*Log[xs]^3)/6 - (22*CA*Lp*Log[xs]*Log[Cos[theta/2]])/
    (3*beta) - (22*beta*CA*Lp*Log[xs]*Log[Cos[theta/2]])/3 - 
   (8*CF*Lp*Log[xs]*Log[Cos[theta/2]])/beta - 8*beta*CF*Lp*Log[xs]*
    Log[Cos[theta/2]] + (88*CA*Lp*Log[xs]*Log[Cos[theta/2]])/(3*beta*Nc^2) + 
   (88*beta*CA*Lp*Log[xs]*Log[Cos[theta/2]])/(3*Nc^2) + 
   (32*CF*Lp*Log[xs]*Log[Cos[theta/2]])/(beta*Nc^2) + 
   (32*beta*CF*Lp*Log[xs]*Log[Cos[theta/2]])/Nc^2 + 
   (8*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta) + 
   (8*beta*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/3 - 
   (32*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*beta*Nc^2) - 
   (32*beta*Lp*nf*TF*Log[xs]*Log[Cos[theta/2]])/(3*Nc^2) - 
   (16*Lp*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) - 
   (16*beta*Lp*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]])/Nc + 
   (4*Lp*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]])/beta + 
   4*beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*Log[xs]*Log[Cos[theta/2]] + 
   (8*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/(beta*Nc) + 
   (8*beta*Lp*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/Nc - 
   (2*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]])/beta - 
   2*beta*Lp*Nc*Log[t1^2/u1^2]*Log[xs]*Log[Cos[theta/2]] - 
   8*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] - 
   (4*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/beta^2 - 
   4*beta^2*CF*Lp*Log[xs]^2*Log[Cos[theta/2]] + 
   (32*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc^2 + 
   (16*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/(beta^2*Nc^2) + 
   (16*beta^2*CF*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc^2 - 
   (16*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc - 
   (8*Lp*Log[xs]^2*Log[Cos[theta/2]])/(beta^2*Nc) - 
   (8*beta^2*Lp*Log[xs]^2*Log[Cos[theta/2]])/Nc + 
   4*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] + 
   (2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]])/beta^2 + 
   2*beta^2*Lp*Nc*Log[xs]^2*Log[Cos[theta/2]] - 
   (4*CA*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   4*beta*CA*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (8*CA*CF*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(beta*Nc) + 
   (8*beta*CA*CF*Lp*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/Nc - 
   (2*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta - 
   2*beta*CA*CF*Lp*Nc*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*Lp*Nc^2*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta + 
   beta*CA*Lp*Nc^2*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   4*CA*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (2*CA*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   2*beta^2*CA*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   (8*CA*CF*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/Nc - 
   (4*CA*CF*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(beta^2*Nc) - 
   (4*beta^2*CA*CF*Lp*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/Nc + 
   2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta^2 + 
   beta^2*CA*CF*Lp*Nc*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) - 
   (beta^2*CA*Lp*Nc^2*Log[xs]*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/2 - 
   (44*CA*Lp*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 - 
   16*CF*Lp*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (11*CA*Lp*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 + 
   4*CF*Lp*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (16*Lp*nf*TF*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 - 
   (4*Lp*Nc^2*nf*TF*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/3 + 
   8*Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   2*Lp*Nc^3*Log[t1^2/(M^2*mt^2)]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   4*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   Lp*Nc^3*Log[t1^2/u1^2]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (8*CF*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta - 
   8*beta*CF*Lp*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (4*Lp*Nc*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta + 
   4*beta*Lp*Nc*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
   (2*CF*Lp*Nc^2*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta + 
   2*beta*CF*Lp*Nc^2*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (Lp*Nc^3*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/beta - 
   beta*Lp*Nc^3*Log[xs]*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
   (11*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(6*beta) - 
   (11*beta*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/6 - 
   (2*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta - 
   2*beta*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (22*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta*Nc^2) + 
   (22*beta*CA*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*Nc^2) + 
   (8*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc^2) + 
   (8*beta*CF*Lp*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc^2 + 
   (2*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta) + 
   (2*beta*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/3 - 
   (8*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*beta*Nc^2) - 
   (8*beta*Lp*nf*TF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(3*Nc^2) - 
   (4*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) - 
   (4*beta*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   (Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
   beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc) + 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta) - 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 - 
   2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
   (CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/beta^2 - 
   beta^2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (8*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc^2 + 
   (4*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta^2*Nc^2) + 
   (4*beta^2*CF*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc^2 - 
   (4*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc - 
   (2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta^2*Nc) - 
   (2*beta^2*Lp*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/Nc + 
   Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
   (Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/(2*beta^2) + 
   (beta^2*Lp*Nc*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)])/2 + 
   (11*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(6*beta) + 
   (11*beta*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/6 + 
   (2*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta + 
   2*beta*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (22*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta*Nc^2) - 
   (22*beta*CA*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*Nc^2) - 
   (8*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc^2) - 
   (8*beta*CF*Lp*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc^2 - 
   (2*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta) - 
   (2*beta*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/3 + 
   (8*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*beta*Nc^2) + 
   (8*beta*Lp*nf*TF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(3*Nc^2) + 
   (4*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) + 
   (4*beta*Lp*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   (Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta - 
   beta*Lp*Nc*Log[t1^2/(M^2*mt^2)]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (2*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc) - 
   (2*beta*Lp*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc + 
   (Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta) + 
   (beta*Lp*Nc*Log[t1^2/u1^2]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2 + 
   2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
   (CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/beta^2 + 
   beta^2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (8*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc^2 - 
   (4*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta^2*Nc^2) - 
   (4*beta^2*CF*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc^2 + 
   (4*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc + 
   (2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta^2*Nc) + 
   (2*beta^2*Lp*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/Nc - 
   Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
   (Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/(2*beta^2) - 
   (beta^2*Lp*Nc*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)])/2 - 
   4*CA*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (2*CA*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   2*beta^2*CA*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   (8*CA*CF*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/Nc + 
   (4*CA*CF*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/(beta^2*Nc) + 
   (4*beta^2*CA*CF*Lp*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/Nc - 
   2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
   (CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/beta^2 - 
   beta^2*CA*CF*Lp*Nc*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   (CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) + 
   (beta^2*CA*Lp*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/2 - 
   4*CA*Lp*Zeta[3] + (2*CA*Lp*Zeta[3])/beta^2 + 2*beta^2*CA*Lp*Zeta[3] - 
   (8*CA*CF*Lp*Zeta[3])/Nc - (4*CA*CF*Lp*Zeta[3])/(beta^2*Nc) - 
   (4*beta^2*CA*CF*Lp*Zeta[3])/Nc + 2*CA*CF*Lp*Nc*Zeta[3] + 
   (CA*CF*Lp*Nc*Zeta[3])/beta^2 + beta^2*CA*CF*Lp*Nc*Zeta[3] + 
   CA*Lp*Nc^2*Zeta[3] - (CA*Lp*Nc^2*Zeta[3])/(2*beta^2) - 
   (beta^2*CA*Lp*Nc^2*Zeta[3])/2}}

