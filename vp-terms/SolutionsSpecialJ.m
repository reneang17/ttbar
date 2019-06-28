{Mx34[-1, 0][beta] -> 0, Mx34[-1, 1][beta] -> 0, 
 Mx34[0, 0][beta] -> (2*ArcTanh[(beta*Sqrt[1 + CosTheta^2*M2])/Sqrt[1 + M2]])/
   (beta*Sqrt[1 + M2]*Sqrt[1 + CosTheta^2*M2]), 
 Mx34[0, 1][beta] -> 
  (-2*Log[(CosTheta + Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])/
       (2*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])]*
     Log[(1 - beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])/
       (1 + beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])] + 
    PolyLog[2, ((-CosTheta + Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])*
       (-1 + beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)]))/
      ((CosTheta + Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])*
       (1 + beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)]))] - 
    PolyLog[2, ((-CosTheta + Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])*
       (1 + beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)]))/
      ((CosTheta + Sqrt[(1 + CosTheta^2*M2)/(1 + M2)])*
       (-1 + beta*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)]))])/
   (beta*(1 + M2)*Sqrt[(1 + CosTheta^2*M2)/(1 + M2)]), 
 Mx1134[-1, 0][beta] -> 2/((-1 + beta^2*CosTheta^2)*(1 + M2)^2), 
 Mx34[0, 2][beta_] -> NNIntegrate[
   (2*PolyLog[2, -((be^2*(-1 + CosTheta^2))/(-1 + be^2))])/
    ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6], 
 Mx1134[-1, 1][beta] -> 0, Mx34[-1, 2][_] -> 0}
