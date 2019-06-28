resImep2 := {{0, -((1 + beta)^2*CF*Nc*Pi*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2])/(2*beta)}, 
 {((1 + beta)^2*CF*Nc*Pi*Log[(-1 + beta*Cos[theta])^2/
      (1 + beta*Cos[theta])^2])/(2*beta), 0}}

resImep1 := {{0, -((CF*Nc*Pi*((1 + beta)^2*Lp + (1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
      (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta)}, 
 {(CF*Nc*Pi*((1 + beta)^2*Lp + (1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
     (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta, 0}}

resReep2out := {{-((-1 + Nc^2)*(beta*(1 + beta^2)*(-12 + 23*Nc^2)*
       Log[(1 - beta)/(1 + beta)] + 3*(1 + beta^2)^2*(-1 + Nc^2)*
       Log[(1 - beta)/(1 + beta)]^2 + 2*beta^2*(-6 + 17*Nc^2 + 
        24*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
         Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
        6*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
        24*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
         Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])))/(6*beta^2*Nc), 
  ((-1 + Nc^2)*(-12*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2]^2 + 2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
       2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))] + 3*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
            (1 + beta*Cos[theta])^2])) + 
     beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      (-11*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
       48*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
     2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
       2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (6*beta*Nc^2)}, 
 {((-1 + Nc^2)*(-12*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2]^2 + 2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
       2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))] + 3*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
            (1 + beta*Cos[theta])^2])) + 
     beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      (-11*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
       48*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
     2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
       2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (6*beta*Nc^2), 
  -((-1 + Nc^2)*(3*(1 + beta^2)^2*Log[(1 - beta)/(1 + beta)]^2 + 
      beta*(1 + beta^2)*Log[(1 - beta)/(1 + beta)]*(12 - 23*Nc^2 + 
        24*(-2 + Nc^2)*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
        48*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
      2*beta^2*(6 - 23*Nc^2 + 17*Nc^4 - 
        6*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]^2 - 
        22*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
        18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
        6*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 + 
        4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*(-12 + 40*Nc^2 - 
          17*Nc^4 + 6*Nc^2*(-2 + Nc^2)*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] - 6*(-3 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2]) + 
        48*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
        136*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
        72*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
         Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
        24*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
         Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
        Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
         (11*Nc^2 + 24*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
              2] + 48*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))))/
   (24*beta^2*Nc^3)}}

