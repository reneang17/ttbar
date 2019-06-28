s1antoniagg := {{(Gamma[1 - ep]*Gamma[1 + ep]*
    (beta*(-1 + Nc^2)*(12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2) - 
       12*ep*(1 + ep*Lp)*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
       12*ep^2*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)]) - 
     ((1 + beta^2)*(1 - Nc^2)*((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*
         Log[(1 - beta)/(1 + beta)] + 12*ep^2*NNIntegrate[
          (-2*PolyLog[2, (be^2*Sin[theta]^2)/(-1 + be^2)])/(-1 + be^2), 
          {be, 0, beta}] + 12*ep*(1 + ep*Lp)*(4*Log[(1 - beta)/(1 + beta)]*
           Log[Cos[theta/2]] - PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
            (1 + beta)] + PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
            (-1 + beta)])))/2))/(6*beta*ep), 
  (Nc*(-12 - 12*ep*Lp + ep^2*(-6*Lp^2 + Pi^2))*Gamma[1 - ep]*Gamma[1 + ep]*
    (Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(3*ep), 0}, 
 {(Nc*(-12 - 12*ep*Lp + ep^2*(-6*Lp^2 + Pi^2))*Gamma[1 - ep]*Gamma[1 + ep]*
    (Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(3*ep), 
  (Gamma[1 - ep]*Gamma[1 + ep]*(2*beta*(-1 + Nc^2)*(12 + 12*ep*Lp + 
       ep^2*(6*Lp^2 - Pi^2) - 12*ep*(1 + ep*Lp)*
        Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
       12*ep^2*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)]) - 
     (1 + beta^2)*((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*
        Log[(1 - beta)/(1 + beta)] + 12*ep^2*NNIntegrate[
         (-2*PolyLog[2, (be^2*Sin[theta]^2)/(-1 + be^2)])/(-1 + be^2), 
         {be, 0, beta}] + 12*ep*(1 + ep*Lp)*(4*Log[(1 - beta)/(1 + beta)]*
          Log[Cos[theta/2]] - PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
           (1 + beta)] + PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
           (-1 + beta)])) - 2*beta*Nc^2*
      ((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*Log[(1 - beta*Cos[theta])/
          Sqrt[1 - beta^2]] - 6*ep*(1 + ep*Lp)*PolyLog[2, 
         (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
       6*ep^2*PolyLog[3, (beta^2*Sin[theta]^2)/(-1 + beta^2)]) - 
     2*beta*Nc^2*((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
       6*ep*(1 + ep*Lp)*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
       6*ep^2*PolyLog[3, (beta^2*Sin[theta]^2)/(-1 + beta^2)])))/
   (24*beta*ep), ((-4 + Nc^2)*(-12 - 12*ep*Lp + ep^2*(-6*Lp^2 + Pi^2))*
    Gamma[1 - ep]*Gamma[1 + ep]*
    (Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(12*ep)}, 
 {0, ((-4 + Nc^2)*(-12 - 12*ep*Lp + ep^2*(-6*Lp^2 + Pi^2))*Gamma[1 - ep]*
    Gamma[1 + ep]*(Log[(1 - beta*Cos[theta])/Sqrt[1 - beta^2]] - 
     Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(12*ep), 
  (Gamma[1 - ep]*Gamma[1 + ep]*
    ((2*beta*(4 - 5*Nc^2 + Nc^4)*(12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2) - 
        12*ep*(1 + ep*Lp)*Log[(-1 + beta^2)/(-1 + beta^2*Cos[theta]^2)] - 
        12*ep^2*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)]))/Nc^2 - 
     ((1 + beta^2)*(-4 + Nc^2)*((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*
         Log[(1 - beta)/(1 + beta)] + 12*ep^2*NNIntegrate[
          (-2*PolyLog[2, (be^2*Sin[theta]^2)/(-1 + be^2)])/(-1 + be^2), 
          {be, 0, beta}] + 12*ep*(1 + ep*Lp)*(4*Log[(1 - beta)/(1 + beta)]*
           Log[Cos[theta/2]] - PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
            (1 + beta)] + PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
            (-1 + beta)])))/Nc^2 + 2*beta*(4 - Nc^2)*
      ((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*Log[(1 - beta*Cos[theta])/
          Sqrt[1 - beta^2]] - 6*ep*(1 + ep*Lp)*PolyLog[2, 
         (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
       6*ep^2*PolyLog[3, (beta^2*Sin[theta]^2)/(-1 + beta^2)]) + 
     2*beta*(4 - Nc^2)*((12 + 12*ep*Lp + ep^2*(6*Lp^2 - Pi^2))*
        Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]] - 
       6*ep*(1 + ep*Lp)*PolyLog[2, (beta^2*Sin[theta]^2)/(-1 + beta^2)] - 
       6*ep^2*PolyLog[3, (beta^2*Sin[theta]^2)/(-1 + beta^2)])))/
   (24*beta*ep)}}

