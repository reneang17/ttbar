resM[1,3][-1,-1] := (-8*Pi^(1 + d/2))/3

resM[1,3][-1,0] := (8*(-5 + 3*EulerGamma)*Pi^(1 + d/2))/9

resM[1,3][0,-1] := (-8*Pi^(1 + d/2)*(5 + 3*Log[1 - beta^2] - 6*Log[1 - beta*CosTheta]))/9

resM[1,3][0,0] := (4*Pi^(1 + d/2)*(-112 + 30*EulerGamma + 3*Pi^2 - 60*ArcTanh[beta*CosTheta] + 
   36*EulerGamma*ArcTanh[beta*CosTheta] - 30*Log[1 - beta^2] + 
   18*EulerGamma*Log[1 - beta^2] + 60*Log[1 - beta*CosTheta] - 
   18*EulerGamma*Log[1 - beta*CosTheta] - 18*Log[1 - beta*CosTheta]^2 - 
   18*Log[1 - beta^2]*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)] + 
   60*Log[1 + beta*CosTheta] - 18*EulerGamma*Log[1 + beta*CosTheta] + 
   18*Log[1 + beta*CosTheta]^2 - 9*Log[1 - beta^2]*
    Log[(1 + beta*CosTheta)/(1 - beta*CosTheta)] + 
   9*Log[1 - beta^2]*Log[-((-1 + beta*CosTheta)^2/(-1 + CosTheta^2))] - 
   30*Log[1 - beta^2*CosTheta^2] + 
   18*Log[(1 - beta*CosTheta)/(1 + beta*CosTheta)]*
    Log[1 - beta^2*CosTheta^2] + 9*PolyLog[2, beta^2] - 
   9*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] + 
   9*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] - 
   36*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] - 
   9*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] + 
   9*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/27

resM[2,3][-1,-1] := (8*Pi^(1 + d/2))/3

resM[2,3][-1,0] := (-8*(-5 + 3*EulerGamma)*Pi^(1 + d/2))/9

resM[2,3][0,-1] := (-8*Pi^(1 + d/2)*(-8 + 3*Log[1 - beta^2] - 6*Log[1 + beta*CosTheta]))/9

resM[2,3][0,0] := (-4*Pi^(1 + d/2)*(-196 + 48*EulerGamma + 3*Pi^2 + 
   6*(8 - 3*Log[1 - beta*CosTheta])*Log[1 - beta*CosTheta] + 
   6*Log[1 + beta*CosTheta]*(-2 + 6*EulerGamma + 3*Log[1 + beta*CosTheta]) - 
   6*Log[1 - beta^2*CosTheta^2]*(8 + 3*Log[-1 - 2/(-1 + beta*CosTheta)]) + 
   3*Log[1 - beta^2]*(10 - 6*EulerGamma - 
     3*Log[-((1 + beta*CosTheta)^2/(-1 + CosTheta^2))] + 
     6*Log[-1 - 2/(-1 + beta*CosTheta)] + 
     3*Log[-1 + 2/(1 + beta*CosTheta)]) - 9*PolyLog[2, beta^2] + 
   9*PolyLog[2, CosTheta^2/(-1 + CosTheta^2)] - 
   9*PolyLog[2, -(((-1 + beta^2)*CosTheta^2)/(-1 + CosTheta^2))] + 
   36*PolyLog[2, -((beta^2*(-1 + CosTheta^2))/(-1 + beta^2))] + 
   9*PolyLog[2, (beta^2*(-1 + CosTheta^2))/(-1 + beta^2*CosTheta^2)] - 
   9*PolyLog[2, 1 + (-1 + beta^2*CosTheta^2)^(-1)]))/27

resM[3,3][-1,-1] := 0

resM[3,3][-1,0] := 0

resM[3,3][0,-1] := 8*Pi^(1 + d/2)

resM[3,3][0,0] := (-8*Pi^(1 + d/2)*(-8 + 3*EulerGamma + 4*Log[1 - beta^2] - 
   4*Log[1 - beta*CosTheta] - 4*Log[1 + beta*CosTheta]))/3

resM[3,4][-1,-1] := 0

resM[3,4][-1,0] := 0

resM[3,4][0,-1] := (8*Pi^(1 + d/2)*(beta + 2*(1 + beta^2)*ArcTanh[beta]))/(3*beta)

resM[3,4][0,0] := (-8*Pi^(1 + d/2)*(beta*(-14 + 3*EulerGamma) + 2*(1 + beta^2)*ArcTanh[beta]*
    (-5 + 3*EulerGamma - 24*Log[Cos[theta/2]]) - 
   6*(1 + beta^2)*PolyLog[2, ((-1 + beta)*Tan[theta/2]^2)/(1 + beta)] + 
   6*(1 + beta^2)*PolyLog[2, ((1 + beta)*Tan[theta/2]^2)/(-1 + beta)]))/
 (9*beta)

