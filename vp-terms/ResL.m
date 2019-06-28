resL[1,3][-1,-1] := (-10*Pi^(1 + d/2))/3

resL[1,3][-1,0] := (2*(-31 + 15*EulerGamma)*Pi^(1 + d/2))/9

resL[1,3][0,-1] := (-2*Pi^(1 + d/2)*(28 + 15*Log[1 - beta^2] - 30*Log[1 - beta*CosTheta]))/9

resL[1,3][0,0] := (Pi^(1 + d/2)*(-704 + 168*EulerGamma + 15*Pi^2 - 372*ArcTanh[beta*CosTheta] + 
   180*EulerGamma*ArcTanh[beta*CosTheta] - 186*Log[1 - beta^2] + 
   90*EulerGamma*Log[1 - beta^2] + 354*Log[1 - beta*CosTheta] - 
   90*EulerGamma*Log[1 - beta*CosTheta] - 90*Log[1 - beta*CosTheta]^2 - 
   90*Log[1 - beta^2]*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)] + 
   354*Log[1 + beta*CosTheta] - 90*EulerGamma*Log[1 + beta*CosTheta] + 
   90*Log[1 + beta*CosTheta]^2 + 45*Log[1 - beta^2]*
    Log[-((-1 + beta*CosTheta)^2/(-1 + CosTheta^2))] - 
   168*Log[1 - beta^2*CosTheta^2] + 
   90*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)]*
    Log[1 - beta^2*CosTheta^2] - 45*Log[1 - beta^2]*
    Log[-1 - 2/(-1 + beta*CosTheta)] + 45*PolyLog[2, beta^2] - 
   45*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
   45*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
   180*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] - 
   45*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] + 
   45*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/27

resL[2,3][-1,-1] := (10*Pi^(1 + d/2))/3

resL[2,3][-1,0] := (-2*(-31 + 15*EulerGamma)*Pi^(1 + d/2))/9

resL[2,3][0,-1] := (-2*Pi^(1 + d/2)*(-34 + 15*Log[1 - beta^2] - 30*Log[1 + beta*CosTheta]))/9

resL[2,3][0,0] := -(Pi^(1 + d/2)*(-836 + 204*EulerGamma + 15*Pi^2 + 
    6*(34 - 15*Log[1 - beta*CosTheta])*Log[1 - beta*CosTheta] + 
    6*Log[1 + beta*CosTheta]*(-28 + 30*EulerGamma + 
      15*Log[1 + beta*CosTheta]) - 6*Log[1 - beta^2*CosTheta^2]*
     (34 + 15*Log[-1 - 2/(-1 + beta*CosTheta)]) + 
    Log[1 - beta^2]*(186 - 90*EulerGamma - 
      45*Log[-((1 + beta*CosTheta)^2/(-1 + CosTheta^2))] + 
      90*Log[-1 - 2/(-1 + beta*CosTheta)] + 
      45*Log[-1 + 2/(1 + beta*CosTheta)]) - 45*PolyLog[2, beta^2] + 
    45*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] - 
    45*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
    180*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] + 
    45*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] - 
    45*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/27

resL[3,3][-1,-1] := 0

resL[3,3][-1,0] := 0

resL[3,3][0,-1] := 8*Pi^(1 + d/2)

resL[3,3][0,0] := (-8*Pi^(1 + d/2)*(-7 + 3*EulerGamma + 5*Log[1 - beta^2] - 
   5*Log[1 - beta*CosTheta] - 5*Log[1 + beta*CosTheta]))/3

resL[3,4][-1,-1] := 0

resL[3,4][-1,0] := 0

resL[3,4][0,-1] := (4*Pi^(1 + d/2)*(beta + 5*(1 + beta^2)*ArcTanh[beta]))/(3*beta)

resL[3,4][0,0] := (-4*Pi^(1 + d/2)*(beta*(-11 + 3*EulerGamma) + (1 + beta^2)*ArcTanh[beta]*
    (-31 + 15*EulerGamma - 120*Log[Cos[theta/2]]) - 
   15*(1 + beta^2)*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
   15*(1 + beta^2)*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/
 (9*beta)