resReep1out := {{((-1 + Nc^2)*(144*beta^2*Lp - 196*beta^2*Nc^2 - 408*beta^2*Lp*Nc^2 + 
     30*beta*Nc^2*Pi^2 - 48*beta^2*Nc^2*Pi^2 + 30*beta^3*Nc^2*Pi^2 + 
     144*beta*Lp*Log[(1 - beta)/(1 + beta)] + 144*beta^3*Lp*
      Log[(1 - beta)/(1 + beta)] - 134*beta*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     134*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     276*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     276*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)] + 
     15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 24*beta*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 30*beta^2*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 24*beta^3*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 15*beta^4*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 36*Lp*Log[(1 - beta)/(1 + beta)]^2 + 
     72*beta^2*Lp*Log[(1 - beta)/(1 + beta)]^2 + 
     36*beta^4*Lp*Log[(1 - beta)/(1 + beta)]^2 - 
     36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
     72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     36*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 72*beta^2*Lp*Nc^2*
      Log[(1 - beta)/(1 + beta)]^2 - 36*beta^4*Lp*Nc^2*
      Log[(1 - beta)/(1 + beta)]^2 - 6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 
     12*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^3 - 
     12*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 
     12*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^3 - 
     6*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 
     288*beta*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     288*beta^3*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     816*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     816*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     144*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     288*beta^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     144*beta^4*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] - 
     144*Nc^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] - 
     288*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] - 
     144*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] - 
     288*beta^2*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     288*beta^2*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     144*beta^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     408*beta^2*Nc^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     72*beta*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     72*beta^3*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     72*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     72*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
      PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 12*(1 + beta^2)*
      (beta*(-6 + 17*Nc^2) + 3*(1 + beta^2)*(-1 + Nc^2)*
        Log[(1 - beta)/(1 + beta)])*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 72*beta*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 72*beta^3*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] - 204*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] - 204*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 36*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     72*beta^2*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     36*Nc^2*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     36*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
     18*Nc^2*Zeta[3] - 36*beta^2*Nc^2*Zeta[3] - 18*beta^4*Nc^2*Zeta[3]))/
   (36*beta^2*Nc), 
  ((-1 + Nc^2)*(-72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
        Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
     36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     18*Lp*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] - 18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     9*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] + 9*beta^2*Lp*Nc^2*
      Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] - 72*Log[(1 - beta)/(1 + beta)]*
      Log[Cos[theta/2]]*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     144*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
        Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     144*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     18*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
     9*(1 + beta^2)*(-2 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     9*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     9*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(18*beta*Nc^2)}, 
 {((-1 + Nc^2)*(-72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
        Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
     36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     18*Lp*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] - 18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     9*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] + 9*beta^2*Lp*Nc^2*
      Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] - 72*Log[(1 - beta)/(1 + beta)]*
      Log[Cos[theta/2]]*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     144*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
        Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     144*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     18*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
     9*(1 + beta^2)*(-2 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     9*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     9*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(18*beta*Nc^2), 
  -((-1 + Nc^2)*(144*beta^2*Lp - 196*beta^2*Nc^2 - 552*beta^2*Lp*Nc^2 + 
      196*beta^2*Nc^4 + 408*beta^2*Lp*Nc^4 + 30*beta*Nc^2*Pi^2 - 
      48*beta^2*Nc^2*Pi^2 + 30*beta^3*Nc^2*Pi^2 - 12*beta^2*Nc^4*Pi^2 + 
      144*beta*Lp*Log[(1 - beta)/(1 + beta)] + 144*beta^3*Lp*
       Log[(1 - beta)/(1 + beta)] - 134*beta*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 134*beta^3*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 276*beta*Lp*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 276*beta^3*Lp*Nc^2*
       Log[(1 - beta)/(1 + beta)] + 15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 
      24*beta*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      30*beta^2*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 
      24*beta^3*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      15*beta^4*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[(1 - beta)/(1 + beta)] + 
      72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[(1 - beta)/(1 + beta)] + 
      36*Lp*Log[(1 - beta)/(1 + beta)]^2 + 72*beta^2*Lp*
       Log[(1 - beta)/(1 + beta)]^2 + 36*beta^4*Lp*Log[(1 - beta)/(1 + beta)]^
        2 - 36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
      72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
      36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
      6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 12*beta*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 - 12*beta^2*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 + 12*beta^3*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 - 6*beta^4*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 + 288*beta*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 288*beta^3*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 816*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 816*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 144*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] + 288*beta^2*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] + 144*beta^4*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] - 576*beta^2*Lp*Log[(1 - beta*Cos[theta])/
         Sqrt[1 - beta^2]] + 1920*beta^2*Lp*Nc^2*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      816*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      288*beta*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      288*beta^3*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      144*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      144*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      144*beta^2*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      268*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      144*beta^2*Lp*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      12*beta^2*Nc^4*Pi^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      288*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      288*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      576*beta^2*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      288*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      288*beta^2*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      536*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      288*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2] - 24*beta^2*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/
         (1 + beta*Cos[theta])^2] - 144*beta*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      144*beta^3*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      576*beta*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      576*beta^3*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      864*beta^2*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      288*beta^2*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      576*beta^2*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      1632*beta^2*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      288*beta*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      288*beta^3*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      576*beta^2*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      864*beta^2*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      288*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2]*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      144*beta^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      552*beta^2*Nc^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      408*beta^2*Nc^4*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      72*beta*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      72*beta^3*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      72*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      72*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      144*beta^2*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      144*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      288*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      288*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*
         Log[(1 - beta)/(1 + beta)])*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
      24*beta*Nc^2*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] - 12*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2]))*PolyLog[2, (beta^2*Sin[theta]^2)/
         (-1 + beta^2)] - 72*beta*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] - 72*beta^3*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] + 204*beta*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] + 204*beta^3*Nc^2*PolyLog[2, 
        ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      36*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
        ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      144*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      144*beta^3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      72*beta*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta^3*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      204*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      204*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      36*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
         (-1 + beta)] + 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
        ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      144*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      144*beta^3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
      36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
      18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
      18*Nc^2*Zeta[3] - 36*beta^2*Nc^2*Zeta[3] - 18*beta^4*Nc^2*Zeta[3] + 
      72*beta^2*Nc^4*Zeta[3]))/(144*beta^2*Nc^3)}}

