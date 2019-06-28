C1qq2qq[z_] := HSqq10*delta[qT2]*DiracDelta[-1 + z] - 
 (CF*HSqq00*Pi^2*delta[qT2]*DiracDelta[-1 + z])/3 - 
 HSqq11*DiracDelta[-1 + z]*star[LqT[0]] + 4*CF*HSqq00*DiracDelta[-1 + z]*
  Log[M^2/mu^2]*star[LqT[0]] - 
 (4*CF*HSqq00*((-1 + z)*delta[qT2] + (-1 + z - 2*z*plus[(1 - z)^(-1)])*
     star[LqT[0]]))/z - 4*CF*HSqq00*DiracDelta[-1 + z]*star[LqT[1]]

C1gg2gg[z_] := HSgg10*delta[qT2]*DiracDelta[-1 + z] - 
 (CA*HSgg00*Pi^2*delta[qT2]*DiracDelta[-1 + z])/3 - 
 HSgg11*DiracDelta[-1 + z]*star[LqT[0]] + 4*CA*HSgg00*DiracDelta[-1 + z]*
  Log[M^2/mu^2]*star[LqT[0]] + 
 (8*CA*HSgg00*(1 - z + z^2 - z^3 + z^2*plus[(1 - z)^(-1)])*star[LqT[0]])/
  z^2 - 4*CA*HSgg00*DiracDelta[-1 + z]*star[LqT[1]]

C1qq2qg[z_] := (2*HSqq00*TF*(-2*(-1 + z)*z*delta[qT2] + (1 - 2*z + 2*z^2)*star[LqT[0]]))/z

C1gg2qg[z_] := (2*CF*HSgg00*(z^2*delta[qT2] + (2 - 2*z + z^2)*star[LqT[0]]))/z^2

