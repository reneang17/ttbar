resT[1,3][-1,-1] := -5*Pi^(1 + d/2)

resT[1,3][-1,0] := 5*(-2 + EulerGamma)*Pi^(1 + d/2)

resT[1,3][0,-1] := -5*Pi^(1 + d/2)*(2 + Log[1 - beta^2] - 2*Log[1 - beta*CosTheta])

resT[1,3][0,0] := (5*Pi^(1 + d/2)*(-48 + 12*EulerGamma + Pi^2 - 24*ArcTanh[beta*CosTheta] + 
   12*EulerGamma*ArcTanh[beta*CosTheta] - 12*Log[1 - beta^2] + 
   6*EulerGamma*Log[1 - beta^2] + 24*Log[1 - beta*CosTheta] - 
   6*EulerGamma*Log[1 - beta*CosTheta] - 6*Log[1 - beta*CosTheta]^2 - 
   6*Log[1 - beta^2]*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)] + 
   24*Log[1 + beta*CosTheta] - 6*EulerGamma*Log[1 + beta*CosTheta] + 
   6*Log[1 + beta*CosTheta]^2 - 3*Log[1 - beta^2]*
    Log[(1 + beta*CosTheta)/(1 - beta*CosTheta)] + 
   3*Log[1 - beta^2]*Log[-((-1 + beta*CosTheta)^2/(-1 + CosTheta^2))] - 
   12*Log[1 - beta^2*CosTheta^2] + 
   6*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)]*
    Log[1 - beta^2*CosTheta^2] + 3*PolyLog[2, beta^2] - 
   3*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
   3*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
   12*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] - 
   3*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] + 
   3*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/6

resT[2,3][-1,-1] := 5*Pi^(1 + d/2)

resT[2,3][-1,0] := -5*(-2 + EulerGamma)*Pi^(1 + d/2)

resT[2,3][0,-1] := -5*Pi^(1 + d/2)*(Log[1 - beta^2] - 2*(1 + Log[1 + beta*CosTheta]))

resT[2,3][0,0] := (-5*Pi^(1 + d/2)*(-48 + 12*EulerGamma + Pi^2 - 24*ArcTanh[beta*CosTheta] - 
   6*Log[1 - beta*CosTheta]^2 + 6*Log[1 + beta*CosTheta]*
    (2*EulerGamma + Log[1 + beta*CosTheta]) - 6*Log[1 - beta^2*CosTheta^2]*
    (2 + Log[-1 - 2/(-1 + beta*CosTheta)]) + 3*Log[1 - beta^2]*
    (4 - 2*EulerGamma - Log[-((1 + beta*CosTheta)^2/(-1 + CosTheta^2))] + 
     2*Log[-1 - 2/(-1 + beta*CosTheta)] + Log[-1 + 2/(1 + beta*CosTheta)]) - 
   3*PolyLog[2, beta^2] + 3*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] - 
   3*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
   12*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] + 
   3*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] - 
   3*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/6

resT[3,3][-1,-1] := 0

resT[3,3][-1,0] := 0

resT[3,3][0,-1] := 10*Pi^(1 + d/2)

resT[3,3][0,0] := -10*Pi^(1 + d/2)*(-2 + EulerGamma + 
  2*Log[(1 - beta^2)/(1 - beta^2*CosTheta^2)])

resT[3,4][-1,-1] := 0

resT[3,4][-1,0] := 0

resT[3,4][0,-1] := (10*(1 + beta^2)*Pi^(1 + d/2)*ArcTanh[beta])/beta

resT[3,4][0,0] := (-10*(1 + beta^2)*Pi^(1 + d/2)*
  (ArcTanh[beta]*(-2 + EulerGamma - 8*Log[Cos[theta/2]]) - 
   PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
   PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/beta

