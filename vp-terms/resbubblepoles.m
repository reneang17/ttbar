resbubblepoles := {{(Nc*(-1 + Nc^2)*((30*(2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)]))/
      (beta*ep^2) + (4*(42 - 18*EulerGamma - 30*Log[1 - beta^2] + 
        30*Log[1 + beta*Cos[theta]] + 
        30*(Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
          Log[1 + beta*Cos[theta]]) + 
        (15*(2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
          (7*EulerGamma + 4*Log[E^(-EulerGamma + Lp/2)/mu] + 2*Log[mu] + 
           Log[16*mu^2] + 2*PolyGamma[0, 1/2]))/(2*beta) + 
        (beta*(-11 + 3*EulerGamma) - ((1 + beta^2)*Log[(1 - beta)/(1 + beta)]*
            (-31 + 15*EulerGamma - 120*Log[Cos[theta/2]]))/2 - 
          15*(1 + beta^2)*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
             (1 + beta)] + 15*(1 + beta^2)*PolyLog[2, 
            ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/beta))/ep + 
     ((15*(2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)])*
         (98*EulerGamma^2 + Pi^2 + 112*EulerGamma*Log[2] + 32*Log[2]^2 + 
          32*Log[E^(-EulerGamma + Lp/2)/mu]^2 + 8*Log[mu]^2 + 
          28*EulerGamma*Log[mu^2] + 16*Log[2]*Log[mu^2] + 2*Log[mu^2]^2 + 
          56*EulerGamma*PolyGamma[0, 1/2] + 32*Log[2]*PolyGamma[0, 1/2] + 
          8*Log[mu^2]*PolyGamma[0, 1/2] + 8*PolyGamma[0, 1/2]^2 + 
          8*Log[mu]*(7*EulerGamma + Log[16*mu^2] + 2*PolyGamma[0, 1/2]) + 
          16*Log[E^(-EulerGamma + Lp/2)/mu]*(7*EulerGamma + 2*Log[mu] + 
            Log[16*mu^2] + 2*PolyGamma[0, 1/2])))/2 + 
       2*(7*EulerGamma + 4*Log[E^(-EulerGamma + Lp/2)/mu] + 2*Log[mu] + 
         Log[16*mu^2] + 2*PolyGamma[0, 1/2])*(62*beta - 30*beta*EulerGamma + 
         31*Log[(1 - beta)/(1 + beta)] + 31*beta^2*
          Log[(1 - beta)/(1 + beta)] - 15*EulerGamma*
          Log[(1 - beta)/(1 + beta)] - 15*beta^2*EulerGamma*
          Log[(1 - beta)/(1 + beta)] - 60*beta*Log[1 - beta^2] + 
         120*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
         120*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
         60*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
         120*beta*Log[1 + beta*Cos[theta]] - 30*(1 + beta^2)*
          PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
         30*(1 + beta^2)*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
            (-1 + beta)]))/beta))/36, 
  ((-1 + Nc^2)*((-60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/ep^2 + 
     (60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-124 + 60*EulerGamma + 15*Log[1 - beta^2] + 
         120*Log[1 + beta*Cos[theta]] - 30*Log[1 - beta^2*Cos[theta]^2]) - 
       15*(-2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
          Log[1 - beta^2*Cos[theta]^2] + Log[1 - beta^2]*
          (Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
           Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
           Log[(beta*Cot[theta] + Csc[theta])^2])))*
      (7*EulerGamma + 4*Log[E^(-EulerGamma + Lp/2)/mu] + 2*Log[mu] + 
       Log[16*mu^2] + 2*PolyGamma[0, 1/2]) - 
     15*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
      (98*EulerGamma^2 + Pi^2 + 112*EulerGamma*Log[2] + 32*Log[2]^2 + 
       32*Log[E^(-EulerGamma + Lp/2)/mu]^2 + 8*Log[mu]^2 + 
       28*EulerGamma*Log[mu^2] + 16*Log[2]*Log[mu^2] + 2*Log[mu^2]^2 + 
       56*EulerGamma*PolyGamma[0, 1/2] + 32*Log[2]*PolyGamma[0, 1/2] + 
       8*Log[mu^2]*PolyGamma[0, 1/2] + 8*PolyGamma[0, 1/2]^2 + 
       8*Log[mu]*(7*EulerGamma + Log[16*mu^2] + 2*PolyGamma[0, 1/2]) + 
       16*Log[E^(-EulerGamma + Lp/2)/mu]*(7*EulerGamma + 2*Log[mu] + 
         Log[16*mu^2] + 2*PolyGamma[0, 1/2])) + 
     (60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       15*(-2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
          Log[1 - beta^2*Cos[theta]^2] + Log[1 - beta^2]*
          (Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
           Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
           Log[(beta*Cot[theta] + Csc[theta])^2])) - 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-15*Log[1 - beta^2] + 2*(62 + 180*EulerGamma + 120*Log[2] + 
           120*Log[E^(-EulerGamma + Lp/2)/mu] + 60*Log[mu] + 30*Log[mu^2] - 
           60*Log[1 + beta*Cos[theta]] + 15*Log[1 - beta^2*Cos[theta]^2] + 
           60*PolyGamma[0, 1/2])))/ep))/36}, 
 {((-1 + Nc^2)*((-60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/ep^2 + 
     (60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-124 + 60*EulerGamma + 15*Log[1 - beta^2] + 
         120*Log[1 + beta*Cos[theta]] - 30*Log[1 - beta^2*Cos[theta]^2]) - 
       15*(-2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
          Log[1 - beta^2*Cos[theta]^2] + Log[1 - beta^2]*
          (Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
           Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
           Log[(beta*Cot[theta] + Csc[theta])^2])))*
      (7*EulerGamma + 4*Log[E^(-EulerGamma + Lp/2)/mu] + 2*Log[mu] + 
       Log[16*mu^2] + 2*PolyGamma[0, 1/2]) - 
     15*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
      (98*EulerGamma^2 + Pi^2 + 112*EulerGamma*Log[2] + 32*Log[2]^2 + 
       32*Log[E^(-EulerGamma + Lp/2)/mu]^2 + 8*Log[mu]^2 + 
       28*EulerGamma*Log[mu^2] + 16*Log[2]*Log[mu^2] + 2*Log[mu^2]^2 + 
       56*EulerGamma*PolyGamma[0, 1/2] + 32*Log[2]*PolyGamma[0, 1/2] + 
       8*Log[mu^2]*PolyGamma[0, 1/2] + 8*PolyGamma[0, 1/2]^2 + 
       8*Log[mu]*(7*EulerGamma + Log[16*mu^2] + 2*PolyGamma[0, 1/2]) + 
       16*Log[E^(-EulerGamma + Lp/2)/mu]*(7*EulerGamma + 2*Log[mu] + 
         Log[16*mu^2] + 2*PolyGamma[0, 1/2])) + 
     (60*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       15*(-2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
          Log[1 - beta^2*Cos[theta]^2] + Log[1 - beta^2]*
          (Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
           Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
           Log[(beta*Cot[theta] + Csc[theta])^2])) - 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-15*Log[1 - beta^2] + 2*(62 + 180*EulerGamma + 120*Log[2] + 
           120*Log[E^(-EulerGamma + Lp/2)/mu] + 60*Log[mu] + 30*Log[mu^2] - 
           60*Log[1 + beta*Cos[theta]] + 15*Log[1 - beta^2*Cos[theta]^2] + 
           60*PolyGamma[0, 1/2])))/ep))/36, 
  ((-1 + Nc^2)*((-30*((1 + beta^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(-1 + Nc^2 + Nc^2*Log[1 - beta^2] - 2*(-2 + Nc^2)*
           Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
          2*Nc^2*Log[1 + beta*Cos[theta]])))/ep^2 - 
     (15*((1 + beta^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(-1 + Nc^2 + Nc^2*Log[1 - beta^2] - 2*(-2 + Nc^2)*
           Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
          2*Nc^2*Log[1 + beta*Cos[theta]]))*(98*EulerGamma^2 + Pi^2 + 
        112*EulerGamma*Log[2] + 32*Log[2]^2 + 
        32*Log[E^(-EulerGamma + Lp/2)/mu]^2 + 8*Log[mu]^2 + 
        28*EulerGamma*Log[mu^2] + 16*Log[2]*Log[mu^2] + 2*Log[mu^2]^2 + 
        56*EulerGamma*PolyGamma[0, 1/2] + 32*Log[2]*PolyGamma[0, 1/2] + 
        8*Log[mu^2]*PolyGamma[0, 1/2] + 8*PolyGamma[0, 1/2]^2 + 
        8*Log[mu]*(7*EulerGamma + Log[16*mu^2] + 2*PolyGamma[0, 1/2]) + 
        16*Log[E^(-EulerGamma + Lp/2)/mu]*(7*EulerGamma + 2*Log[mu] + 
          Log[16*mu^2] + 2*PolyGamma[0, 1/2])))/2 + 
     2*(7*EulerGamma + 4*Log[E^(-EulerGamma + Lp/2)/mu] + 2*Log[mu] + 
       Log[16*mu^2] + 2*PolyGamma[0, 1/2])*(-62*beta + 30*beta*EulerGamma + 
       62*beta*Nc^2 - 30*beta*EulerGamma*Nc^2 - 
       31*Log[(1 - beta)/(1 + beta)] - 31*beta^2*Log[(1 - beta)/(1 + beta)] + 
       15*EulerGamma*Log[(1 - beta)/(1 + beta)] + 15*beta^2*EulerGamma*
        Log[(1 - beta)/(1 + beta)] + 60*beta*Log[1 - beta^2] + 
       2*beta*Nc^2*Log[1 - beta^2] - 30*beta*EulerGamma*Nc^2*
        Log[1 - beta^2] - 120*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
       120*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
       188*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
       120*beta*EulerGamma*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
       58*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
       60*beta*EulerGamma*Nc^2*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])] - 45*beta*Log[1 - beta^2]*
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
       30*beta*Nc^2*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])] - 120*beta*
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
       30*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       120*beta*Log[1 + beta*Cos[theta]] + 8*beta*Nc^2*
        Log[1 + beta*Cos[theta]] + 60*beta*EulerGamma*Nc^2*
        Log[1 + beta*Cos[theta]] - 240*beta*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])]*Log[1 + beta*Cos[theta]] + 
       60*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        Log[1 + beta*Cos[theta]] + 30*beta*Log[1 - beta^2]*
        Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] - 
       6*beta*Nc^2*Log[1 - beta^2*Cos[theta]^2] + 
       60*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] - 30*beta*Nc^2*
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] - 
       30*beta*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 15*beta*Nc^2*Log[1 - beta^2]*
        Log[-1 - 2/(-1 + beta*Cos[theta])] - 
       30*beta*Log[1 - beta^2*Cos[theta]^2]*
        Log[-1 - 2/(-1 + beta*Cos[theta])] + 15*beta*Log[1 - beta^2]*
        Log[-1 + 2/(1 + beta*Cos[theta])] + 30*beta*Log[1 - beta^2]*
        Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
       15*beta*Nc^2*Log[1 - beta^2]*Log[(-1 + beta*Cos[theta])^2*
          Csc[theta]^2] - 30*beta*Log[1 - beta^2]*
        Log[(beta*Cot[theta] + Csc[theta])^2] - 15*beta*Nc^2*
        PolyLog[2, beta^2] - 15*beta*Nc^2*PolyLog[2, 
         1 + (-1 + beta^2*Cos[theta]^2)^(-1)] + 15*beta*Nc^2*
        PolyLog[2, -Cot[theta]^2] - 15*beta*Nc^2*PolyLog[2, 
         (-1 + beta^2)*Cot[theta]^2] + 60*beta*Nc^2*
        PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] + 
       15*beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
          (1 - beta^2*Cos[theta]^2)] + 
       30*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
       30*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
       30*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
       30*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]) - 
     (2*(62*beta + 180*beta*EulerGamma - 62*beta*Nc^2 - 
        180*beta*EulerGamma*Nc^2 + 31*Log[(1 - beta)/(1 + beta)] + 
        31*beta^2*Log[(1 - beta)/(1 + beta)] + 90*EulerGamma*
         Log[(1 - beta)/(1 + beta)] + 90*beta^2*EulerGamma*
         Log[(1 - beta)/(1 + beta)] - 60*beta*Log[1 - beta^2] - 
        2*beta*Nc^2*Log[1 - beta^2] - 180*beta*EulerGamma*Nc^2*
         Log[1 - beta^2] + 120*beta*Log[E^(-EulerGamma + Lp/2)/mu] - 
        120*beta*Nc^2*Log[E^(-EulerGamma + Lp/2)/mu] + 
        60*Log[(1 - beta)/(1 + beta)]*Log[E^(-EulerGamma + Lp/2)/mu] + 
        60*beta^2*Log[(1 - beta)/(1 + beta)]*Log[E^(-EulerGamma + Lp/2)/mu] - 
        120*beta*Nc^2*Log[1 - beta^2]*Log[E^(-EulerGamma + Lp/2)/mu] + 
        60*beta*Log[mu] - 60*beta*Nc^2*Log[mu] + 
        30*Log[(1 - beta)/(1 + beta)]*Log[mu] + 
        30*beta^2*Log[(1 - beta)/(1 + beta)]*Log[mu] - 
        60*beta*Nc^2*Log[1 - beta^2]*Log[mu] + 30*beta*Log[16*mu^2] - 
        30*beta*Nc^2*Log[16*mu^2] + 15*Log[(1 - beta)/(1 + beta)]*
         Log[16*mu^2] + 15*beta^2*Log[(1 - beta)/(1 + beta)]*Log[16*mu^2] - 
        30*beta*Nc^2*Log[1 - beta^2]*Log[16*mu^2] + 
        120*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] + 
        120*beta^2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]] - 
        188*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
        720*beta*EulerGamma*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] + 58*beta*Nc^2*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        360*beta*EulerGamma*Nc^2*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] + 45*beta*Log[1 - beta^2]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
        30*beta*Nc^2*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] - 480*beta*Log[E^(-EulerGamma + Lp/2)/mu]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        240*beta*Nc^2*Log[E^(-EulerGamma + Lp/2)/mu]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
        240*beta*Log[mu]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        120*beta*Nc^2*Log[mu]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] - 120*beta*Log[16*mu^2]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        60*beta*Nc^2*Log[16*mu^2]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] + 120*beta*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
        30*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
        120*beta*Log[1 + beta*Cos[theta]] - 8*beta*Nc^2*
         Log[1 + beta*Cos[theta]] + 360*beta*EulerGamma*Nc^2*
         Log[1 + beta*Cos[theta]] + 240*beta*Nc^2*
         Log[E^(-EulerGamma + Lp/2)/mu]*Log[1 + beta*Cos[theta]] + 
        120*beta*Nc^2*Log[mu]*Log[1 + beta*Cos[theta]] + 
        60*beta*Nc^2*Log[16*mu^2]*Log[1 + beta*Cos[theta]] + 
        240*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 + beta*Cos[theta]] - 60*beta*Nc^2*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 + beta*Cos[theta]] - 30*beta*Log[1 - beta^2]*
         Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
        6*beta*Nc^2*Log[1 - beta^2*Cos[theta]^2] - 
        60*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] + 30*beta*Nc^2*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] + 30*beta*
         Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] - 15*beta*Nc^2*Log[1 - beta^2]*
         Log[-1 - 2/(-1 + beta*Cos[theta])] + 
        30*beta*Log[1 - beta^2*Cos[theta]^2]*
         Log[-1 - 2/(-1 + beta*Cos[theta])] - 15*beta*Log[1 - beta^2]*
         Log[-1 + 2/(1 + beta*Cos[theta])] - 30*beta*Log[1 - beta^2]*
         Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] + 
        15*beta*Nc^2*Log[1 - beta^2]*Log[(-1 + beta*Cos[theta])^2*
           Csc[theta]^2] + 30*beta*Log[1 - beta^2]*
         Log[(beta*Cot[theta] + Csc[theta])^2] + 60*beta*PolyGamma[0, 1/2] - 
        60*beta*Nc^2*PolyGamma[0, 1/2] + 30*Log[(1 - beta)/(1 + beta)]*
         PolyGamma[0, 1/2] + 30*beta^2*Log[(1 - beta)/(1 + beta)]*
         PolyGamma[0, 1/2] - 60*beta*Nc^2*Log[1 - beta^2]*PolyGamma[0, 1/2] - 
        240*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         PolyGamma[0, 1/2] + 120*beta*Nc^2*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])]*PolyGamma[0, 1/2] + 
        120*beta*Nc^2*Log[1 + beta*Cos[theta]]*PolyGamma[0, 1/2] + 
        15*beta*Nc^2*PolyLog[2, beta^2] + 15*beta*Nc^2*
         PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)] - 
        15*beta*Nc^2*PolyLog[2, -Cot[theta]^2] + 15*beta*Nc^2*
         PolyLog[2, (-1 + beta^2)*Cot[theta]^2] - 60*beta*Nc^2*
         PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
        15*beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
           (1 - beta^2*Cos[theta]^2)] - 
        30*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
        30*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
        30*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
        30*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/ep))/
   (144*beta*Nc)}}