resImLp2 := {{0, -(((1 + beta)^2*CF*Nc*Pi*Log[(1 + beta*Cos[theta])/
       (1 - beta*Cos[theta])])/beta)}, 
 {((1 + beta)^2*CF*Nc*Pi*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   beta, 0}}

resImLp1 := {{0, (2*CF*Nc*Pi*((1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
     (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta}, 
 {(-2*CF*Nc*Pi*((1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
     (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta, 0}}

resReLp2 := {{((-1 + Nc^2)*(beta*(1 + beta^2)*(-12 + 23*Nc^2)*
      Log[(1 - beta)/(1 + beta)] + 3*(1 + beta^2)^2*(-1 + Nc^2)*
      Log[(1 - beta)/(1 + beta)]^2 + 2*beta^2*(-6 + 17*Nc^2 + 
       12*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
        Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
       12*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])))/(6*beta^2*Nc), 
  -((-1 + Nc^2)*(2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] + 3*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2])) + 
      3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       ((1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
        4*beta*(-1 + Nc^2 - 4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])) + 
      2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
        2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (12*beta*Nc^2)}, 
 {-((-1 + Nc^2)*(2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] + 3*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2])) + 
      3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       ((1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
        4*beta*(-1 + Nc^2 - 4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])) + 
      2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
        2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (12*beta*Nc^2), 
  ((-1 + Nc^2)*(3*(1 + beta^2)^2*Log[(1 - beta)/(1 + beta)]^2 + 
     beta*(1 + beta^2)*Log[(1 - beta)/(1 + beta)]*(12 - 23*Nc^2 + 
       12*(-2 + Nc^2)*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
       6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
       12*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
       24*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
     2*beta^2*(6 - 23*Nc^2 + 17*Nc^4 - 
       12*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
       12*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
       2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*(-12 + 40*Nc^2 - 
         17*Nc^4 + 6*Nc^2*(-2 + Nc^2)*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))] - 6*(-3 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
            (1 + beta*Cos[theta])^2]) - 
       6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
        (-1 + Nc^2 - 4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
       24*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
       68*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
       36*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
       12*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])))/(24*beta^2*Nc^3)}}

resReLp1 := {{((-1 + Nc^2)*(196*beta^2*Nc^2 - 30*beta*Nc^2*Pi^2 + 48*beta^2*Nc^2*Pi^2 - 
     30*beta^3*Nc^2*Pi^2 + 134*beta*Nc^2*Log[(1 - beta)/(1 + beta)] + 
     134*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 24*beta*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 30*beta^2*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 24*beta^3*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 15*beta^4*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] - 72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^
       2 - 72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
     36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
     6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 - 12*beta*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 + 12*beta^2*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 - 12*beta^3*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 + 6*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]^
       3 + 264*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     264*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     144*beta*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     144*beta^3*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     72*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     144*beta^2*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     72*beta^4*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     132*beta^2*Nc^2*Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     72*beta^2*(-1 + Nc^2)*Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     36*beta*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     36*beta^3*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
      PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 6*(1 + beta^2)*
      (beta*(-6 + 17*Nc^2) + 3*(1 + beta^2)*(-1 + Nc^2)*
        Log[(1 - beta)/(1 + beta)])*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 66*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 66*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 36*beta*(-1 + Nc^2)*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 36*beta^3*(-1 + Nc^2)*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta^2*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*beta^4*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
     36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
     18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     18*Nc^2*Zeta[3] + 36*beta^2*Nc^2*Zeta[3] + 18*beta^4*Nc^2*Zeta[3]))/
   (18*beta^2*Nc), 
  -((-1 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     (134*beta*Nc^2 - 6*beta*Nc^2*Pi^2 - 72*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 36*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 36*beta*Log[(-1 + beta^2*Cos[theta]^2)/
         (-1 + beta^2)] + 36*beta*Nc^2*Log[(-1 + beta^2*Cos[theta]^2)/
         (-1 + beta^2)] + 18*beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
         (-1 + beta^2)] - 9*(1 + beta^2)*(-2 + Nc^2)*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      18*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      18*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      9*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      9*beta^2*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/
   (18*beta*Nc^2)}, 
 {-((-1 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     (134*beta*Nc^2 - 6*beta*Nc^2*Pi^2 - 72*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 36*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 36*beta*Log[(-1 + beta^2*Cos[theta]^2)/
         (-1 + beta^2)] + 36*beta*Nc^2*Log[(-1 + beta^2*Cos[theta]^2)/
         (-1 + beta^2)] + 18*beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
         (-1 + beta^2)] - 9*(1 + beta^2)*(-2 + Nc^2)*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      18*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      18*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      9*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      9*beta^2*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/
   (18*beta*Nc^2), ((-1 + Nc^2)*(-196*beta^2*Nc^2 + 196*beta^2*Nc^4 + 
     30*beta*Nc^2*Pi^2 - 48*beta^2*Nc^2*Pi^2 + 30*beta^3*Nc^2*Pi^2 - 
     12*beta^2*Nc^4*Pi^2 - 134*beta*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     134*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)] + 
     15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 24*beta*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 30*beta^2*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 24*beta^3*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 15*beta^4*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] - 36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^
       2 + 72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 12*beta*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 - 12*beta^2*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 + 12*beta^3*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 - 6*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]^
       3 + 144*beta*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     144*beta^3*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     408*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     408*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     72*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     144*beta^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     72*beta^4*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] - 
     268*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     12*beta^2*Nc^4*Pi^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     144*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     144*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     536*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     24*beta^2*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2] - 288*beta*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     288*beta^3*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     72*beta^2*Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     276*beta^2*Nc^2*Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     204*beta^2*Nc^4*Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     36*beta*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta^2*Cos[theta]^2)/
        (-1 + beta^2)] + 36*beta^3*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     72*beta^2*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     72*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     144*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] + 
     144*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2*Cos[theta]^2)/(-1 + beta^2)] - 
     18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
      PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
     12*beta*Nc^2*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
       beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))] - 12*Log[(-1 + beta*Cos[theta])^2/
            (1 + beta*Cos[theta])^2]))*PolyLog[2, (beta^2*Sin[theta]^2)/
        (-1 + beta^2)] - 36*beta*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 36*beta^3*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 102*beta*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 102*beta^3*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 18*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     36*beta^2*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     18*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     36*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     36*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     72*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     72*beta^3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     36*beta*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta^3*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     102*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     102*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 36*beta^2*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     72*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     72*beta^3*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
     18*Nc^2*Zeta[3] - 36*beta^2*Nc^2*Zeta[3] - 18*beta^4*Nc^2*Zeta[3] + 
     72*beta^2*Nc^4*Zeta[3]))/(72*beta^2*Nc^3)}}