C2qq2qq[z_] := HSqq20*delta[qT2]*DiracDelta[-1 + z] - 
 (CF*HSqq10*Pi^2*delta[qT2]*DiracDelta[-1 + z])/3 + 
 (CF^2*HSqq00*Pi^4*delta[qT2]*DiracDelta[-1 + z])/36 - 
 (808*CA*CF*HSqq00*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2])/27 + 
 (224*CF*HSqq00*nf*TF*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2])/27 - 
 HSqq21*DiracDelta[-1 + z]*star[LqT[0]] + 
 (22*CA*CF*HSqq00*Pi^2*DiracDelta[-1 + z]*star[LqT[0]])/9 + 
 (CF*HSqq11*Pi^2*DiracDelta[-1 + z]*star[LqT[0]])/3 - 
 (8*CF*HSqq00*nf*Pi^2*TF*DiracDelta[-1 + z]*star[LqT[0]])/9 + 
 (268*CA*CF*HSqq00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/9 + 
 4*CF*HSqq10*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]] - 
 (4*CA*CF*HSqq00*Pi^2*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/3 - 
 (4*CF^2*HSqq00*Pi^2*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/3 - 
 (80*CF*HSqq00*nf*TF*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/9 - 
 (268*CA*CF*HSqq00*DiracDelta[-1 + z]*star[LqT[1]])/9 - 
 4*CF*HSqq10*DiracDelta[-1 + z]*star[LqT[1]] + 
 2*HSqq22*DiracDelta[-1 + z]*star[LqT[1]] + 
 (4*CA*CF*HSqq00*Pi^2*DiracDelta[-1 + z]*star[LqT[1]])/3 + 
 (4*CF^2*HSqq00*Pi^2*DiracDelta[-1 + z]*star[LqT[1]])/3 + 
 (80*CF*HSqq00*nf*TF*DiracDelta[-1 + z]*star[LqT[1]])/9 - 
 (44*CA*CF*HSqq00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]])/3 - 
 8*CF*HSqq11*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]] + 
 (16*CF*HSqq00*nf*TF*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]])/3 + 
 16*CF^2*HSqq00*DiracDelta[-1 + z]*Log[M^2/mu^2]^2*star[LqT[1]] + 
 (44*CA*CF*HSqq00*DiracDelta[-1 + z]*star[LqT[2]])/3 + 
 6*CF*HSqq11*DiracDelta[-1 + z]*star[LqT[2]] - 
 (16*CF*HSqq00*nf*TF*DiracDelta[-1 + z]*star[LqT[2]])/3 - 
 24*CF^2*HSqq00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[2]] + 
 8*CF^2*HSqq00*DiracDelta[-1 + z]*star[LqT[3]] + 
 (176*CA*CF*HSqq00*delta[qT2]*DiracDelta[-1 + z]*Zeta[3])/9 + 
 8*CF*HSqq11*delta[qT2]*DiracDelta[-1 + z]*Zeta[3] - 
 (64*CF*HSqq00*nf*TF*delta[qT2]*DiracDelta[-1 + z]*Zeta[3])/9 + 
 28*CA*CF*HSqq00*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2]*Zeta[3] - 
 32*CF^2*HSqq00*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2]*Zeta[3] + 
 32*CF^2*HSqq00*DiracDelta[-1 + z]*star[LqT[0]]*Zeta[3] + 
 (2*CF*(-2*((52*HSqq00*TF + 154*CA*HSqq00*z - 162*CF*HSqq00*z + 9*HSqq10*z - 
        9*HSqq11*z - 3*CA*HSqq00*Pi^2*z - 3*CF*HSqq00*Pi^2*z - 
        124*HSqq00*TF*z - 32*HSqq00*nf*TF*z - 308*CA*HSqq00*z^2 + 
        324*CF*HSqq00*z^2 - 18*HSqq10*z^2 + 18*HSqq11*z^2 + 
        6*CA*HSqq00*Pi^2*z^2 + 6*CF*HSqq00*Pi^2*z^2 + 180*HSqq00*TF*z^2 + 
        64*HSqq00*nf*TF*z^2 + 154*CA*HSqq00*z^3 - 162*CF*HSqq00*z^3 + 
        9*HSqq10*z^3 - 9*HSqq11*z^3 - 3*CA*HSqq00*Pi^2*z^3 - 
        3*CF*HSqq00*Pi^2*z^3 - 196*HSqq00*TF*z^3 - 32*HSqq00*nf*TF*z^3 + 
        88*HSqq00*TF*z^4 + 36*CF*HSqq00*(-1 + z)^2*z*Log[M^2/mu^2] + 
        72*CF*HSqq00*z*Log[1 - z] - 144*CF*HSqq00*z^2*Log[1 - z] + 
        72*CF*HSqq00*z^3*Log[1 - z] + 51*CA*HSqq00*z*Log[z] - 
        90*CF*HSqq00*z*Log[z] + 18*HSqq00*TF*z*Log[z] - 
        12*HSqq00*nf*TF*z*Log[z] + 36*CF*HSqq00*z^2*Log[z] + 
        36*HSqq00*TF*z^2*Log[z] + 15*CA*HSqq00*z^3*Log[z] - 
        6*HSqq00*TF*z^3*Log[z] - 12*HSqq00*nf*TF*z^3*Log[z] - 
        48*HSqq00*TF*z^4*Log[z] - 36*CF*HSqq00*z*Log[1 - z]*Log[z] - 
        36*CF*HSqq00*z^3*Log[1 - z]*Log[z] + 9*CA*HSqq00*z*Log[z]^2 - 
        9*CF*HSqq00*z*Log[z]^2 - 18*HSqq00*TF*z*Log[z]^2 + 
        9*CA*HSqq00*z^3*Log[z]^2 + 9*CF*HSqq00*z^3*Log[z]^2 + 
        18*HSqq00*TF*z^3*Log[z]^2 + 2*(-9*HSqq10 + 3*CF*HSqq00*Pi^2 + 
          CA*HSqq00*(-67 + 3*Pi^2) + 20*HSqq00*nf*TF)*(-1 + z)*z^2*
         plus[(1 - z)^(-1)])*star[LqT[0]] + 3*(-1 + z)*
       ((-8*HSqq00*TF + 11*CA*HSqq00*z + 72*CF*HSqq00*z + 6*HSqq11*z - 
          6*HSqq00*TF*z - 4*HSqq00*nf*TF*z - 11*CA*HSqq00*z^2 - 
          36*CF*HSqq00*z^2 - 6*HSqq11*z^2 + 6*HSqq00*TF*z^2 + 
          4*HSqq00*nf*TF*z^2 + 8*HSqq00*TF*z^3 - 24*CF*HSqq00*z*
           Log[M^2/mu^2] + 24*CF*HSqq00*z^2*Log[M^2/mu^2] + 
          48*CF*HSqq00*z*Log[1 - z] + 48*CF*HSqq00*z^2*Log[1 - z] - 
          36*CF*HSqq00*z*Log[z] - 12*HSqq00*TF*z*Log[z] - 
          36*CF*HSqq00*z^2*Log[z] - 12*HSqq00*TF*z^2*Log[z] + 
          2*z*(18*CF*HSqq00*(-1 + z) + (11*CA*HSqq00 + 6*HSqq11 - 
              4*HSqq00*nf*TF)*z - 24*CF*HSqq00*z*Log[M^2/mu^2])*
           plus[(1 - z)^(-1)] - 48*CF*HSqq00*z*
           plus[-(Log[-2 + z^(-1) + z]/(-1 + z))])*star[LqT[1]] + 
        18*CF*HSqq00*z*(1 - z + 2*z*plus[(1 - z)^(-1)])*star[LqT[2]])) + 
    3*(-1 + z)*z*delta[qT2]*(-6*CF*HSqq00*(1 + z)*Log[z] - 
      96*CF*HSqq00*z*plus[(1 - z)^(-1)]*Zeta[3] + 
      (-1 + z)*(-6*HSqq10 + CF*HSqq00*(12 + Pi^2 + 48*Zeta[3])))))/
  (9*(-1 + z)*z^2)

