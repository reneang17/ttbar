{Mx34[-1, 0][beta] -> 0, Mx34[-1, 1][beta] -> 0, 
 Mx34[0, 0][beta] -> 
  (-2*ArcTan[(beta*Sqrt[1 + CosTheta^2*M2])/Sqrt[-1 - M2]])/
   (beta*Sqrt[-1 - M2]*Sqrt[1 + CosTheta^2*M2]), 
 Mx34[0, 1][beta, 0] -> (-2*Log[(1 - beta)/(1 + beta)]*Log[Cos[theta/2]^2] + 
    PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] - 
    PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)])/beta, 
 Mx1134[-1, 0][beta] -> 2/((-1 + beta^2*CosTheta^2)*(1 + M2)^2)}
