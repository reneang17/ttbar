{Mx44[-1, 0][beta] -> 0, M2x4[-1, 0][beta] -> -(1 + beta*CosTheta)^(-1), 
 M3x4[-1, 0][beta] -> (2*beta*CosTheta)/(1 - beta^2*CosTheta^2), 
 Mx44[0, 0][beta] -> 2/(1 - beta^2 + M2 - beta^2*CosTheta^2*M2), 
 M2x4[0, 0][beta] -> (2*Log[1 + beta*CosTheta] + 2*Log[1 + M2] - 
    Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)])/(1 + beta*CosTheta), 
 M3x4[0, 0][beta] -> (-2*((1 + beta*CosTheta)*Log[1 - beta*CosTheta] + 
     (1 - beta*CosTheta)*Log[1 + beta*CosTheta] + Log[1 + M2] - 
     beta*CosTheta*Log[1 + M2] - Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)]))/
   (-1 + beta^2*CosTheta^2), Mx44[-1, 1][beta] -> 0, M2x4[-1, 1][beta] -> 0, 
 M3x4[-1, 1][beta] -> 0, Mx44[0, 1][beta] -> 
  (-2*(Log[1 - beta^2*CosTheta^2] + Log[1 + M2] - 
     Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)]))/
   (-1 - M2 + beta^2*(1 + CosTheta^2*M2)), 
 Mx44[1, 0][beta] -> (2*(2*ArcTanh[beta*CosTheta] + Log[1 + M2]))/
   (-1 - M2 + beta^2*(1 + CosTheta^2*M2)), M2x4[0, 1][beta_] -> 
  -(PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 - M2 + 
        beta^2*(1 + CosTheta^2*M2)))]/(1 + beta*CosTheta)), 
 M3x4[0, 1][beta_] -> 
  (2*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 - M2 + 
        beta^2*(1 + CosTheta^2*M2)))])/(-1 + beta^2*CosTheta^2), 
 M2x4[1, 0][beta_] -> (-Pi^2/6 - Log[1 + M2]^2/2 - 
    2*Log[1 + beta*CosTheta]*Log[(1 + beta*CosTheta)*(1 + M2)] + 
    Log[-(((1 + beta*CosTheta)^2*(1 + M2)*(1 + CosTheta^2*M2))/
        (-1 + CosTheta^2))]*Log[(1 + M2 - beta^2*(1 + CosTheta^2*M2))/
       (1 + M2)] - PolyLog[2, beta^2*CosTheta^2] - 
    PolyLog[2, (CosTheta^2*(1 + M2))/(-1 + CosTheta^2)] + 
    PolyLog[2, (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
    PolyLog[2, (CosTheta^2*(1 + M2 - beta^2*(1 + CosTheta^2*M2)))/
      (-1 + CosTheta^2)])/(1 + beta*CosTheta), 
 M3x4[1, 0][beta_] -> 
  -((Pi^2/6 + 2*Log[1 - beta*CosTheta]^2 - 2*Log[1 - beta*CosTheta]*
       Log[1 + M2] + Log[1 + M2]^2/2 - 
      Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)]*
       Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
      Log[1 + M2]*Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
      PolyLog[2, beta^2*CosTheta^2] + PolyLog[2, 
       1 + (-1 + beta^2*CosTheta^2)^(-1)] - PolyLog[2, 
       (beta^2*(-1 + CosTheta^2))/((-1 + beta^2*CosTheta^2)*(1 + M2))])/
     (-1 + beta*CosTheta)) + (-Pi^2/6 - Log[1 + M2]^2/2 - 
     2*Log[1 + beta*CosTheta]*Log[(1 + beta*CosTheta)*(1 + M2)] + 
     Log[-(((1 + beta*CosTheta)^2*(1 + M2)*(1 + CosTheta^2*M2))/
         (-1 + CosTheta^2))]*Log[(1 + M2 - beta^2*(1 + CosTheta^2*M2))/
        (1 + M2)] - PolyLog[2, beta^2*CosTheta^2] - 
     PolyLog[2, (CosTheta^2*(1 + M2))/(-1 + CosTheta^2)] + 
     PolyLog[2, (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
     PolyLog[2, (CosTheta^2*(1 + M2 - beta^2*(1 + CosTheta^2*M2)))/
       (-1 + CosTheta^2)])/(1 + beta*CosTheta), 
 Mx44[1, 1][beta_] -> (-2*(Log[(1 + beta*CosTheta)/(1 - beta*CosTheta)] + 
     Log[1 + M2])*(Log[1 - beta^2*CosTheta^2] - 
     Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)]))/
   (1 + M2 - beta^2*(1 + CosTheta^2*M2)), M2x4[1, 1][beta_] -> 
  NNIntegrate[-((2*Log[1 - be*CosTheta]^2 + 2*be*CosTheta*
       Log[1 - be*CosTheta]^2 - Log[1 - be^2]*
       Log[(1 - be*CosTheta)/(1 + be*CosTheta)] - be*CosTheta*Log[1 - be^2]*
       Log[(1 - be*CosTheta)/(1 + be*CosTheta)] - 2*Log[1 + be*CosTheta]^2 - 
      2*be*CosTheta*Log[1 + be*CosTheta]^2 + Log[1 - be^2]*
       Log[-((1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
      be*CosTheta*Log[1 - be^2]*Log[-((1 + be*CosTheta)^2/
          (-1 + CosTheta^2))] + (1 + be*CosTheta)*PolyLog[2, be^2] - 
      (1 + be*CosTheta)*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
      PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
      be*CosTheta*PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
      2*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      2*be^2*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] - 
      PolyLog[2, (be^2*(-1 + CosTheta^2))/(-1 + be^2*CosTheta^2)] - 
      be*CosTheta*PolyLog[2, (be^2*(-1 + CosTheta^2))/
         (-1 + be^2*CosTheta^2)] + PolyLog[2, 
       1 + (-1 + be^2*CosTheta^2)^(-1)] + be*CosTheta*
       PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)])/
     (be*(-1 + be^2)*(1 + be*CosTheta)*(1 + beta*CosTheta))), {be, 0, beta}, 
   {x2, 0, 1}, AccuracyGoal -> 5], M3x4[1, 1][beta_] -> 
  NNIntegrate[(2*(-2*Log[1 - be*CosTheta]^2 + 2*be^2*CosTheta^2*
       Log[1 - be*CosTheta]^2 + Log[1 - be^2]*
       Log[(1 - be*CosTheta)/(1 + be*CosTheta)] - be^2*CosTheta^2*
       Log[1 - be^2]*Log[(1 - be*CosTheta)/(1 + be*CosTheta)] + 
      2*Log[1 + be*CosTheta]^2 - 2*be^2*CosTheta^2*Log[1 + be*CosTheta]^2 - 
      Log[1 - be^2]*Log[-((1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
      be^2*CosTheta^2*Log[1 - be^2]*
       Log[-((1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
      (-1 + be^2*CosTheta^2)*PolyLog[2, be^2] + (1 - be^2*CosTheta^2)*
       PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] - 
      PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
      be^2*CosTheta^2*PolyLog[2, -(((-1 + be^2)*CosTheta^2)/
          (-1 + CosTheta^2))] - 2*be*CosTheta*PolyLog[2, 
        -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      2*be^3*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] - 
      2*beta*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      2*be^2*beta*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/
          (-1 + be^2))] + PolyLog[2, (be^2*(-1 + CosTheta^2))/
        (-1 + be^2*CosTheta^2)] - be^2*CosTheta^2*
       PolyLog[2, (be^2*(-1 + CosTheta^2))/(-1 + be^2*CosTheta^2)] - 
      PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)] + 
      be^2*CosTheta^2*PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)]))/
    (be*(-1 + be^2)*(-1 + be*CosTheta)*(1 + be*CosTheta)*(-1 + beta*CosTheta)*
     (1 + beta*CosTheta)), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5], 
 Mx44[-1, 2][beta] -> 0, M2x4[-1, 2][beta] -> 0, M3x4[-1, 2][beta] -> 0, 
 Mx44[0, 2][beta_] -> 
  (2*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))])/(-1 + beta^2), 
 M2x4[0, 2][beta_] -> 
  -(PolyLog[3, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))]/
    (1 + beta*CosTheta)), M3x4[0, 2][beta_] -> 
  (2*PolyLog[3, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))])/
   (-1 + beta^2*CosTheta^2), Mx44[1, 2][beta_] -> 
  NNIntegrate[(-2*(2*Log[1 - be*CosTheta]^2 - 2*be^2*CosTheta^2*
       Log[1 - be*CosTheta]^2 - 2*Log[1 + be*CosTheta]^2 + 
      2*be^2*CosTheta^2*Log[1 + be*CosTheta]^2 + 
      Log[1 - be^2]*Log[(1 + be*CosTheta)^3/((-1 + be*CosTheta)*
          (-1 + CosTheta^2))] + be^2*CosTheta^2*Log[1 - be^2]*
       Log[((-1 + be*CosTheta)*(-1 + CosTheta^2))/(1 + be*CosTheta)^3] + 
      (1 - be^2*CosTheta^2)*PolyLog[2, be^2] + (-1 + be^2*CosTheta^2)*
       PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + (1 - be^2*CosTheta^2)*
       PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
      2*be*(-1 + be^2)*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/
          (-1 + be^2))] + (-1 + be^2*CosTheta^2)*
       PolyLog[2, (be^2*(-1 + CosTheta^2))/(-1 + be^2*CosTheta^2)] + 
      (1 - be^2*CosTheta^2)*PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)]))/
    (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*CosTheta^2)), {be, 0, beta}, 
   {x2, 0, 1}, AccuracyGoal -> 5]}