C2gg2gg[z_] := HSgg20*delta[qT2]*DiracDelta[-1 + z] - 
 (CA*HSgg10*Pi^2*delta[qT2]*DiracDelta[-1 + z])/3 + 
 (CA^2*HSgg00*Pi^4*delta[qT2]*DiracDelta[-1 + z])/36 - 
 (808*CA^2*HSgg00*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2])/27 + 
 (224*CA*HSgg00*nf*TF*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2])/27 - 
 HSgg21*DiracDelta[-1 + z]*star[LqT[0]] + 
 (22*CA^2*HSgg00*Pi^2*DiracDelta[-1 + z]*star[LqT[0]])/9 + 
 (CA*HSgg11*Pi^2*DiracDelta[-1 + z]*star[LqT[0]])/3 - 
 (8*CA*HSgg00*nf*Pi^2*TF*DiracDelta[-1 + z]*star[LqT[0]])/9 + 
 (268*CA^2*HSgg00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/9 + 
 4*CA*HSgg10*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]] - 
 (8*CA^2*HSgg00*Pi^2*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/3 - 
 (80*CA*HSgg00*nf*TF*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[0]])/9 - 
 (268*CA^2*HSgg00*DiracDelta[-1 + z]*star[LqT[1]])/9 - 
 4*CA*HSgg10*DiracDelta[-1 + z]*star[LqT[1]] + 
 2*HSgg22*DiracDelta[-1 + z]*star[LqT[1]] + 
 (8*CA^2*HSgg00*Pi^2*DiracDelta[-1 + z]*star[LqT[1]])/3 + 
 (80*CA*HSgg00*nf*TF*DiracDelta[-1 + z]*star[LqT[1]])/9 - 
 (44*CA^2*HSgg00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]])/3 - 
 8*CA*HSgg11*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]] + 
 (16*CA*HSgg00*nf*TF*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[1]])/3 + 
 16*CA^2*HSgg00*DiracDelta[-1 + z]*Log[M^2/mu^2]^2*star[LqT[1]] + 
 (44*CA^2*HSgg00*DiracDelta[-1 + z]*star[LqT[2]])/3 + 
 6*CA*HSgg11*DiracDelta[-1 + z]*star[LqT[2]] - 
 (16*CA*HSgg00*nf*TF*DiracDelta[-1 + z]*star[LqT[2]])/3 - 
 24*CA^2*HSgg00*DiracDelta[-1 + z]*Log[M^2/mu^2]*star[LqT[2]] + 
 8*CA^2*HSgg00*DiracDelta[-1 + z]*star[LqT[3]] + 
 (176*CA^2*HSgg00*delta[qT2]*DiracDelta[-1 + z]*Zeta[3])/9 + 
 8*CA*HSgg11*delta[qT2]*DiracDelta[-1 + z]*Zeta[3] - 
 (64*CA*HSgg00*nf*TF*delta[qT2]*DiracDelta[-1 + z]*Zeta[3])/9 - 
 4*CA^2*HSgg00*delta[qT2]*DiracDelta[-1 + z]*Log[M^2/mu^2]*Zeta[3] + 
 32*CA^2*HSgg00*DiracDelta[-1 + z]*star[LqT[0]]*Zeta[3] + 
 (4*((-18*CA*HSgg10 + 6*CA^2*HSgg00*Pi^2 + 92*CA*HSgg00*nf*TF - 
      24*CF*HSgg00*nf*TF - 109*CA^2*HSgg00*z + 18*CA*HSgg10*z - 
      18*CA^2*HSgg00*Pi^2*z - 76*CA*HSgg00*nf*TF*z + 252*CF*HSgg00*nf*TF*z + 
      243*CA^2*HSgg00*z^2 + 18*CA*HSgg10*z^2 - 18*CA^2*HSgg00*Pi^2*z^2 - 
      56*CA*HSgg00*nf*TF*z^2 - 156*CF*HSgg00*nf*TF*z^2 - 25*CA^2*HSgg00*z^3 - 
      18*CA*HSgg10*z^3 + 18*CA^2*HSgg00*Pi^2*z^3 + 24*CA*HSgg00*nf*TF*z^3 - 
      300*CF*HSgg00*nf*TF*z^3 - 109*CA^2*HSgg00*z^4 + 18*CA*HSgg10*z^4 - 
      6*CA^2*HSgg00*Pi^2*z^4 - 76*CA*HSgg00*nf*TF*z^4 + 
      180*CF*HSgg00*nf*TF*z^4 - 18*CA*HSgg10*z^5 + 18*CA^2*HSgg00*Pi^2*z^5 + 
      92*CA*HSgg00*nf*TF*z^5 + 48*CF*HSgg00*nf*TF*z^5 + 
      150*CA^2*HSgg00*z*Log[z] + 24*CA*HSgg00*nf*TF*z*Log[z] + 
      108*CF*HSgg00*nf*TF*z*Log[z] - 66*CA^2*HSgg00*z^2*Log[z] + 
      24*CA*HSgg00*nf*TF*z^2*Log[z] + 108*CF*HSgg00*nf*TF*z^2*Log[z] + 
      114*CA^2*HSgg00*z^3*Log[z] - 24*CA*HSgg00*nf*TF*z^3*Log[z] - 
      108*CF*HSgg00*nf*TF*z^3*Log[z] + 66*CA^2*HSgg00*z^4*Log[z] - 
      24*CA*HSgg00*nf*TF*z^4*Log[z] - 108*CF*HSgg00*nf*TF*z^4*Log[z] - 
      264*CA^2*HSgg00*z^5*Log[z] + 72*CA^2*HSgg00*Log[1 - z]*Log[z] - 
      72*CA^2*HSgg00*z*Log[1 - z]*Log[z] + 72*CA^2*HSgg00*z^2*Log[1 - z]*
       Log[z] + 72*CA^2*HSgg00*z^3*Log[1 - z]*Log[z] - 
      72*CA^2*HSgg00*z^4*Log[1 - z]*Log[z] + 72*CA^2*HSgg00*z^5*Log[1 - z]*
       Log[z] - 36*CA^2*HSgg00*z*Log[z]^2 + 36*CF*HSgg00*nf*TF*z*Log[z]^2 - 
      72*CA^2*HSgg00*z^2*Log[z]^2 + 36*CF*HSgg00*nf*TF*z^2*Log[z]^2 + 
      36*CA^2*HSgg00*z^3*Log[z]^2 - 36*CF*HSgg00*nf*TF*z^3*Log[z]^2 + 
      72*CA^2*HSgg00*z^4*Log[z]^2 - 36*CF*HSgg00*nf*TF*z^4*Log[z]^2 - 
      36*CA^2*HSgg00*z^5*Log[z]^2 - 72*CA^2*HSgg00*Log[z]*Log[1 + z] - 
      72*CA^2*HSgg00*z*Log[z]*Log[1 + z] - 72*CA^2*HSgg00*z^2*Log[z]*
       Log[1 + z] + 72*CA^2*HSgg00*z^3*Log[z]*Log[1 + z] + 
      72*CA^2*HSgg00*z^4*Log[z]*Log[1 + z] + 72*CA^2*HSgg00*z^5*Log[z]*
       Log[1 + z] - 4*CA*(-9*HSgg10 + CA*HSgg00*(-67 + 6*Pi^2) + 
        20*HSgg00*nf*TF)*(-1 + z)*z^2*plus[(1 - z)^(-1)] + 
      72*CA^2*HSgg00*(-1 + z)*(1 + z + z^2)^2*PolyLog[2, -z])*star[LqT[0]] - 
    6*(-1 + z)*((99*CA^2*HSgg00 + 6*CA*HSgg11 - 4*CA*HSgg00*nf*TF - 
        8*CF*HSgg00*nf*TF + 16*CA^2*HSgg00*z - 14*CF*HSgg00*nf*TF*z - 
        11*CA^2*HSgg00*z^2 - 6*CA*HSgg11*z^2 + 4*CA*HSgg00*nf*TF*z^2 - 
        16*CA^2*HSgg00*z^3 + 14*CF*HSgg00*nf*TF*z^3 - 99*CA^2*HSgg00*z^4 - 
        6*CA*HSgg11*z^4 + 4*CA*HSgg00*nf*TF*z^4 + 8*CF*HSgg00*nf*TF*z^4 - 
        24*CA^2*HSgg00*Log[M^2/mu^2] + 24*CA^2*HSgg00*z^2*Log[M^2/mu^2] + 
        24*CA^2*HSgg00*z^4*Log[M^2/mu^2] - 24*CA^2*HSgg00*Log[1 - z] + 
        24*CA^2*HSgg00*z*Log[1 - z] + 24*CA^2*HSgg00*z^2*Log[1 - z] + 
        24*CA^2*HSgg00*z^4*Log[1 - z] + 12*CA^2*HSgg00*Log[z] + 
        36*CA^2*HSgg00*z*Log[z] - 12*CF*HSgg00*nf*TF*z*Log[z] + 
        84*CA^2*HSgg00*z^2*Log[z] - 24*CF*HSgg00*nf*TF*z^2*Log[z] + 
        48*CA^2*HSgg00*z^3*Log[z] - 12*CF*HSgg00*nf*TF*z^3*Log[z] - 
        12*CA^2*HSgg00*z^4*Log[z] - 12*CA^2*HSgg00*Log[-2 + z^(-1) + z] + 
        12*CA^2*HSgg00*z*Log[-2 + z^(-1) + z] + 12*CA^2*HSgg00*z^2*
         Log[-2 + z^(-1) + z] + 12*CA^2*HSgg00*z^4*Log[-2 + z^(-1) + z] + 
        2*CA*z^2*(11*CA*HSgg00 + 6*HSgg11 - 4*HSgg00*nf*TF - 
          24*CA*HSgg00*Log[M^2/mu^2])*plus[(1 - z)^(-1)] - 
        24*CA^2*HSgg00*z*(1 + z)*plus[-(Log[-2 + z^(-1) + z]/(-1 + z))])*
       star[LqT[1]] - 6*CA^2*HSgg00*(-1 + z^2 + z^4 - 
        2*z^2*plus[(1 - z)^(-1)])*(3*star[LqT[2]] + 4*delta[qT2]*Zeta[3]))))/
  (9*z^2*(-1 + z^2))