resImep2gg := {{0, -((1 + beta)^2*Nc^2*Pi*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2])/(2*beta), 0}, 
 {((1 + beta)^2*Nc^2*Pi*Log[(-1 + beta*Cos[theta])^2/
      (1 + beta*Cos[theta])^2])/(2*beta), 0, 0}, {0, 0, 0}}

resImep1gg := {{0, -((Nc^2*Pi*((1 + beta)^2*Lp + (1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
      (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta), 0}, 
 {(Nc^2*Pi*((1 + beta)^2*Lp + (1 + beta^2)*Log[(4*beta)/(1 + beta)^2] - 
     (-1 + beta)^2*Log[(1 - beta)/(1 + beta)])*
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/beta, 0, 0}, 
 {0, 0, 0}}

resReep2outgg := {{-(beta*(1 + beta^2)*(12 - 35*Nc^2 + 23*Nc^4)*Log[(1 - beta)/(1 + beta)] + 
     3*(1 + beta^2)^2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2 + 
     2*beta^2*(6 - 23*Nc^2 + 17*Nc^4 + 
       48*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
        Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
       12*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
       48*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(6*beta^2*Nc), 
  (2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
     (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
      2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
            (-1 + beta^2))])) - 3*beta*Nc^2*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 + 
    beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     (-11 + 6*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      12*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
    2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
      2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
            (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])/
   (3*beta), (-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
     (1 + beta*Cos[theta])^2]*
   (-4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])}, 
 {(2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
     (3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] - 
      2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
            (-1 + beta^2))])) - 3*beta*Nc^2*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 + 
    beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     (-11 + 6*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      12*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
    2*(-3*(1 + beta^2)*(-2 + Nc^2)*Log[(1 - beta)/(1 + beta)] + 
      2*beta*(6 - 17*Nc^2 + 3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
            (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])/
   (3*beta), (-3*(1 + beta^2)^2*Log[(1 - beta)/(1 + beta)]^2 - 
    beta*(1 + beta^2)*Log[(1 - beta)/(1 + beta)]*
     (12 - 23*Nc^2 + 12*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      12*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
    beta^2*(-12 + 46*Nc^2 - 34*Nc^4 + 
      12*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]^2 + 
      11*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      12*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 + 
      6*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
      4*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       (6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
        12*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]) - 
      24*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      68*Nc^4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      48*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      24*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       (11 + 6*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
        12*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])))/(12*beta^2*Nc), 
  -((-4 + Nc^2)*(4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       (3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))])) + 6*beta*Nc^2*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
      beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       (-11 + 12*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
        24*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) - 
      4*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (12*beta*Nc)}, 
 {(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
   (-4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]), 
  -((-4 + Nc^2)*(4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       (3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))])) + 6*beta*Nc^2*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
      beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       (-11 + 12*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
        24*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) - 
      4*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))]))*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/
   (12*beta*Nc), 
  -((-4 + Nc^2)*(3*(1 + beta^2)^2*Log[(1 - beta)/(1 + beta)]^2 + 
      beta*(1 + beta^2)*Log[(1 - beta)/(1 + beta)]*(12 - 23*Nc^2 + 
        12*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
        12*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]) + 
      beta^2*(12 - 46*Nc^2 + 34*Nc^4 - 12*Nc^4*
         Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]^2 + 
        4*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
         (6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] - 12*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2]) - 11*Nc^4*
         Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
        12*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 - 
        6*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]^2 + 
        24*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
        68*Nc^4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
        48*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
         Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
        24*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
         Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
        2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
         (11 + 6*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
          12*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))))/
   (12*beta^2*Nc^3)}}

