RGEpoles := {{(4*CF*(-3 + 5*ep)*Nc*(2*beta + (1 + beta^2)*Log[(1 - beta)/(1 + beta)]))/
   (9*beta*ep^2), (-4*CF*(-3 + 5*ep)*Log[(-1 + beta*Cos[theta])^2/
      (1 + beta*Cos[theta])^2])/(9*ep^2)}, 
 {(-4*CF*(-3 + 5*ep)*Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2])/
   (9*ep^2), (CF*(-3 + 5*ep)*((1 + beta^2)*(2*CF - Nc)*Nc*
      Log[(1 - beta)/(1 + beta)] + 
     2*beta*(-(Nc^2*Log[-((-1 + beta*Cos[theta])^2/(-1 + beta^2))]) + 
       2*(CF*Nc + Log[(-1 + beta*Cos[theta])^2/(1 + beta*Cos[theta])^2]))))/
   (9*beta*ep^2*Nc)}}

RGELp2 := {{(-4*CF*(6*beta + 3*Log[(1 - beta)/(1 + beta)] + 
     3*beta^2*Log[(1 - beta)/(1 + beta)]))/(3*beta), 
  (8*CF*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/3}, 
 {(8*CF*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/3, 
  -(CF*(36*beta*CF - 3*Log[(1 - beta)/(1 + beta)] - 
      3*beta^2*Log[(1 - beta)/(1 + beta)] - 
      84*beta*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])] - 
      108*beta*Log[(1 + beta*Cos[theta])/Sqrt[1 - beta^2]]))/(27*beta)}}

RGELp1 := {{(-4*CF*(20*beta + 10*Log[(1 - beta)/(1 + beta)] + 
     10*beta^2*Log[(1 - beta)/(1 + beta)] + 24*Log[(1 - beta)/(1 + beta)]*
      Log[Cos[theta/2]] + 24*beta^2*Log[(1 - beta)/(1 + beta)]*
      Log[Cos[theta/2]] + 12*beta*Log[(-1 + beta^2*Cos[theta]^2)/
        (-1 + beta^2)] - 6*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] - 6*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
        (1 + beta)] + 6*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)] + 
     6*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/(3*beta), 
  (80*CF*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/9}, 
 {(80*CF*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/9, 
  -(CF*(120*beta*CF - 90*Log[(1 - beta)/(1 + beta)] - 
      90*beta^2*Log[(1 - beta)/(1 + beta)] + 
      60*CF*Log[(1 - beta)/(1 + beta)] + 60*beta^2*CF*
       Log[(1 - beta)/(1 + beta)] - 24*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 24*beta^2*Log[(1 - beta)/(1 + beta)]*
       Log[Cos[theta/2]] - 180*beta*Log[-((-1 + beta*Cos[theta])^2/
          (-1 + beta^2))] + 80*beta*Log[(1 - beta*Cos[theta])/
         (1 + beta*Cos[theta])] + 72*beta*CF*Log[(-1 + beta^2*Cos[theta]^2)/
         (-1 + beta^2)] + 108*beta*PolyLog[2, (beta^2*Sin[theta]^2)/
         (-1 + beta^2)] + 6*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] + 6*beta^2*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/
         (1 + beta)] - 6*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
         (-1 + beta)] - 6*beta^2*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/
         (-1 + beta)]))/(27*beta)}}