C2qq2gg[z_] := (-8*HSqq00*TF^2*(2*z*delta[qT2]*(2 - 2*z + (1 + z)*Log[z]) - 
   (1 + 6*z - 7*z^2 + 4*z*(1 + z)*Log[z])*star[LqT[0]] + 
   (2 + 4*z - 6*z^2 + (1 + 2*z)^2*Log[z])*star[LqT[1]]))/z

C2gg2qq[z_] := (-4*CF^2*HSgg00*(z^2*delta[qT2]*Log[z] + 
   2*((-(-1 + z)^2 + z^2*Log[z])*star[LqT[0]] + 
     (-2*(-3 + 2*z + z^2) + (2 + z)^2*Log[z])*star[LqT[1]])))/z^2

C2qq2qg[z_] := (TF*(-12*((-52*CA*HSqq00 + 72*CA*HSqq00*z - 72*CF*HSqq00*z - 9*HSqq10*z + 
       9*CF*HSqq00*Pi^2*z - 270*CA*HSqq00*z^2 + 351*CF*HSqq00*z^2 + 
       18*HSqq10*z^2 + 18*HSqq11*z^2 + 12*CA*HSqq00*Pi^2*z^2 - 
       18*CF*HSqq00*Pi^2*z^2 + 232*CA*HSqq00*z^3 - 324*CF*HSqq00*z^3 - 
       18*HSqq10*z^3 - 18*HSqq11*z^3 + 18*CF*HSqq00*Pi^2*z^3 + 
       72*CF*HSqq00*(-1 + z)*z^2*Log[M^2/mu^2] + 36*CF*HSqq00*z*
        Log[-1 + z^(-1)] - 144*CF*HSqq00*z^2*Log[-1 + z^(-1)] + 
       144*CF*HSqq00*z^3*Log[-1 + z^(-1)] - 18*CF*HSqq00*z*
        Log[-1 + z^(-1)]^2 + 36*CF*HSqq00*z^2*Log[-1 + z^(-1)]^2 - 
       36*CF*HSqq00*z^3*Log[-1 + z^(-1)]^2 - 36*CF*HSqq00*z*Log[1 - z] + 
       18*CA*HSqq00*z*Log[1 - z]^2 - 36*CA*HSqq00*z^2*Log[1 - z]^2 + 
       36*CA*HSqq00*z^3*Log[1 - z]^2 - 18*CA*HSqq00*z*Log[z] + 
       45*CF*HSqq00*z*Log[z] - 264*CA*HSqq00*z^3*Log[z] + 
       18*CA*HSqq00*z*Log[z]^2 + 9*CF*HSqq00*z*Log[z]^2 + 
       36*CA*HSqq00*z^2*Log[z]^2 - 18*CF*HSqq00*z^2*Log[z]^2 + 
       36*CA*HSqq00*z*Log[z]*Log[1 + z] + 72*CA*HSqq00*z^2*Log[z]*
        Log[1 + z] + 72*CA*HSqq00*z^3*Log[z]*Log[1 + z] + 
       36*CA*HSqq00*z*(1 + 2*z + 2*z^2)*PolyLog[2, -z])*star[LqT[0]] - 
     3*((8*CA*HSqq00 + 6*CA*HSqq00*z - 45*CF*HSqq00*z - 6*HSqq11*z + 
         48*CA*HSqq00*z^2 + 84*CF*HSqq00*z^2 + 12*HSqq11*z^2 - 
         62*CA*HSqq00*z^3 - 48*CF*HSqq00*z^3 - 12*HSqq11*z^3 + 
         24*CF*HSqq00*z*(1 - 2*z + 2*z^2)*Log[M^2/mu^2] + 
         24*CF*HSqq00*z*(1 - 2*z + 2*z^2)*Log[-1 + z^(-1)] + 
         12*CA*HSqq00*z*Log[1 - z] - 24*CA*HSqq00*z^2*Log[1 - z] + 
         24*CA*HSqq00*z^3*Log[1 - z] + 12*CA*HSqq00*z*Log[z] + 
         12*CF*HSqq00*z*Log[z] + 48*CA*HSqq00*z^2*Log[z] - 
         24*CF*HSqq00*z^2*Log[z] - 12*CF*HSqq00*z^3*Log[z] + 
         6*CF*HSqq00*z*Log[-2 + z^(-1) + z] - 12*CF*HSqq00*z^2*
          Log[-2 + z^(-1) + z] + 12*CF*HSqq00*z^3*Log[-2 + z^(-1) + z])*
        star[LqT[1]] - 18*CF*HSqq00*z*(1 - 2*z + 2*z^2)*star[LqT[2]])) + 
   delta[qT2]*(688*CA*HSqq00 - 48*CA*HSqq00*Pi^2 - 1260*CA*HSqq00*z - 
     486*CF*HSqq00*z + 72*CA*HSqq00*Pi^2*z + 1548*CA*HSqq00*z^2 + 
     4050*CF*HSqq00*z^2 + 216*HSqq10*z^2 - 216*CA*HSqq00*Pi^2*z^2 - 
     144*CF*HSqq00*Pi^2*z^2 - 1192*CA*HSqq00*z^3 - 4104*CF*HSqq00*z^3 - 
     216*HSqq10*z^3 + 264*CA*HSqq00*Pi^2*z^3 + 144*CF*HSqq00*Pi^2*z^3 + 
     324*CA*HSqq00*z^2*Log[1 - z] - 324*CF*HSqq00*z^2*Log[1 - z] - 
     432*CA*HSqq00*z^3*Log[1 - z] + 432*CF*HSqq00*z^3*Log[1 - z] - 
     216*CA*HSqq00*z^2*Log[1 - z]^2 + 216*CF*HSqq00*z^2*Log[1 - z]^2 + 
     216*CA*HSqq00*z^3*Log[1 - z]^2 - 216*CF*HSqq00*z^3*Log[1 - z]^2 + 
     36*CA*HSqq00*z*Log[1 - z]^3 - 36*CF*HSqq00*z*Log[1 - z]^3 - 
     72*CA*HSqq00*z^2*Log[1 - z]^3 + 72*CF*HSqq00*z^2*Log[1 - z]^3 + 
     72*CA*HSqq00*z^3*Log[1 - z]^3 - 72*CF*HSqq00*z^3*Log[1 - z]^3 + 
     504*CA*HSqq00*z*Log[z] + 432*CF*HSqq00*z*Log[z] - 
     720*CA*HSqq00*z^2*Log[z] + 1242*CF*HSqq00*z^2*Log[z] + 
     1632*CA*HSqq00*z^3*Log[z] - 432*CF*HSqq00*z^3*Log[z] + 
     288*CA*HSqq00*Log[1 - z]*Log[z] - 432*CA*HSqq00*z*Log[1 - z]*Log[z] + 
     1728*CA*HSqq00*z^2*Log[1 - z]*Log[z] - 432*CF*HSqq00*z^2*Log[1 - z]*
      Log[z] - 1584*CA*HSqq00*z^3*Log[1 - z]*Log[z] + 
     432*CF*HSqq00*z^3*Log[1 - z]*Log[z] + 108*CF*HSqq00*z*Log[1 - z]^2*
      Log[z] - 216*CF*HSqq00*z^2*Log[1 - z]^2*Log[z] + 
     216*CF*HSqq00*z^3*Log[1 - z]^2*Log[z] - 54*CA*HSqq00*z*Log[z]^2 + 
     27*CF*HSqq00*z*Log[z]^2 + 216*CA*HSqq00*z^2*Log[z]^2 + 
     324*CF*HSqq00*z^2*Log[z]^2 - 792*CA*HSqq00*z^3*Log[z]^2 - 
     216*CF*HSqq00*z^3*Log[z]^2 + 108*CF*HSqq00*z*Log[1 - z]*Log[z]^2 - 
     216*CF*HSqq00*z^2*Log[1 - z]*Log[z]^2 + 216*CF*HSqq00*z^3*Log[1 - z]*
      Log[z]^2 + 36*CA*HSqq00*z*Log[z]^3 - 18*CF*HSqq00*z*Log[z]^3 + 
     72*CA*HSqq00*z^2*Log[z]^3 + 36*CF*HSqq00*z^2*Log[z]^3 - 
     72*CF*HSqq00*z^3*Log[z]^3 + 36*CA*HSqq00*Pi^2*z*Log[1 + z] + 
     72*CA*HSqq00*Pi^2*z^2*Log[1 + z] + 72*CA*HSqq00*Pi^2*z^3*Log[1 + z] + 
     432*CA*HSqq00*z^2*Log[z]*Log[1 + z] + 432*CA*HSqq00*z^3*Log[z]*
      Log[1 + z] + 108*CA*HSqq00*z*Log[z]^2*Log[1 + z] + 
     216*CA*HSqq00*z^2*Log[z]^2*Log[1 + z] + 216*CA*HSqq00*z^3*Log[z]^2*
      Log[1 + z] - 72*CA*HSqq00*z*Log[1 + z]^3 - 144*CA*HSqq00*z^2*
      Log[1 + z]^3 - 144*CA*HSqq00*z^3*Log[1 + z]^3 - 
     216*(CA - CF)*HSqq00*z*(1 - 2*z + 2*z^2)*Log[1 - z]*PolyLog[2, 1 - z] - 
     216*CA*HSqq00*z*(-2*z*(1 + z) + (1 + 2*z + 2*z^2)*Log[z])*
      PolyLog[2, -z] + 288*CA*HSqq00*PolyLog[2, z] - 
     432*CA*HSqq00*z*PolyLog[2, z] + 1728*CA*HSqq00*z^2*PolyLog[2, z] - 
     1584*CA*HSqq00*z^3*PolyLog[2, z] + 216*CF*HSqq00*z*Log[z]*
      PolyLog[2, z] - 864*CA*HSqq00*z^2*Log[z]*PolyLog[2, z] - 
     432*CF*HSqq00*z^2*Log[z]*PolyLog[2, z] + 432*CF*HSqq00*z^3*Log[z]*
      PolyLog[2, z] + 216*CA*HSqq00*z*PolyLog[3, 1 - z] - 
     216*CF*HSqq00*z*PolyLog[3, 1 - z] - 432*CA*HSqq00*z^2*
      PolyLog[3, 1 - z] + 432*CF*HSqq00*z^2*PolyLog[3, 1 - z] + 
     432*CA*HSqq00*z^3*PolyLog[3, 1 - z] - 432*CF*HSqq00*z^3*
      PolyLog[3, 1 - z] + 648*CA*HSqq00*z*PolyLog[3, -z] + 
     1296*CA*HSqq00*z^2*PolyLog[3, -z] + 1296*CA*HSqq00*z^3*PolyLog[3, -z] - 
     216*CF*HSqq00*z*PolyLog[3, z] + 1728*CA*HSqq00*z^2*PolyLog[3, z] + 
     432*CF*HSqq00*z^2*PolyLog[3, z] - 432*CF*HSqq00*z^3*PolyLog[3, z] + 
     432*CA*HSqq00*z*PolyLog[3, (1 + z)^(-1)] + 864*CA*HSqq00*z^2*
      PolyLog[3, (1 + z)^(-1)] + 864*CA*HSqq00*z^3*PolyLog[3, (1 + z)^(-1)] - 
     648*CA*HSqq00*z*Zeta[3] + 864*CF*HSqq00*z*Zeta[3] - 
     1728*CF*HSqq00*z^2*Zeta[3] - 1296*CA*HSqq00*z^3*Zeta[3] + 
     1728*CF*HSqq00*z^3*Zeta[3])))/(54*z^2)