resReep1outgg := {{(-49*Nc*(-1 + Nc^2))/9 - (22*Lp*Nc*(-1 + Nc^2))/3 - 
   (4*Lp*(-1 + Nc^2)^2)/Nc - (4*Nc*(-1 + Nc^2)*Pi^2)/3 + 
   (5*Nc*(-1 + Nc^2)*Pi^2)/(6*beta) + (5*beta*Nc*(-1 + Nc^2)*Pi^2)/6 - 
   (67*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)])/(18*beta) - 
   (67*beta*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)])/18 - 
   (11*Lp*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)])/(3*beta) - 
   (11*beta*Lp*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)])/3 - 
   (4*Lp*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)])/(beta*Nc) - 
   (4*beta*Lp*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)])/Nc + 
   (5*Nc*(-1 + Nc^2)*Pi^2*Log[(1 - beta)/(1 + beta)])/6 + 
   (5*Nc*(-1 + Nc^2)*Pi^2*Log[(1 - beta)/(1 + beta)])/(12*beta^2) - 
   (2*Nc*(-1 + Nc^2)*Pi^2*Log[(1 - beta)/(1 + beta)])/(3*beta) - 
   (2*beta*Nc*(-1 + Nc^2)*Pi^2*Log[(1 - beta)/(1 + beta)])/3 + 
   (5*beta^2*Nc*(-1 + Nc^2)*Pi^2*Log[(1 - beta)/(1 + beta)])/12 + 
   (2*Nc*(-1 + Nc^2)*Log[(4*beta)/(1 + beta)^2]*Log[(1 - beta)/(1 + beta)])/
    beta + 2*beta*Nc*(-1 + Nc^2)*Log[(4*beta)/(1 + beta)^2]*
    Log[(1 - beta)/(1 + beta)] + 2*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^
     2 - (Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^2)/beta - 
   beta*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^2 - 
   (2*Lp*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2)/Nc - 
   (Lp*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2)/(beta^2*Nc) - 
   (beta^2*Lp*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2)/Nc - 
   (Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^3)/3 - 
   (Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^3)/(6*beta^2) + 
   (Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^3)/(3*beta) + 
   (beta*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^3)/3 - 
   (beta^2*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]^3)/6 - 
   (44*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]])/
    (3*beta) - (44*beta*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
     Log[Cos[theta/2]])/3 - (8*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     Log[Cos[theta/2]])/(beta*Nc) - 
   (8*beta*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]])/Nc - 
   (8*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]])/Nc - 
   (4*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]])/
    (beta^2*Nc) - (4*beta^2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]^2*
     Log[Cos[theta/2]])/Nc - 
   16*Lp*Nc*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
    Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
   16*Lp*Nc*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
    Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
   (22*Nc*(-1 + Nc^2)*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)])/3 + 
   (4*(-1 + Nc^2)^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)])/Nc + 
   (2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)])/(beta*Nc) + 
   (2*beta*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)])/Nc + 
   (Nc*(-1 + Nc^2)*PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/beta + 
   beta*Nc*(-1 + Nc^2)*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
    PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
   (Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) - 
   (beta^2*Nc*(-1 + Nc^2)*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, (-1 + beta)^2/(1 + beta)^2])/2 + 
   (11*Nc*(-1 + Nc^2)*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/
    (3*beta) + (11*beta*Nc*(-1 + Nc^2)*PolyLog[2, 
      ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/3 + 
   (2*(-1 + Nc^2)^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/
    (beta*Nc) + (2*beta*(-1 + Nc^2)^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
       (1 + beta)])/Nc + (2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/Nc + 
   ((-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/(beta^2*Nc) + 
   (beta^2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)])/Nc - 
   (11*Nc*(-1 + Nc^2)*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/
    (3*beta) - (11*beta*Nc*(-1 + Nc^2)*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
       (-1 + beta)])/3 - 
   (2*(-1 + Nc^2)^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/
    (beta*Nc) - (2*beta*(-1 + Nc^2)^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
       (-1 + beta)])/Nc - (2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/Nc - 
   ((-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/(beta^2*Nc) - 
   (beta^2*(-1 + Nc^2)^2*Log[(1 - beta)/(1 + beta)]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/Nc + 
   Nc*(-1 + Nc^2)*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
   (Nc*(-1 + Nc^2)*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/(2*beta^2) + 
   (beta^2*Nc*(-1 + Nc^2)*PolyLog[3, (-1 + beta)^2/(1 + beta)^2])/2 - 
   Nc*(-1 + Nc^2)*Zeta[3] - (Nc*(-1 + Nc^2)*Zeta[3])/(2*beta^2) - 
   (beta^2*Nc*(-1 + Nc^2)*Zeta[3])/2, 
  (-72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
       Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
     Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
    36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    18*Lp*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2] - 18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    9*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    9*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    72*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
       Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
    36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
    18*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
    9*(1 + beta^2)*(-2 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
       (1 + beta)] - 18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
    18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
    9*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
    9*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/(9*beta), 
  -4*Lp*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
   (Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]])}, 
 {(-72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
       Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
     Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
    36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    18*Lp*Log[(1 - beta)/(1 + beta)]*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2] - 18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    9*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    9*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    72*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
    72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    36*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
     Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
    72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
       Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    18*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    18*beta^2*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
    36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
    36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
    18*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
    9*(1 + beta^2)*(-2 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/
       (1 + beta*Cos[theta])^2]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
       (1 + beta)] - 18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
    18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
    9*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
    9*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
     PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/(9*beta), 
  -(144*beta^2*Lp - 196*beta^2*Nc^2 - 552*beta^2*Lp*Nc^2 + 196*beta^2*Nc^4 + 
     408*beta^2*Lp*Nc^4 + 30*beta*Nc^2*Pi^2 - 48*beta^2*Nc^2*Pi^2 + 
     30*beta^3*Nc^2*Pi^2 - 12*beta^2*Nc^4*Pi^2 + 
     144*beta*Lp*Log[(1 - beta)/(1 + beta)] + 144*beta^3*Lp*
      Log[(1 - beta)/(1 + beta)] - 134*beta*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     134*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     276*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)] - 
     276*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)] + 
     15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 24*beta*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 30*beta^2*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] - 24*beta^3*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 15*beta^4*Nc^2*Pi^2*
      Log[(1 - beta)/(1 + beta)] + 72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*
      Log[(1 - beta)/(1 + beta)] + 36*Lp*Log[(1 - beta)/(1 + beta)]^2 + 
     72*beta^2*Lp*Log[(1 - beta)/(1 + beta)]^2 + 
     36*beta^4*Lp*Log[(1 - beta)/(1 + beta)]^2 - 
     36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
     72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
     6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 12*beta*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 - 12*beta^2*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 + 12*beta^3*Nc^2*
      Log[(1 - beta)/(1 + beta)]^3 - 6*beta^4*Nc^2*Log[(1 - beta)/(1 + beta)]^
       3 + 288*beta*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     288*beta^3*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     816*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
     816*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
     144*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     288*beta^2*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     144*beta^4*Log[(1 - beta)/(1 + beta)]^2*Log[Cos[theta/2]] + 
     144*beta^2*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     408*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     144*beta^2*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
     268*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
     144*beta^2*Lp*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     12*beta^2*Nc^4*Pi^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     288*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     288*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
     144*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
     72*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2] + 134*beta^2*Nc^4*Log[(-1 + beta*Cos[theta])^2/
        (1 + beta*Cos[theta])^2] + 72*beta^2*Lp*Nc^4*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     6*beta^2*Nc^4*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
         2] - 36*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     36*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     144*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
     144*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     288*beta^2*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
      Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
     144*beta^2*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     408*beta^2*Lp*Nc^4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
     144*beta^2*Lp*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     288*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     144*beta^2*Lp*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     144*beta^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     552*beta^2*Nc^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     408*beta^2*Nc^4*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     72*beta*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     72*beta^3*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     72*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     72*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     144*beta^2*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     144*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
     72*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     72*beta^2*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
     18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
      PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
     24*beta*Nc^2*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
       beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
             (-1 + beta^2))] - 3*Nc^2*Log[(-1 + beta*Cos[theta])^2/
            (1 + beta*Cos[theta])^2]))*PolyLog[2, (beta^2*Sin[theta]^2)/
        (-1 + beta^2)] - 72*beta*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 72*beta^3*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 204*beta*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 204*beta^3*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 36*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     72*beta^2*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
     72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     36*beta^3*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
     72*beta*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     72*beta^3*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     204*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     204*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
        (-1 + beta)] + 72*beta^2*Log[(1 - beta)/(1 + beta)]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
       ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
     36*beta^3*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
      PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
     18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
     18*Nc^2*Zeta[3] - 36*beta^2*Nc^2*Zeta[3] - 18*beta^4*Nc^2*Zeta[3] + 
     72*beta^2*Nc^4*Zeta[3])/(72*beta^2*Nc), 
  -((-4 + Nc^2)*(72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
         Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2] + 18*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      72*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
         Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      72*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
      18*(1 + beta^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(36*beta*Nc)}, 
 {-4*Lp*(-4 + Nc^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
   (Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
    Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]), 
  -((-4 + Nc^2)*(72*beta*Lp*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      204*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 - beta*Cos[theta])/
         Sqrt[1 - beta^2]] + 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      36*beta*Lp*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      67*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      36*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      3*beta*Nc^2*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2] + 18*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      18*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      72*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      72*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      72*beta*Lp*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      204*beta*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      36*Lp*Log[(1 - beta)/(1 + beta)]*Log[(1 + beta*Cos[theta])/
         Sqrt[1 - beta^2]] - 36*beta^2*Lp*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      72*beta*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      36*beta*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
      18*(1 + beta^2)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      18*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      18*beta^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(36*beta*Nc), 
  -((-4 + Nc^2)*(144*beta^2*Lp - 196*beta^2*Nc^2 - 552*beta^2*Lp*Nc^2 + 
      196*beta^2*Nc^4 + 408*beta^2*Lp*Nc^4 + 30*beta*Nc^2*Pi^2 - 
      48*beta^2*Nc^2*Pi^2 + 30*beta^3*Nc^2*Pi^2 - 12*beta^2*Nc^4*Pi^2 + 
      144*beta*Lp*Log[(1 - beta)/(1 + beta)] + 144*beta^3*Lp*
       Log[(1 - beta)/(1 + beta)] - 134*beta*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 134*beta^3*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 276*beta*Lp*Nc^2*
       Log[(1 - beta)/(1 + beta)] - 276*beta^3*Lp*Nc^2*
       Log[(1 - beta)/(1 + beta)] + 15*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 
      24*beta*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      30*beta^2*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] - 
      24*beta^3*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      15*beta^4*Nc^2*Pi^2*Log[(1 - beta)/(1 + beta)] + 
      72*beta*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[(1 - beta)/(1 + beta)] + 
      72*beta^3*Nc^2*Log[(4*beta)/(1 + beta)^2]*Log[(1 - beta)/(1 + beta)] + 
      36*Lp*Log[(1 - beta)/(1 + beta)]^2 + 72*beta^2*Lp*
       Log[(1 - beta)/(1 + beta)]^2 + 36*beta^4*Lp*Log[(1 - beta)/(1 + beta)]^
        2 - 36*beta*Nc^2*Log[(1 - beta)/(1 + beta)]^2 + 
      72*beta^2*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
      36*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]^2 - 
      6*Nc^2*Log[(1 - beta)/(1 + beta)]^3 + 12*beta*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 - 12*beta^2*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 + 12*beta^3*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 - 6*beta^4*Nc^2*
       Log[(1 - beta)/(1 + beta)]^3 + 288*beta*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 288*beta^3*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 816*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 816*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] + 144*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] + 288*beta^2*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] + 144*beta^4*Log[(1 - beta)/(1 + beta)]^2*
       Log[Cos[theta/2]] + 144*beta^2*Lp*Nc^2*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      408*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      144*beta^2*Lp*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      268*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      144*beta^2*Lp*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      12*beta^2*Nc^4*Pi^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      288*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      288*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] + 
      144*beta^2*Lp*Nc^4*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))] - 
      72*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2] + 134*beta^2*Nc^4*Log[(-1 + beta*Cos[theta])^2/
         (1 + beta*Cos[theta])^2] + 72*beta^2*Lp*Nc^4*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      6*beta^2*Nc^4*Pi^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2] - 36*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      36*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      144*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      144*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] - 
      288*beta^2*Lp*Nc^2*Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]]*
       Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2] + 
      144*beta^2*Lp*Nc^2*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      408*beta^2*Lp*Nc^4*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      72*beta^3*Lp*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      144*beta^2*Lp*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] + 
      288*beta^2*Lp*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2]*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      144*beta^2*Lp*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^
          2]*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
      144*beta^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      552*beta^2*Nc^2*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      408*beta^2*Nc^4*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      72*beta*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      72*beta^3*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      72*beta*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      72*beta^3*Nc^2*Log[(1 - beta)/(1 + beta)]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      144*beta^2*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      144*beta^2*Nc^4*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] + 
      72*beta^2*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      72*beta^2*Nc^4*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
      18*(1 + beta^2)*Nc^2*(-2*beta + (1 + beta^2)*
         Log[(1 - beta)/(1 + beta)])*PolyLog[2, (-1 + beta)^2/(1 + beta)^2] - 
      24*beta*Nc^2*(3*(1 + beta^2)*Log[(1 - beta)/(1 + beta)] + 
        beta*(6 - 17*Nc^2 + 6*Nc^2*Log[-((-1 + beta*Cos[theta])^2/
              (-1 + beta^2))] - 3*Nc^2*Log[(-1 + beta*Cos[theta])^2/
             (1 + beta*Cos[theta])^2]))*PolyLog[2, (beta^2*Sin[theta]^2)/
         (-1 + beta^2)] - 72*beta*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] - 72*beta^3*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] + 204*beta*Nc^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] + 204*beta^3*Nc^2*PolyLog[2, 
        ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      36*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] - 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
        ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      36*beta^3*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
      72*beta*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta^3*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      204*beta*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      204*beta^3*Nc^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      36*Log[(1 - beta)/(1 + beta)]*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
         (-1 + beta)] + 72*beta^2*Log[(1 - beta)/(1 + beta)]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      36*beta^4*Log[(1 - beta)/(1 + beta)]*PolyLog[2, 
        ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      72*beta^3*Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      36*beta*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
      36*beta^3*Nc^2*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
      18*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
      36*beta^2*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
      18*beta^4*Nc^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
      18*Nc^2*Zeta[3] - 36*beta^2*Nc^2*Zeta[3] - 18*beta^4*Nc^2*Zeta[3] + 
      72*beta^2*Nc^4*Zeta[3]))/(72*beta^2*Nc^3)}}

resImLp2gg := resImLp2gg

resImLp1gg := resImLp1gg

resReLp2gg := resReLp2gg

resReLp1gg := resReLp1gg

