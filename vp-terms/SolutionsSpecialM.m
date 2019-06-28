{Mx33[-1, 0][beta] -> 0, M2x3[-1, 0][beta] -> (-1 + beta*CosTheta)^(-1), 
 M4x3[-1, 0][beta] -> (2*beta*CosTheta)/(-1 + beta^2*CosTheta^2), 
 Mx33[0, 0][beta] -> 2/(1 - beta^2 + M2 - beta^2*CosTheta^2*M2), 
 M2x3[0, 0][beta] -> (-2*Log[1 - beta*CosTheta] - 2*Log[1 + M2] + 
    Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)])/(-1 + beta*CosTheta), 
 M4x3[0, 0][beta] -> (-2*((1 + beta*CosTheta)*Log[1 - beta*CosTheta] + 
     (1 - beta*CosTheta)*Log[1 + beta*CosTheta] + Log[1 + M2] + 
     beta*CosTheta*Log[1 + M2] - Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)]))/
   (-1 + beta^2*CosTheta^2), Mx33[-1, 1][beta] -> 0, M2x3[-1, 1][beta] -> 0, 
 M4x3[-1, 1][beta] -> 0, Mx33[0, 1][beta] -> 
  (-2*(Log[1 - beta^2*CosTheta^2] + Log[1 + M2] - 
     Log[1 + M2 - beta^2*(1 + CosTheta^2*M2)]))/
   (-1 - M2 + beta^2*(1 + CosTheta^2*M2)), 
 Mx33[1, 0][beta] -> (-4*ArcTanh[beta*CosTheta] + 2*Log[1 + M2])/
   (-1 - M2 + beta^2*(1 + CosTheta^2*M2)), M2x3[0, 1][beta_] -> 
  PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 - M2 + 
       beta^2*(1 + CosTheta^2*M2)))]/(-1 + beta*CosTheta), 
 M4x3[0, 1][beta_] -> 
  (2*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 - M2 + 
        beta^2*(1 + CosTheta^2*M2)))])/(-1 + beta^2*CosTheta^2), 
 M2x3[1, 0][beta_] -> (Pi^2 + 3*Log[1 + M2]^2 + 12*Log[1 - beta*CosTheta]*
     Log[(1 - beta*CosTheta)*(1 + M2)] - 
    6*Log[-(((-1 + beta*CosTheta)^2*(1 + M2)*(1 + CosTheta^2*M2))/
        (-1 + CosTheta^2))]*Log[(1 + M2 - beta^2*(1 + CosTheta^2*M2))/
       (1 + M2)] + 6*PolyLog[2, beta^2*CosTheta^2] + 
    6*PolyLog[2, (CosTheta^2*(1 + M2))/(-1 + CosTheta^2)] - 
    6*PolyLog[2, (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] - 
    6*PolyLog[2, (CosTheta^2*(1 + M2 - beta^2*(1 + CosTheta^2*M2)))/
       (-1 + CosTheta^2)])/(-6 + 6*beta*CosTheta), 
 M4x3[1, 0][beta_] -> 
  (2*Log[1 + beta*CosTheta]^2 - 2*Log[1 + beta*CosTheta]*Log[1 + M2] + 
     (Pi^2 + 3*Log[1 + M2]^2)/6 - 
     Log[(1 + beta*CosTheta)/(1 - beta*CosTheta)]*
      Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
     Log[1 + M2]*Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] + 
     PolyLog[2, beta^2*CosTheta^2] + PolyLog[2, 
      1 + (-1 + beta^2*CosTheta^2)^(-1)] - 
     PolyLog[2, (beta^2*(-1 + CosTheta^2))/((-1 + beta^2*CosTheta^2)*
        (1 + M2))])/(1 + beta*CosTheta) + 
   (Pi^2 + 3*Log[1 + M2]^2 + 12*Log[1 - beta*CosTheta]*
      Log[(1 - beta*CosTheta)*(1 + M2)] - 
     6*Log[-(((-1 + beta*CosTheta)^2*(1 + M2)*(1 + CosTheta^2*M2))/
         (-1 + CosTheta^2))]*Log[(1 + M2 - beta^2*(1 + CosTheta^2*M2))/
        (1 + M2)] + 6*PolyLog[2, beta^2*CosTheta^2] + 
     6*PolyLog[2, (CosTheta^2*(1 + M2))/(-1 + CosTheta^2)] - 
     6*PolyLog[2, (beta^2*(1 + CosTheta^2*M2))/(1 + M2)] - 
     6*PolyLog[2, (CosTheta^2*(1 + M2 - beta^2*(1 + CosTheta^2*M2)))/
        (-1 + CosTheta^2)])/(-6 + 6*beta*CosTheta), 
 Mx33[1, 1][beta_] -> (-2*(Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)] + 
     Log[1 + M2])*(Log[1 - beta^2*CosTheta^2] - 
     Log[1 - (beta^2*(1 + CosTheta^2*M2))/(1 + M2)]))/
   (1 + M2 - beta^2*(1 + CosTheta^2*M2)), M2x3[1, 1][beta_] -> 
  NNIntegrate[(2*Log[1 - be*CosTheta]^2 - 2*be*CosTheta*
      Log[1 - be*CosTheta]^2 - 2*Log[1 + be*CosTheta]^2 + 
     2*be*CosTheta*Log[1 + be*CosTheta]^2 + Log[1 - be^2]*
      Log[(1 + be*CosTheta)/(1 - be*CosTheta)] - be*CosTheta*Log[1 - be^2]*
      Log[(1 + be*CosTheta)/(1 - be*CosTheta)] - 
     Log[1 - be^2]*Log[-((-1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
     be*CosTheta*Log[1 - be^2]*Log[-((-1 + be*CosTheta)^2/
         (-1 + CosTheta^2))] + (-1 + be*CosTheta)*PolyLog[2, be^2] + 
     (1 - be*CosTheta)*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] - 
     PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
     be*CosTheta*PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
     2*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] - 
     2*be^2*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
     PolyLog[2, (be^2*(-1 + CosTheta^2))/(-1 + be^2*CosTheta^2)] - 
     be*CosTheta*PolyLog[2, (be^2*(-1 + CosTheta^2))/
        (-1 + be^2*CosTheta^2)] - PolyLog[2, 
      1 + (-1 + be^2*CosTheta^2)^(-1)] + be*CosTheta*
      PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)])/
    (be*(-1 + be^2)*(-1 + be*CosTheta)*(-1 + beta*CosTheta)), {be, 0, beta}, 
   {x2, 0, 1}, AccuracyGoal -> 5], M4x3[1, 1][beta_] -> 
  NNIntegrate[(-2*(-2*Log[1 - be*CosTheta]^2 + 2*be^2*CosTheta^2*
       Log[1 - be*CosTheta]^2 + 2*Log[1 + be*CosTheta]^2 - 
      2*be^2*CosTheta^2*Log[1 + be*CosTheta]^2 - 
      Log[1 - be^2]*Log[(1 + be*CosTheta)/(1 - be*CosTheta)] + 
      be^2*CosTheta^2*Log[1 - be^2]*Log[(1 + be*CosTheta)/
         (1 - be*CosTheta)] + Log[1 - be^2]*
       Log[-((-1 + be*CosTheta)^2/(-1 + CosTheta^2))] - 
      be^2*CosTheta^2*Log[1 - be^2]*
       Log[-((-1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
      (1 - be^2*CosTheta^2)*PolyLog[2, be^2] + (-1 + be^2*CosTheta^2)*
       PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
      PolyLog[2, -(((-1 + be^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
      be^2*CosTheta^2*PolyLog[2, -(((-1 + be^2)*CosTheta^2)/
          (-1 + CosTheta^2))] - 2*be*CosTheta*PolyLog[2, 
        -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      2*be^3*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] - 
      2*beta*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      2*be^2*beta*CosTheta*PolyLog[2, -((be^2*(-1 + CosTheta^2))/
          (-1 + be^2))] - PolyLog[2, (be^2*(-1 + CosTheta^2))/
        (-1 + be^2*CosTheta^2)] + be^2*CosTheta^2*
       PolyLog[2, (be^2*(-1 + CosTheta^2))/(-1 + be^2*CosTheta^2)] + 
      PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)] - 
      be^2*CosTheta^2*PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)]))/
    (be*(-1 + be^2)*(-1 + be*CosTheta)*(1 + be*CosTheta)*(-1 + beta*CosTheta)*
     (1 + beta*CosTheta)), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5], 
 Mx33[-1, 2][beta] -> 0, M2x3[-1, 2][beta] -> 0, M4x3[-1, 2][beta] -> 0, 
 Mx33[0, 2][beta_] -> 
  (2*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))])/(-1 + beta^2), 
 M2x3[0, 2][beta_] -> PolyLog[3, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))]/
   (-1 + beta*CosTheta), M4x3[0, 2][beta_] -> 
  (2*PolyLog[3, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))])/
   (-1 + beta^2*CosTheta^2), Mx33[1, 2][beta_] -> 
  NNIntegrate[(-2*(2*be^2*CosTheta^2*ArcTanh[be*CosTheta]*Log[1 - be^2] - 
      2*Log[1 - be*CosTheta]^2 + 2*be^2*CosTheta^2*Log[1 - be*CosTheta]^2 + 
      2*Log[1 + be*CosTheta]^2 - 2*be^2*CosTheta^2*Log[1 + be*CosTheta]^2 - 
      be^2*CosTheta^2*Log[1 - be^2]*
       Log[-((-1 + be*CosTheta)^2/(-1 + CosTheta^2))] + 
      Log[1 - be^2]*Log[(-1 + be*CosTheta)^3/((1 + be*CosTheta)*
          (-1 + CosTheta^2))] + (1 - be^2*CosTheta^2)*PolyLog[2, be^2] + 
      (-1 + be^2*CosTheta^2)*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
      (1 - be^2*CosTheta^2)*PolyLog[2, -(((-1 + be^2)*CosTheta^2)/
          (-1 + CosTheta^2))] + 2*be*(-1 + be^2)*CosTheta*
       PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))] + 
      (-1 + be^2*CosTheta^2)*PolyLog[2, (be^2*(-1 + CosTheta^2))/
         (-1 + be^2*CosTheta^2)] + (1 - be^2*CosTheta^2)*
       PolyLog[2, 1 + (-1 + be^2*CosTheta^2)^(-1)]))/
    (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*CosTheta^2)), {be, 0, beta}, 
   {x2, 0, 1}, AccuracyGoal -> 5]}