C2gg2qg[z_] := (CF*(-12*((-36*CA*HSgg00 - 18*HSgg10 + 6*CA*HSgg00*Pi^2 + 80*HSgg00*nf*TF - 
       2*CA*HSgg00*z + 27*CF*HSgg00*z + 18*HSgg10*z - 18*CA*HSgg00*Pi^2*z - 
       80*HSgg00*nf*TF*z + 10*CA*HSgg00*z^2 + 54*CF*HSgg00*z^2 - 
       9*HSgg10*z^2 + 9*HSgg11*z^2 + 3*CA*HSgg00*Pi^2*z^2 + 
       40*HSgg00*nf*TF*z^2 - 124*CA*HSgg00*z^3 - 36*CA*HSgg00*z^2*
        Log[M^2/mu^2] - 132*CA*HSgg00*Log[1 - z] + 108*CF*HSgg00*Log[1 - z] + 
       48*HSgg00*nf*TF*Log[1 - z] + 132*CA*HSgg00*z*Log[1 - z] - 
       108*CF*HSgg00*z*Log[1 - z] - 48*HSgg00*nf*TF*z*Log[1 - z] - 
       138*CA*HSgg00*z^2*Log[1 - z] + 54*CF*HSgg00*z^2*Log[1 - z] + 
       24*HSgg00*nf*TF*z^2*Log[1 - z] - 36*CA*HSgg00*Log[1 - z]^2 + 
       36*CF*HSgg00*Log[1 - z]^2 + 36*CA*HSgg00*z*Log[1 - z]^2 - 
       36*CF*HSgg00*z*Log[1 - z]^2 - 18*CA*HSgg00*z^2*Log[1 - z]^2 + 
       18*CF*HSgg00*z^2*Log[1 - z]^2 + 216*CA*HSgg00*z*Log[z] - 
       36*CF*HSgg00*z*Log[z] + 162*CA*HSgg00*z^2*Log[z] - 
       45*CF*HSgg00*z^2*Log[z] + 48*CA*HSgg00*z^3*Log[z] + 
       72*CA*HSgg00*Log[1 - z]*Log[z] - 72*CA*HSgg00*z*Log[1 - z]*Log[z] + 
       36*CA*HSgg00*z^2*Log[1 - z]*Log[z] - 36*CA*HSgg00*z*Log[z]^2 + 
       18*CF*HSgg00*z*Log[z]^2 - 18*CA*HSgg00*z^2*Log[z]^2 - 
       9*CF*HSgg00*z^2*Log[z]^2 - 72*CA*HSgg00*Log[z]*Log[1 + z] - 
       72*CA*HSgg00*z*Log[z]*Log[1 + z] - 36*CA*HSgg00*z^2*Log[z]*
        Log[1 + z] - 36*CA*HSgg00*(2 + 2*z + z^2)*PolyLog[2, -z])*
      star[LqT[0]] - 3*((-230*CA*HSgg00 - 12*HSgg11 + 16*HSgg00*nf*TF + 
         188*CA*HSgg00*z + 12*CF*HSgg00*z + 12*HSgg11*z - 16*HSgg00*nf*TF*z - 
         16*CA*HSgg00*z^2 - 3*CF*HSgg00*z^2 - 6*HSgg11*z^2 + 
         8*HSgg00*nf*TF*z^2 + 24*CA*HSgg00*z^3 + 24*CA*HSgg00*(2 - 2*z + z^2)*
          Log[M^2/mu^2] + 24*CA*HSgg00*(2 - 2*z + z^2)*Log[1 - z] - 
         60*CA*HSgg00*Log[z] + 12*CF*HSgg00*Log[z] - 84*CA*HSgg00*z*Log[z] - 
         66*CA*HSgg00*z^2*Log[z] + 12*CA*HSgg00*Log[-2 + z^(-1) + z] + 
         12*CF*HSgg00*Log[-2 + z^(-1) + z] - 12*CA*HSgg00*z*
          Log[-2 + z^(-1) + z] - 12*CF*HSgg00*z*Log[-2 + z^(-1) + z] + 
         6*CA*HSgg00*z^2*Log[-2 + z^(-1) + z] + 6*CF*HSgg00*z^2*
          Log[-2 + z^(-1) + z])*star[LqT[1]] - 18*CA*HSgg00*(2 - 2*z + z^2)*
        star[LqT[2]])) + delta[qT2]*(-6320*CA*HSgg00 + 264*CA*HSgg00*Pi^2 + 
     896*HSgg00*nf*TF + 6328*CA*HSgg00*z + 540*CF*HSgg00*z - 
     288*CA*HSgg00*Pi^2*z - 896*HSgg00*nf*TF*z - 2144*CA*HSgg00*z^2 - 
     54*CF*HSgg00*z^2 + 108*HSgg10*z^2 + 36*CA*HSgg00*Pi^2*z^2 + 
     208*HSgg00*nf*TF*z^2 + 1216*CA*HSgg00*z^3 - 48*CA*HSgg00*Pi^2*z^3 - 
     1824*CA*HSgg00*Log[1 - z] + 1728*CF*HSgg00*Log[1 - z] + 
     480*HSgg00*nf*TF*Log[1 - z] + 1824*CA*HSgg00*z*Log[1 - z] - 
     1728*CF*HSgg00*z*Log[1 - z] - 480*HSgg00*nf*TF*z*Log[1 - z] - 
     516*CA*HSgg00*z^2*Log[1 - z] + 540*CF*HSgg00*z^2*Log[1 - z] + 
     96*HSgg00*nf*TF*z^2*Log[1 - z] - 396*CA*HSgg00*Log[1 - z]^2 + 
     324*CF*HSgg00*Log[1 - z]^2 + 144*HSgg00*nf*TF*Log[1 - z]^2 + 
     396*CA*HSgg00*z*Log[1 - z]^2 - 324*CF*HSgg00*z*Log[1 - z]^2 - 
     144*HSgg00*nf*TF*z*Log[1 - z]^2 - 90*CA*HSgg00*z^2*Log[1 - z]^2 + 
     54*CF*HSgg00*z^2*Log[1 - z]^2 + 72*HSgg00*nf*TF*z^2*Log[1 - z]^2 - 
     72*CA*HSgg00*Log[1 - z]^3 + 72*CF*HSgg00*Log[1 - z]^3 + 
     72*CA*HSgg00*z*Log[1 - z]^3 - 72*CF*HSgg00*z*Log[1 - z]^3 - 
     36*CA*HSgg00*z^2*Log[1 - z]^3 + 36*CF*HSgg00*z^2*Log[1 - z]^3 - 
     2988*CA*HSgg00*z*Log[z] - 810*CF*HSgg00*z*Log[z] + 
     72*CA*HSgg00*z^2*Log[z] + 270*CF*HSgg00*z^2*Log[z] - 
     1056*CA*HSgg00*z^3*Log[z] - 1584*CA*HSgg00*Log[1 - z]*Log[z] + 
     1728*CA*HSgg00*z*Log[1 - z]*Log[z] - 648*CA*HSgg00*z^2*Log[1 - z]*
      Log[z] + 288*CA*HSgg00*z^3*Log[1 - z]*Log[z] + 
     216*CA*HSgg00*Log[1 - z]^2*Log[z] - 216*CA*HSgg00*z*Log[1 - z]^2*
      Log[z] + 108*CA*HSgg00*z^2*Log[1 - z]^2*Log[z] + 
     648*CA*HSgg00*z*Log[z]^2 - 108*CF*HSgg00*z*Log[z]^2 + 
     162*CA*HSgg00*z^2*Log[z]^2 - 81*CF*HSgg00*z^2*Log[z]^2 + 
     144*CA*HSgg00*z^3*Log[z]^2 + 216*CA*HSgg00*Log[1 - z]*Log[z]^2 - 
     216*CA*HSgg00*z*Log[1 - z]*Log[z]^2 + 108*CA*HSgg00*z^2*Log[1 - z]*
      Log[z]^2 - 72*CA*HSgg00*z*Log[z]^3 + 36*CF*HSgg00*z*Log[z]^3 - 
     36*CA*HSgg00*z^2*Log[z]^3 - 18*CF*HSgg00*z^2*Log[z]^3 - 
     72*CA*HSgg00*Pi^2*Log[1 + z] - 72*CA*HSgg00*Pi^2*z*Log[1 + z] - 
     36*CA*HSgg00*Pi^2*z^2*Log[1 + z] + 216*CA*HSgg00*z^2*Log[z]*Log[1 + z] - 
     216*CA*HSgg00*Log[z]^2*Log[1 + z] - 216*CA*HSgg00*z*Log[z]^2*
      Log[1 + z] - 108*CA*HSgg00*z^2*Log[z]^2*Log[1 + z] + 
     144*CA*HSgg00*Log[1 + z]^3 + 144*CA*HSgg00*z*Log[1 + z]^3 + 
     72*CA*HSgg00*z^2*Log[1 + z]^3 + 216*CA*HSgg00*
      (z^2 + (2 + 2*z + z^2)*Log[z])*PolyLog[2, -z] + 
     72*CA*HSgg00*(-22 + 24*z - 6*z^2 + 4*z^3 + 3*(6 - 2*z + 3*z^2)*Log[z])*
      PolyLog[2, z] - 1296*CA*HSgg00*PolyLog[3, -z] - 
     1296*CA*HSgg00*z*PolyLog[3, -z] - 648*CA*HSgg00*z^2*PolyLog[3, -z] - 
     2160*CA*HSgg00*PolyLog[3, z] + 432*CA*HSgg00*z*PolyLog[3, z] - 
     1080*CA*HSgg00*z^2*PolyLog[3, z] - 864*CA*HSgg00*
      PolyLog[3, (1 + z)^(-1)] - 864*CA*HSgg00*z*PolyLog[3, (1 + z)^(-1)] - 
     432*CA*HSgg00*z^2*PolyLog[3, (1 + z)^(-1)] + 1728*CA*HSgg00*Zeta[3] - 
     432*CA*HSgg00*z*Zeta[3] + 864*CA*HSgg00*z^2*Zeta[3])))/(54*z^2)

