restadpolepoles := {{-((1 + beta^2)*Nc*(-1 + Nc^2)*
     (-(Log[(1 - beta)/(1 + beta)]*(4 + 8*ep + 8*ep^2*EulerGamma - 
          2*ep^2*EulerGamma^2 + 8*ep*Lp + 16*ep^2*Lp + 8*ep^2*Lp^2 + 
          ep^2*Pi^2 + 8*ep^2*Log[mu]^2 + 2*ep^2*Log[mu^2]^2 + 
          32*ep*Log[Cos[theta/2]] + 32*ep^2*EulerGamma*Log[Cos[theta/2]] + 
          64*ep^2*Lp*Log[Cos[theta/2]] + 4*ep*Log[mu^2]*(1 + 2*ep*(1 + Lp) + 
            8*ep*Log[Cos[theta/2]]) - 8*ep*Log[mu]*(1 + 2*ep + 2*ep*Lp + 
            ep*Log[mu^2] + 8*ep*Log[Cos[theta/2]])))/2 + 
      4*ep*(1 + ep*EulerGamma + 2*ep*Lp - 2*ep*Log[mu] + ep*Log[mu^2])*
       PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
      4*ep*(1 + ep*EulerGamma + 2*ep*Lp - 2*ep*Log[mu] + ep*Log[mu^2])*
       PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(2*beta*ep^2), 
  ((-1 + Nc^2)*((-12*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/ep^2 - 
     (3*(2*EulerGamma^2 + 8*Lp^2 + Pi^2 + 8*Lp*Log[2] + 2*Log[2]^2 - 
         4*EulerGamma*(2*Lp + Log[2])) + 8*(6*EulerGamma - 12*Lp - Log[64])*
        Log[mu] + 96*Log[mu]^2)*Log[(1 - beta*Cos[theta])/
        (1 + beta*Cos[theta])] + 
     (3*(4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
        2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] + 
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         (Log[1 - beta^2] - 2*(4 + 4*Lp - 4*Log[mu] + 2*Log[mu^2] - 
            4*Log[1 + beta*Cos[theta]] + Log[1 - beta^2*Cos[theta]^2])) - 
        Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
          Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
          Log[(beta*Cot[theta] + Csc[theta])^2])))/ep + 
     3*(EulerGamma - 2*Lp - Log[2] + 4*Log[mu])*
      (-4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (8 + 4*EulerGamma - Log[16 - 16*beta^2] + 8*Log[mu] + 4*Log[mu^2] - 
         8*Log[1 + beta*Cos[theta]] + 2*Log[1 - beta^2*Cos[theta]^2]) + 
       Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
         Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
         Log[(beta*Cot[theta] + Csc[theta])^2])) - 
     3*(2*EulerGamma + 2*Log[mu] + Log[mu^2/2])*
      (-4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-Log[4 - 4*beta^2] + 2*(4 + 2*Log[mu] + Log[mu^2] - 
           4*Log[1 + beta*Cos[theta]] + Log[1 - beta^2*Cos[theta]^2])) + 
       Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
         Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
         Log[(beta*Cot[theta] + Csc[theta])^2]))))/6}, 
 {((-1 + Nc^2)*((-12*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/ep^2 - 
     (3*(2*EulerGamma^2 + 8*Lp^2 + Pi^2 + 8*Lp*Log[2] + 2*Log[2]^2 - 
         4*EulerGamma*(2*Lp + Log[2])) + 8*(6*EulerGamma - 12*Lp - Log[64])*
        Log[mu] + 96*Log[mu]^2)*Log[(1 - beta*Cos[theta])/
        (1 + beta*Cos[theta])] + 
     (3*(4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
        2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] + 
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         (Log[1 - beta^2] - 2*(4 + 4*Lp - 4*Log[mu] + 2*Log[mu^2] - 
            4*Log[1 + beta*Cos[theta]] + Log[1 - beta^2*Cos[theta]^2])) - 
        Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
          Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
          Log[(beta*Cot[theta] + Csc[theta])^2])))/ep + 
     3*(EulerGamma - 2*Lp - Log[2] + 4*Log[mu])*
      (-4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (8 + 4*EulerGamma - Log[16 - 16*beta^2] + 8*Log[mu] + 4*Log[mu^2] - 
         8*Log[1 + beta*Cos[theta]] + 2*Log[1 - beta^2*Cos[theta]^2]) + 
       Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
         Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
         Log[(beta*Cot[theta] + Csc[theta])^2])) - 
     3*(2*EulerGamma + 2*Log[mu] + Log[mu^2/2])*
      (-4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        (-Log[4 - 4*beta^2] + 2*(4 + 2*Log[mu] + Log[mu^2] - 
           4*Log[1 + beta*Cos[theta]] + Log[1 - beta^2*Cos[theta]^2])) + 
       Log[1 - beta^2]*(Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
         Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
         Log[(beta*Cot[theta] + Csc[theta])^2]))))/6, 
  ((-1 + Nc^2)*((-2*((1 + beta^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(Nc^2*Log[1 - beta^2] - 
          2*((-2 + Nc^2)*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
            Nc^2*Log[1 + beta*Cos[theta]]))))/ep^2 - 
     ((2*EulerGamma^2 + 8*EulerGamma*Lp + 8*Lp^2 + Pi^2 + 8*Log[mu]^2 + 
        4*(EulerGamma + 2*Lp)*Log[mu^2] + 2*Log[mu^2]^2 - 
        8*Log[mu]*(EulerGamma + 2*Lp + Log[mu^2]))*
       ((1 + beta^2)*Log[(1 - beta)/(1 + beta)] - 
        2*beta*(Nc^2*Log[1 - beta^2] - 
          2*((-2 + Nc^2)*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
            Nc^2*Log[1 + beta*Cos[theta]]))))/2 + 
     2*(EulerGamma + 2*Lp - 2*Log[mu] + Log[mu^2])*
      (-2*Log[(1 - beta)/(1 + beta)] - 2*beta^2*Log[(1 - beta)/(1 + beta)] + 
       EulerGamma*Log[(1 - beta)/(1 + beta)] + beta^2*EulerGamma*
        Log[(1 - beta)/(1 + beta)] + 4*beta*Nc^2*Log[1 - beta^2] - 
       2*beta*EulerGamma*Nc^2*Log[1 - beta^2] - 8*Log[(1 - beta)/(1 + beta)]*
        Log[Cos[theta/2]] - 8*beta^2*Log[(1 - beta)/(1 + beta)]*
        Log[Cos[theta/2]] + 16*beta*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])] - 8*beta*EulerGamma*
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
       8*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
       4*beta*EulerGamma*Nc^2*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])] - 2*beta*Log[1 - beta^2]*
        Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
       2*beta*Nc^2*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])] - 
       8*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
       2*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
       8*beta*Nc^2*Log[1 + beta*Cos[theta]] + 4*beta*EulerGamma*Nc^2*
        Log[1 + beta*Cos[theta]] - 16*beta*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])]*Log[1 + beta*Cos[theta]] + 
       4*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        Log[1 + beta*Cos[theta]] + 2*beta*Log[1 - beta^2]*
        Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] + 
       beta*Nc^2*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
          (1 - beta*Cos[theta])] + 4*beta*Log[(1 - beta*Cos[theta])/
          (1 + beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2] - 
       2*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] - 
       4*beta*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
        Log[1 - beta^2*Cos[theta]^2] + 2*beta*Log[1 - beta^2]*
        Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
       beta*Nc^2*Log[1 - beta^2]*Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] - 
       2*beta*Log[1 - beta^2]*Log[(beta*Cot[theta] + Csc[theta])^2] - 
       beta*Nc^2*PolyLog[2, beta^2] - beta*Nc^2*PolyLog[2, 
         (beta^2*Cos[theta]^2)/(-1 + beta^2*Cos[theta]^2)] + 
       beta*Nc^2*PolyLog[2, -Cot[theta]^2] - 
       beta*Nc^2*PolyLog[2, (-1 + beta^2)*Cot[theta]^2] + 
       4*beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] + 
       beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
          (1 - beta^2*Cos[theta]^2)] + 
       2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
       2*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
       2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] - 
       2*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]) - 
     (2*(2*Log[(1 - beta)/(1 + beta)] + 2*beta^2*Log[(1 - beta)/(1 + beta)] + 
        2*Lp*Log[(1 - beta)/(1 + beta)] + 2*beta^2*Lp*
         Log[(1 - beta)/(1 + beta)] - 4*beta*Nc^2*Log[1 - beta^2] - 
        4*beta*Lp*Nc^2*Log[1 - beta^2] - 2*Log[(1 - beta)/(1 + beta)]*
         Log[mu] - 2*beta^2*Log[(1 - beta)/(1 + beta)]*Log[mu] + 
        4*beta*Nc^2*Log[1 - beta^2]*Log[mu] + Log[(1 - beta)/(1 + beta)]*
         Log[mu^2] + beta^2*Log[(1 - beta)/(1 + beta)]*Log[mu^2] - 
        2*beta*Nc^2*Log[1 - beta^2]*Log[mu^2] + 8*Log[(1 - beta)/(1 + beta)]*
         Log[Cos[theta/2]] + 8*beta^2*Log[(1 - beta)/(1 + beta)]*
         Log[Cos[theta/2]] - 16*beta*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] - 16*beta*Lp*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] + 8*beta*Nc^2*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        8*beta*Lp*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        2*beta*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] - 2*beta*Nc^2*Log[1 - beta^2]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        16*beta*Log[mu]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
        8*beta*Nc^2*Log[mu]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] - 8*beta*Log[mu^2]*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] + 
        4*beta*Nc^2*Log[mu^2]*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])] + 8*beta*
         Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 - 
        2*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]^2 + 
        8*beta*Nc^2*Log[1 + beta*Cos[theta]] + 8*beta*Lp*Nc^2*
         Log[1 + beta*Cos[theta]] - 8*beta*Nc^2*Log[mu]*
         Log[1 + beta*Cos[theta]] + 4*beta*Nc^2*Log[mu^2]*
         Log[1 + beta*Cos[theta]] + 16*beta*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])]*Log[1 + beta*Cos[theta]] - 
        4*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 + beta*Cos[theta]] - 2*beta*Log[1 - beta^2]*
         Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])] - 
        beta*Nc^2*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
           (1 - beta*Cos[theta])] - 4*beta*Log[(1 - beta*Cos[theta])/
           (1 + beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2] + 
        2*beta*Nc^2*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
         Log[1 - beta^2*Cos[theta]^2] + 4*beta*Log[(1 + beta*Cos[theta])/
           (1 - beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2] - 
        2*beta*Log[1 - beta^2]*Log[(-1 + beta*Cos[theta])^2*Csc[theta]^2] + 
        beta*Nc^2*Log[1 - beta^2]*Log[(-1 + beta*Cos[theta])^2*
           Csc[theta]^2] + 2*beta*Log[1 - beta^2]*
         Log[(beta*Cot[theta] + Csc[theta])^2] + 
        beta*Nc^2*PolyLog[2, beta^2] + beta*Nc^2*PolyLog[2, 
          (beta^2*Cos[theta]^2)/(-1 + beta^2*Cos[theta]^2)] - 
        beta*Nc^2*PolyLog[2, -Cot[theta]^2] + beta*Nc^2*
         PolyLog[2, (-1 + beta^2)*Cot[theta]^2] - 4*beta*Nc^2*
         PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
        beta*Nc^2*PolyLog[2, (beta^2*Sin[theta]^2)/
           (1 - beta^2*Cos[theta]^2)] - 
        2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
        2*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
        2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
        2*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/ep))/
   (8*beta*Nc)}}

