resT[1,3][-1,1] := (5*Pi^(1 + d/2)*(-6*(8 + (-4 + EulerGamma)*EulerGamma) + Pi^2))/12

resT[1,3][0,1] := Pi^(1 + d/2)*(80/(-1 + beta*Cos[theta]) + (5*EulerGamma^2)/
   (-1 + beta*Cos[theta]) - (35*Pi^2)/(6*(-1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(-1 + beta*Cos[theta]) - 
  (5*Pi^2*ArcTanh[beta*Cos[theta]])/(6*(-1 + beta*Cos[theta])) - 
  (80*beta*Cos[theta])/(-1 + beta*Cos[theta]) - 
  (5*beta*EulerGamma^2*Cos[theta])/(-1 + beta*Cos[theta]) + 
  (35*beta*Pi^2*Cos[theta])/(6*(-1 + beta*Cos[theta])) - 
  (5*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (-1 + beta*Cos[theta]) + (5*beta*Pi^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (6*(-1 + beta*Cos[theta])) - (240*EulerGamma)/(-6 + 6*beta*Cos[theta]) + 
  (10*EulerGamma*Pi^2)/(-6 + 6*beta*Cos[theta]) + 
  (240*ArcTanh[beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) - 
  (120*EulerGamma*ArcTanh[beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) - 
  (10*Pi^2*ArcTanh[beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) + 
  (240*beta*EulerGamma*Cos[theta])/(-6 + 6*beta*Cos[theta]) - 
  (10*beta*EulerGamma*Pi^2*Cos[theta])/(-6 + 6*beta*Cos[theta]) - 
  (240*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/(-6 + 6*beta*Cos[theta]) + 
  (120*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (-6 + 6*beta*Cos[theta]) + (10*beta*Pi^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(-6 + 6*beta*Cos[theta]) + (5*EulerGamma^2*Log[1 - beta^2])/
   (2*(-1 + beta*Cos[theta])) - (5*Pi^2*Log[1 - beta^2])/
   (12*(-1 + beta*Cos[theta])) - (5*beta*EulerGamma^2*Cos[theta]*
    Log[1 - beta^2])/(2*(-1 + beta*Cos[theta])) + 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/(12*(-1 + beta*Cos[theta])) + 
  (120*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) - 
  (60*EulerGamma*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) - 
  (5*Pi^2*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) - 
  (120*beta*Cos[theta]*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) + 
  (60*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) + 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) + 
  (120*Log[1 - beta*Cos[theta]])/(3 - 3*beta*Cos[theta]) - 
  (5*Pi^2*Log[1 - beta*Cos[theta]])/(3 - 3*beta*Cos[theta]) - 
  (120*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(3 - 3*beta*Cos[theta]) + 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/(3 - 3*beta*Cos[theta]) - 
  (5*EulerGamma^2*Log[1 - beta*Cos[theta]])/(2*(-1 + beta*Cos[theta])) + 
  (5*Pi^2*Log[1 - beta*Cos[theta]])/(12*(-1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (2*(-1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (12*(-1 + beta*Cos[theta])) - (120*Log[1 - beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (120*EulerGamma*Log[1 - beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (5*Pi^2*Log[1 - beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (120*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) - (120*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (10*Log[1 - beta*Cos[theta]]^2)/
   (-1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (-1 + beta*Cos[theta]) - (30*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   (-6 + 6*beta*Cos[theta]) + (30*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]]^2)/(-6 + 6*beta*Cos[theta]) + 
  (10*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (-1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (-1 + beta*Cos[theta]) - (30*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (-6 + 6*beta*Cos[theta]) + (30*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (-6 + 6*beta*Cos[theta]) + (120*Log[1 + beta*Cos[theta]])/
   (3 - 3*beta*Cos[theta]) - (5*Pi^2*Log[1 + beta*Cos[theta]])/
   (3 - 3*beta*Cos[theta]) - (120*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3 - 3*beta*Cos[theta]) + (5*beta*Pi^2*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3 - 3*beta*Cos[theta]) - 
  (5*EulerGamma^2*Log[1 + beta*Cos[theta]])/(2*(-1 + beta*Cos[theta])) + 
  (5*Pi^2*Log[1 + beta*Cos[theta]])/(12*(-1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (2*(-1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (12*(-1 + beta*Cos[theta])) - (120*Log[1 + beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (120*EulerGamma*Log[1 + beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (5*Pi^2*Log[1 + beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) + (120*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) - (120*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (-6 + 6*beta*Cos[theta]) - (10*Log[1 + beta*Cos[theta]]^2)/
   (-1 + beta*Cos[theta]) + (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
   (-1 + beta*Cos[theta]) + (30*EulerGamma*Log[1 + beta*Cos[theta]]^2)/
   (-6 + 6*beta*Cos[theta]) - (30*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]]^2)/(-6 + 6*beta*Cos[theta]) + 
  (5*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (-1 + beta*Cos[theta]) - (5*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (-1 + beta*Cos[theta]) - (15*EulerGamma*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (-6 + 6*beta*Cos[theta]) + (15*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (-6 + 6*beta*Cos[theta]) - 
  (5*Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (-1 + beta*Cos[theta]) + (5*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (-1 + beta*Cos[theta]) + (15*EulerGamma*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (-6 + 6*beta*Cos[theta]) - (15*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (-6 + 6*beta*Cos[theta]) - (120*Log[1 - beta^2*Cos[theta]^2])/
   (3 - 3*beta*Cos[theta]) + (5*Pi^2*Log[1 - beta^2*Cos[theta]^2])/
   (3 - 3*beta*Cos[theta]) + 
  (120*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (3 - 3*beta*Cos[theta]) - (5*beta*Pi^2*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(3 - 3*beta*Cos[theta]) - 
  (60*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(-6 + 6*beta*Cos[theta]) + 
  (60*beta*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (-6 + 6*beta*Cos[theta]) - 
  (10*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(-1 + beta*Cos[theta]) + 
  (10*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(-1 + beta*Cos[theta]) + 
  (30*EulerGamma*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(-6 + 6*beta*Cos[theta]) - 
  (30*beta*EulerGamma*Cos[theta]*Log[(1 - beta*Cos[theta])/
      (1 + beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (-6 + 6*beta*Cos[theta]) + NNIntegrate[
   (Log[y]*((-5*Log[1 - beta^2])/(-1 + beta*Cos[theta]) + 
      (5*beta*Cos[theta]*Log[1 - beta^2])/(-1 + beta*Cos[theta]) - 
      (10*Log[(1 - y)^(-1)])/(-1 + beta*Cos[theta]) + 
      (10*beta*Cos[theta]*Log[(1 - y)^(-1)])/(-1 + beta*Cos[theta]) + 
      (5*Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
       (-1 + beta*Cos[theta]) - (5*beta*Cos[theta]*
        Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
       (-1 + beta*Cos[theta])))/y, {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[((-5*EulerGamma*Log[1 - beta^2])/(-1 + beta*Cos[theta]) + 
     (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/(-1 + beta*Cos[theta]) + 
     (60*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) - 
     (60*beta*Cos[theta]*Log[1 - beta^2])/(-6 + 6*beta*Cos[theta]) - 
     (10*EulerGamma*Log[(1 - y)^(-1)])/(-1 + beta*Cos[theta]) + 
     (10*beta*EulerGamma*Cos[theta]*Log[(1 - y)^(-1)])/
      (-1 + beta*Cos[theta]) + (120*Log[(1 - y)^(-1)])/
      (-6 + 6*beta*Cos[theta]) - (120*beta*Cos[theta]*Log[(1 - y)^(-1)])/
      (-6 + 6*beta*Cos[theta]) - (10*Log[1 - y])/(-1 + beta*Cos[theta]) - 
     (10*ArcTanh[beta*Cos[theta]]*Log[1 - y])/(-1 + beta*Cos[theta]) + 
     (10*beta*Cos[theta]*Log[1 - y])/(-1 + beta*Cos[theta]) + 
     (10*beta*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      (-1 + beta*Cos[theta]) + (10*Log[(1 - y)^(-1)]*Log[1 - y])/
      (-1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[(1 - y)^(-1)]*
       Log[1 - y])/(-1 + beta*Cos[theta]) + 
     (5*Log[1 - y]*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta]) - 
     (5*beta*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (-1 + beta*Cos[theta]) + (30*Log[1 - beta*Cos[theta]]^2)/
      (-6 + 6*beta*Cos[theta]) - (30*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^
        2)/(-6 + 6*beta*Cos[theta]) - (30*Log[1 - beta*Cos[theta]]*
       Log[(-1 + beta*Cos[theta])/(-1 + y)])/(-6 + 6*beta*Cos[theta]) + 
     (30*beta*Cos[theta]*Log[1 - beta*Cos[theta]]*
       Log[(-1 + beta*Cos[theta])/(-1 + y)])/(-6 + 6*beta*Cos[theta]) + 
     (30*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (-6 + 6*beta*Cos[theta]) - (30*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (-6 + 6*beta*Cos[theta]) - (30*Log[(1 - y)^(-1)]*
       Log[1 + beta*Cos[theta]])/(-6 + 6*beta*Cos[theta]) + 
     (30*beta*Cos[theta]*Log[(1 - y)^(-1)]*Log[1 + beta*Cos[theta]])/
      (-6 + 6*beta*Cos[theta]) + (5*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (-1 + beta*Cos[theta]) - (5*beta*Cos[theta]*Log[1 - y]*
       Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta]) + 
     (15*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (-6 + 6*beta*Cos[theta]) - (15*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (-6 + 6*beta*Cos[theta]) - (15*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) + (15*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) + (30*Log[(1 - y)^(-1)]*
       Log[1 - beta^2*Cos[theta]^2])/(-6 + 6*beta*Cos[theta]) - 
     (30*beta*Cos[theta]*Log[(1 - y)^(-1)]*Log[1 - beta^2*Cos[theta]^2])/
      (-6 + 6*beta*Cos[theta]) - (15*Log[(1 - y)^(-1)]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
     (15*beta*Cos[theta]*Log[(1 - y)^(-1)]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) - 
     (30*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
     (30*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) - 
     (15*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
     (15*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
     (15*Log[-(((-1 + beta*Cos[theta])^2*(1 + y*(-1 + Cos[theta]^2)))/
          ((-1 + y)^2*(-1 + Cos[theta]^2)))]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) - 
     (15*beta*Cos[theta]*Log[-(((-1 + beta*Cos[theta])^2*
           (1 + y*(-1 + Cos[theta]^2)))/((-1 + y)^2*(-1 + Cos[theta]^2)))]*
       Log[1 + beta^2*(-1 + y - y*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
     (5*EulerGamma*Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-1 + beta*Cos[theta]) - (5*beta*EulerGamma*Cos[theta]*
       Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-1 + beta*Cos[theta]) - 
     (60*Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-6 + 6*beta*Cos[theta]) + (60*beta*Cos[theta]*
       Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-6 + 6*beta*Cos[theta]) - 
     (5*Log[1 - y]*Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-1 + beta*Cos[theta]) + (5*beta*Cos[theta]*Log[1 - y]*
       Log[(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))/(-1 + y)])/
      (-1 + beta*Cos[theta]) - (15*PolyLog[2, beta^2])/
      (-6 + 6*beta*Cos[theta]) + (15*beta*Cos[theta]*PolyLog[2, beta^2])/
      (-6 + 6*beta*Cos[theta]) + 
     (15*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (-6 + 6*beta*Cos[theta]) - (15*beta*Cos[theta]*
       PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (-6 + 6*beta*Cos[theta]) - 
     (15*PolyLog[2, -(((-1 + beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) + (15*beta*Cos[theta]*
       PolyLog[2, -(((-1 + beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) - 
     (15*PolyLog[2, -(Cos[theta]^2/((-1 + y)*(-1 + Cos[theta]^2)))])/
      (-6 + 6*beta*Cos[theta]) + (15*beta*Cos[theta]*
       PolyLog[2, -(Cos[theta]^2/((-1 + y)*(-1 + Cos[theta]^2)))])/
      (-6 + 6*beta*Cos[theta]) + 
     (30*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (-6 + 6*beta*Cos[theta]) - (30*beta*Cos[theta]*
       PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (-6 + 6*beta*Cos[theta]) + 
     (15*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (-6 + 6*beta*Cos[theta]) - (15*beta*Cos[theta]*
       PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (-6 + 6*beta*Cos[theta]) - 
     (15*PolyLog[2, -((beta^2*(-1 + y)*(-1 + Cos[theta]^2))/
          (-1 + beta^2*Cos[theta]^2))])/(-6 + 6*beta*Cos[theta]) + 
     (15*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + y)*(-1 + Cos[theta]^2))/
          (-1 + beta^2*Cos[theta]^2))])/(-6 + 6*beta*Cos[theta]) + 
     (15*PolyLog[2, beta^2*(1 + y*(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) - (15*beta*Cos[theta]*
       PolyLog[2, beta^2*(1 + y*(-1 + Cos[theta]^2))])/
      (-6 + 6*beta*Cos[theta]) - 
     (30*PolyLog[2, (beta^2*(-1 + y)*(-1 + Cos[theta]^2))/
         (-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))])/
      (-6 + 6*beta*Cos[theta]) + (30*beta*Cos[theta]*
       PolyLog[2, (beta^2*(-1 + y)*(-1 + Cos[theta]^2))/
         (-1 + beta^2*(1 + y*(-1 + Cos[theta]^2)))])/
      (-6 + 6*beta*Cos[theta]) + 
     (15*PolyLog[2, (Cos[theta]^2*(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2))))/
         ((-1 + y)*(-1 + Cos[theta]^2))])/(-6 + 6*beta*Cos[theta]) - 
     (15*beta*Cos[theta]*PolyLog[2, 
        (Cos[theta]^2*(-1 + beta^2*(1 + y*(-1 + Cos[theta]^2))))/
         ((-1 + y)*(-1 + Cos[theta]^2))])/(-6 + 6*beta*Cos[theta]))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (5*beta*Cos[theta]*NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 
       2*be*Cos[theta]*Log[1 - be*Cos[theta]]^2 - 
       2*Log[1 + be*Cos[theta]]^2 + 2*be*Cos[theta]*Log[1 + be*Cos[theta]]^
         2 + Log[1 - be^2]*Log[(1 + be*Cos[theta])/(1 - be*Cos[theta])] - 
       be*Cos[theta]*Log[1 - be^2]*Log[(1 + be*Cos[theta])/
          (1 - be*Cos[theta])] - Log[1 - be^2]*
        Log[-((-1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
       be*Cos[theta]*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
           (-1 + Cos[theta]^2))] + (-1 + be*Cos[theta])*PolyLog[2, be^2] + 
       (1 - be*Cos[theta])*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] - 
       PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
       be*Cos[theta]*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
           (-1 + Cos[theta]^2))] + 
       2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
       2*be^2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
       PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
       be*Cos[theta]*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
          (-1 + be^2*Cos[theta]^2)] - PolyLog[2, 
        1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be*Cos[theta]*
        PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)])/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(-1 + beta*Cos[theta])), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/(-1 + beta*Cos[theta]) - 
  (5*beta^2*Cos[theta]^2*NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 
       2*be*Cos[theta]*Log[1 - be*Cos[theta]]^2 - 
       2*Log[1 + be*Cos[theta]]^2 + 2*be*Cos[theta]*Log[1 + be*Cos[theta]]^
         2 + Log[1 - be^2]*Log[(1 + be*Cos[theta])/(1 - be*Cos[theta])] - 
       be*Cos[theta]*Log[1 - be^2]*Log[(1 + be*Cos[theta])/
          (1 - be*Cos[theta])] - Log[1 - be^2]*
        Log[-((-1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
       be*Cos[theta]*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
           (-1 + Cos[theta]^2))] + (-1 + be*Cos[theta])*PolyLog[2, be^2] + 
       (1 - be*Cos[theta])*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] - 
       PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
       be*Cos[theta]*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
           (-1 + Cos[theta]^2))] + 
       2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
       2*be^2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
       PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
       be*Cos[theta]*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
          (-1 + be^2*Cos[theta]^2)] - PolyLog[2, 
        1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be*Cos[theta]*
        PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)])/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(-1 + beta*Cos[theta])), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/(-1 + beta*Cos[theta]) - 
  (5*NNIntegrate[(-2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        Log[1 - be^2]*Log[(1 + be*Cos[theta])/(1 - be*Cos[theta])] + 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[(1 + be*Cos[theta])/
           (1 - be*Cos[theta])] + Log[1 - be^2]*
         Log[-((-1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        be^2*Cos[theta]^2*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 2*be*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^3*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] - 2*beta*Cos[theta]*PolyLog[2, 
          -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 2*be^2*beta*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        be^2*Cos[theta]^2*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] - be^2*Cos[theta]^2*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(1 + be*Cos[theta])*
       (-1 + beta*Cos[theta])*(1 + beta*Cos[theta])), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) + 
  (5*beta^2*Cos[theta]^2*NNIntegrate[
     (-2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        Log[1 - be^2]*Log[(1 + be*Cos[theta])/(1 - be*Cos[theta])] + 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[(1 + be*Cos[theta])/
           (1 - be*Cos[theta])] + Log[1 - be^2]*
         Log[-((-1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        be^2*Cos[theta]^2*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 2*be*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^3*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] - 2*beta*Cos[theta]*PolyLog[2, 
          -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 2*be^2*beta*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        be^2*Cos[theta]^2*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] - be^2*Cos[theta]^2*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(1 + be*Cos[theta])*
       (-1 + beta*Cos[theta])*(1 + beta*Cos[theta])), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) + 
  (5*NNIntegrate[(-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*
         Log[1 - be^2] - 2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + Log[1 - be^2]*
         Log[(-1 + be*Cos[theta])^3/((1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] + 2*be*(-1 + be^2)*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) - 
  (5*beta^2*NNIntegrate[(-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*
         Log[1 - be^2] - 2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + Log[1 - be^2]*
         Log[(-1 + be*Cos[theta])^3/((1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] + 2*be*(-1 + be^2)*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) - 
  (5*beta*Cos[theta]*NNIntegrate[
     (-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*Log[1 - be^2] - 
        2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + Log[1 - be^2]*
         Log[(-1 + be*Cos[theta])^3/((1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] + 2*be*(-1 + be^2)*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) + 
  (5*beta^3*Cos[theta]*NNIntegrate[
     (-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*Log[1 - be^2] - 
        2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((-1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + Log[1 - be^2]*
         Log[(-1 + be*Cos[theta])^3/((1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] + 2*be*(-1 + be^2)*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(-2 + 2*beta*Cos[theta]) - 
  (5*PolyGamma[2, 1])/(-1 + beta*Cos[theta]) + 
  (5*beta*Cos[theta]*PolyGamma[2, 1])/(-1 + beta*Cos[theta]) + 
  (20*PolyGamma[2, 2])/(-1 + beta*Cos[theta]) - 
  (20*beta*Cos[theta]*PolyGamma[2, 2])/(-1 + beta*Cos[theta]) - 
  (5*PolyLog[2, beta^2])/(-1 + beta*Cos[theta]) + 
  (5*beta*Cos[theta]*PolyLog[2, beta^2])/(-1 + beta*Cos[theta]) + 
  (15*EulerGamma*PolyLog[2, beta^2])/(-6 + 6*beta*Cos[theta]) - 
  (15*beta*EulerGamma*Cos[theta]*PolyLog[2, beta^2])/
   (-6 + 6*beta*Cos[theta]) + 
  (5*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(-1 + beta*Cos[theta]) - 
  (5*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (-1 + beta*Cos[theta]) - 
  (15*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (-6 + 6*beta*Cos[theta]) + (15*beta*EulerGamma*Cos[theta]*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) - 
  (5*PolyLog[2, -(((-1 + beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))])/
   (-1 + beta*Cos[theta]) + 
  (5*beta*Cos[theta]*PolyLog[2, -(((-1 + beta^2)*Cos[theta]^2)/
       (-1 + Cos[theta]^2))])/(-1 + beta*Cos[theta]) + 
  (15*EulerGamma*PolyLog[2, -(((-1 + beta^2)*Cos[theta]^2)/
       (-1 + Cos[theta]^2))])/(-6 + 6*beta*Cos[theta]) - 
  (15*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -(((-1 + beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))])/
   (-6 + 6*beta*Cos[theta]) + 
  (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-1 + beta*Cos[theta]) - 
  (10*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(-1 + beta*Cos[theta]) - 
  (30*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-6 + 6*beta*Cos[theta]) + (30*beta*EulerGamma*Cos[theta]*
    PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-6 + 6*beta*Cos[theta]) + 
  (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (-1 + beta*Cos[theta]) - 
  (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(-1 + beta*Cos[theta]) - 
  (15*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) + 
  (15*beta*EulerGamma*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(-6 + 6*beta*Cos[theta]) - 
  (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (-1 + beta*Cos[theta]) + 
  (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (-1 + beta*Cos[theta]) + 
  (15*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (-6 + 6*beta*Cos[theta]) - (15*beta*EulerGamma*Cos[theta]*
    PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (-6 + 6*beta*Cos[theta]) - 
  (5*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-1 + beta*Cos[theta])^2 + 
  (10*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(-1 + beta*Cos[theta])^2 - 
  (5*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(-1 + beta*Cos[theta])^2)

resT[2,3][-1,1] := (-5*Pi^(1 + d/2)*(-6*(8 + (-4 + EulerGamma)*EulerGamma) + Pi^2))/12

resT[2,3][0,1] := Pi^(1 + d/2)*(-80/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (80*beta^2)/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*EulerGamma)/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^2*EulerGamma)/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*EulerGamma^2)/(1 + beta*Cos[theta]) - 
  (5*Pi^2)/(6*(1 + beta*Cos[theta])) + 
  (5*Pi^2)/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*beta^2*Pi^2)/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*EulerGamma*Pi^2)/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta^2*EulerGamma*Pi^2)/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*ArcTanh[beta*Cos[theta]])/(1 + beta*Cos[theta]) - 
  (20*EulerGamma*ArcTanh[beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
  (5*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(1 + beta*Cos[theta]) - 
  (5*Pi^2*ArcTanh[beta*Cos[theta]])/(2*(1 + beta*Cos[theta])) - 
  (80*beta*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (80*beta^3*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*beta*EulerGamma*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^3*EulerGamma*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta])/(1 + beta*Cos[theta]) - 
  (5*beta*Pi^2*Cos[theta])/(6*(1 + beta*Cos[theta])) + 
  (5*beta*Pi^2*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*beta^3*Pi^2*Cos[theta])/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*beta*EulerGamma*Pi^2*Cos[theta])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (5*beta^3*EulerGamma*Pi^2*Cos[theta])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/(1 + beta*Cos[theta]) - 
  (20*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (1 + beta*Cos[theta]) + (5*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(1 + beta*Cos[theta]) - 
  (5*beta*Pi^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (2*(1 + beta*Cos[theta])) - (20*Log[1 - beta^2])/(1 + beta*Cos[theta]) + 
  (10*EulerGamma*Log[1 - beta^2])/(1 + beta*Cos[theta]) - 
  (5*EulerGamma^2*Log[1 - beta^2])/(2*(1 + beta*Cos[theta])) + 
  (5*Pi^2*Log[1 - beta^2])/(4*(1 + beta*Cos[theta])) - 
  (20*beta*Cos[theta]*Log[1 - beta^2])/(1 + beta*Cos[theta]) + 
  (10*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/(1 + beta*Cos[theta]) - 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 - beta^2])/
   (2*(1 + beta*Cos[theta])) + (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/
   (4*(1 + beta*Cos[theta])) + (20*Log[1 - beta*Cos[theta]])/
   (1 + beta*Cos[theta]) + (40*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^2*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*
    (1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 - beta*Cos[theta]])/
   (1 + beta*Cos[theta]) - (10*EulerGamma*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*Log[1 - beta*Cos[theta]])/(2*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 - beta*Cos[theta]])/(4*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta^2*Pi^2*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (20*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (1 + beta*Cos[theta]) + (40*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (1 + beta*Cos[theta]) - (10*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^3*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (2*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (4*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta^3*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (10*Log[1 - beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) - (5*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) + (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) - (5*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) - 
  (5*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (1 + beta*Cos[theta]) + (5*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (2*(1 + beta*Cos[theta])) - (5*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/(1 + beta*Cos[theta]) + 
  (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (2*(1 + beta*Cos[theta])) + (20*Log[1 + beta*Cos[theta]])/
   (1 + beta*Cos[theta]) + (40*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^2*Log[1 + beta*Cos[theta]])/((-1 + beta^2)*
    (1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 + beta*Cos[theta]])/
   (1 + beta*Cos[theta]) - (10*EulerGamma*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*Log[1 + beta*Cos[theta]])/(2*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 + beta*Cos[theta]])/(4*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 + beta*Cos[theta]])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta^2*Pi^2*Log[1 + beta*Cos[theta]])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (20*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (1 + beta*Cos[theta]) + (40*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (1 + beta*Cos[theta]) - (10*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^3*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (2*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (4*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta^3*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (10*Log[1 + beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) + (5*EulerGamma*Log[1 + beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
   (1 + beta*Cos[theta]) + (5*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) - 
  (10*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (1 + beta*Cos[theta]) + (5*EulerGamma*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/(1 + beta*Cos[theta]) - 
  (10*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/(1 + beta*Cos[theta]) + 
  (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/(1 + beta*Cos[theta]) + 
  (5*Log[1 - beta^2]*Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (1 + beta*Cos[theta]) - (5*EulerGamma*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (2*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (1 + beta*Cos[theta]) - (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (2*(1 + beta*Cos[theta])) - (40*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*beta^2*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*Pi^2*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (5*beta^2*Pi^2*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta^3*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*beta^3*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(1 + beta*Cos[theta]) - 
  (5*EulerGamma*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(1 + beta*Cos[theta]) + 
  (10*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(1 + beta*Cos[theta]) - 
  (5*beta*EulerGamma*Cos[theta]*Log[(1 + beta*Cos[theta])/
      (1 - beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (1 + beta*Cos[theta]) + NNIntegrate[
   (Log[y]*(-10/(1 + beta*Cos[theta]) + 10/((1 - y)*(1 + beta*Cos[theta])) - 
      (10*y)/((1 - y)*(1 + beta*Cos[theta])) - (10*ArcTanh[beta*Cos[theta]])/
       (1 + beta*Cos[theta]) + (10*ArcTanh[beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - (10*y*ArcTanh[beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - (10*beta*Cos[theta])/
       (1 + beta*Cos[theta]) + (10*beta*Cos[theta])/
       ((1 - y)*(1 + beta*Cos[theta])) - (10*beta*y*Cos[theta])/
       ((1 - y)*(1 + beta*Cos[theta])) - (10*beta*ArcTanh[beta*Cos[theta]]*
        Cos[theta])/(1 + beta*Cos[theta]) + 
      (10*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
       ((1 - y)*(1 + beta*Cos[theta])) - (10*beta*y*ArcTanh[beta*Cos[theta]]*
        Cos[theta])/((1 - y)*(1 + beta*Cos[theta])) + 
      (5*Log[1 - beta^2])/(1 + beta*Cos[theta]) + 
      (5*beta*Cos[theta]*Log[1 - beta^2])/(1 + beta*Cos[theta]) - 
      (5*Log[1 - beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
      (5*Log[1 - beta*Cos[theta]])/((1 - y)*(1 + beta*Cos[theta])) - 
      (5*y*Log[1 - beta*Cos[theta]])/((1 - y)*(1 + beta*Cos[theta])) - 
      (5*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
      (5*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - 
      (5*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - (5*Log[1 + beta*Cos[theta]])/
       (1 + beta*Cos[theta]) + (5*Log[1 + beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - (5*y*Log[1 + beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - 
      (5*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
      (5*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - 
      (5*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
       ((1 - y)*(1 + beta*Cos[theta])) - 
      (5*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       ((1 - y)*(1 + beta*Cos[theta])) + 
      (5*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       ((1 - y)*(1 + beta*Cos[theta])) - 
      (5*beta*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       ((1 - y)*(1 + beta*Cos[theta])) + 
      (5*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       ((1 - y)*(1 + beta*Cos[theta]))))/y, {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[(-40/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (40*beta^2)/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*EulerGamma)/(1 + beta*Cos[theta]) + 
     (5*Pi^2)/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (5*beta^2*Pi^2)/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     40/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*beta^2)/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*EulerGamma)/((1 - y)*(1 + beta*Cos[theta])) - 
     (5*Pi^2)/(3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta^2*Pi^2)/(3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*y)/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta^2*y)/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*EulerGamma*y)/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*Pi^2*y)/(3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta^2*Pi^2*y)/(3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*ArcTanh[beta*Cos[theta]])/(1 + beta*Cos[theta]) - 
     (10*EulerGamma*ArcTanh[beta*Cos[theta]])/(1 + beta*Cos[theta]) - 
     (20*ArcTanh[beta*Cos[theta]])/((1 - y)*(1 + beta*Cos[theta])) + 
     (10*EulerGamma*ArcTanh[beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + (20*y*ArcTanh[beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*EulerGamma*y*ArcTanh[beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - (40*beta*Cos[theta])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) + (40*beta^3*Cos[theta])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - (10*beta*EulerGamma*Cos[theta])/
      (1 + beta*Cos[theta]) + (5*beta*Pi^2*Cos[theta])/
      (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (5*beta^3*Pi^2*Cos[theta])/
      (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (40*beta*Cos[theta])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*beta^3*Cos[theta])/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*Cos[theta])/((1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Pi^2*Cos[theta])/(3*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (5*beta^3*Pi^2*Cos[theta])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*beta*y*Cos[theta])/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta^3*y*Cos[theta])/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*y*Cos[theta])/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Pi^2*y*Cos[theta])/(3*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (5*beta^3*Pi^2*y*Cos[theta])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/(1 + beta*Cos[theta]) - 
     (10*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (1 + beta*Cos[theta]) - (20*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      ((1 - y)*(1 + beta*Cos[theta])) + (20*beta*y*ArcTanh[beta*Cos[theta]]*
       Cos[theta])/((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      ((1 - y)*(1 + beta*Cos[theta])) - (10*Log[1 - beta^2])/
      (1 + beta*Cos[theta]) + (5*EulerGamma*Log[1 - beta^2])/
      (1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 - beta^2])/
      (1 + beta*Cos[theta]) + (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/
      (1 + beta*Cos[theta]) + (10*Log[1 - y])/
      ((-1 + y)*(1 + beta*Cos[theta])) - (10*y*Log[1 - y])/
      ((-1 + y)*(1 + beta*Cos[theta])) + 
     (10*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      ((-1 + y)*(1 + beta*Cos[theta])) - (10*y*ArcTanh[beta*Cos[theta]]*
       Log[1 - y])/((-1 + y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - y])/((-1 + y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 - y])/((-1 + y)*(1 + beta*Cos[theta])) + 
     (10*beta*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      ((-1 + y)*(1 + beta*Cos[theta])) - (10*beta*y*ArcTanh[beta*Cos[theta]]*
       Cos[theta]*Log[1 - y])/((-1 + y)*(1 + beta*Cos[theta])) - 
     (20*Log[1 + y/(1 - y)])/((1 - y)*(1 + beta*Cos[theta])) - 
     (20*Log[1 + y/(1 - y)])/((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^2*Log[1 + y/(1 - y)])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (20*y*Log[1 + y/(1 - y)])/
      ((1 - y)*(1 + beta*Cos[theta])) + (20*y*Log[1 + y/(1 - y)])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^2*y*Log[1 + y/(1 - y)])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (20*beta*Cos[theta]*Log[1 + y/(1 - y)])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta*Cos[theta]*Log[1 + y/(1 - y)])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (20*beta^3*Cos[theta]*Log[1 + y/(1 - y)])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (20*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 - beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
     (10*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*
       (1 + beta*Cos[theta])) - (5*EulerGamma*Log[1 - beta*Cos[theta]])/
      (1 + beta*Cos[theta]) - (10*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - (10*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (5*EulerGamma*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + (10*y*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + (10*y*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*y*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (5*EulerGamma*y*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
     (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (5*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*beta^3*Cos[theta]*
       Log[1 - beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (5*beta*EulerGamma*Cos[theta]*
       Log[1 - beta*Cos[theta]])/((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*EulerGamma*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*Log[1 - y]*
       Log[1 - beta*Cos[theta]])/((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 - beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) - 
     (5*Log[1 - beta*Cos[theta]]^2)/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[1 - beta*Cos[theta]]^2)/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) - 
     (5*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (2*(1 + beta*Cos[theta])) - (5*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (2*(1 + beta*Cos[theta])) + (10*Log[1 + beta*Cos[theta]])/
      (1 + beta*Cos[theta]) + (10*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Log[1 + beta*Cos[theta]])/((-1 + beta^2)*
       (1 + beta*Cos[theta])) - (5*EulerGamma*Log[1 + beta*Cos[theta]])/
      (1 + beta*Cos[theta]) - (10*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - (10*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*Log[1 + beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (5*EulerGamma*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + (10*y*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + (10*y*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*y*Log[1 + beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (5*EulerGamma*y*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(1 + beta*Cos[theta]) + 
     (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (5*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (1 + beta*Cos[theta]) - (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*beta^3*Cos[theta]*
       Log[1 + beta*Cos[theta]])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (5*beta*EulerGamma*Cos[theta]*
       Log[1 + beta*Cos[theta]])/((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*EulerGamma*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*Log[1 - y]*
       Log[1 + beta*Cos[theta]])/((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      ((-1 + y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 + beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) - 
     (5*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/(1 + beta*Cos[theta]) + 
     (5*Log[1 + beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      ((1 - y)*(1 + beta*Cos[theta])) - (5*y*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (1 + beta*Cos[theta]) - (5*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (1 + beta*Cos[theta]) + (5*Log[1 - beta^2]*
       Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (2*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (2*(1 + beta*Cos[theta])) - (10*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (10*beta^2*Log[1 - beta^2*Cos[theta]^2])/((-1 + beta^2)*
       (1 + beta*Cos[theta])) + (10*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Log[1 - beta^2*Cos[theta]^2])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*y*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/((-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*beta*Cos[theta]*
       Log[1 - beta^2*Cos[theta]^2])/((-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (10*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^3*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      ((-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(1 + beta*Cos[theta]) - 
     (5*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(1 + beta*Cos[theta]) - 
     (5*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*EulerGamma*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/((1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*EulerGamma*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/((1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - (5*beta*EulerGamma*Cos[theta]*
       Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) + (5*beta*EulerGamma*y*Cos[theta]*
       Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/((-1 + y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((-1 + y)*(1 + beta*Cos[theta])) + (5*beta*y*Cos[theta]*Log[1 - y]*
       Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((-1 + y)*(1 + beta*Cos[theta])) - 
     (5*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(1 + beta*Cos[theta])) + (5*PolyLog[2, beta^2])/
      (2*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*PolyLog[2, beta^2])/
      (2*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (2*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (2*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (2*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (1 + beta*Cos[theta]) - (5*beta*Cos[theta]*
       PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (1 + beta*Cos[theta]) - 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (2*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         (-1 + beta^2*Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (2*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      ((1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      ((1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      ((1 - y)*(1 + beta*Cos[theta])))/y, {y, 0, 1}, AccuracyGoal -> 5] - 
  (5*beta*Cos[theta]*NNIntegrate[
     -((2*Log[1 - be*Cos[theta]]^2 + 2*be*Cos[theta]*Log[1 - be*Cos[theta]]^
          2 - Log[1 - be^2]*Log[(1 - be*Cos[theta])/(1 + be*Cos[theta])] - 
        be*Cos[theta]*Log[1 - be^2]*Log[(1 - be*Cos[theta])/
           (1 + be*Cos[theta])] - 2*Log[1 + be*Cos[theta]]^2 - 
        2*be*Cos[theta]*Log[1 + be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[-((1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
        be*Cos[theta]*Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (1 + be*Cos[theta])*PolyLog[2, be^2] - 
        (1 + be*Cos[theta])*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
        be*Cos[theta]*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 
        2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
        be*Cos[theta]*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be*Cos[theta]*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)])/
       (be*(-1 + be^2)*(1 + be*Cos[theta])*(1 + beta*Cos[theta]))), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/(-1 - beta*Cos[theta]) - 
  (5*beta^2*Cos[theta]^2*NNIntegrate[
     -((2*Log[1 - be*Cos[theta]]^2 + 2*be*Cos[theta]*Log[1 - be*Cos[theta]]^
          2 - Log[1 - be^2]*Log[(1 - be*Cos[theta])/(1 + be*Cos[theta])] - 
        be*Cos[theta]*Log[1 - be^2]*Log[(1 - be*Cos[theta])/
           (1 + be*Cos[theta])] - 2*Log[1 + be*Cos[theta]]^2 - 
        2*be*Cos[theta]*Log[1 + be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[-((1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
        be*Cos[theta]*Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (1 + be*Cos[theta])*PolyLog[2, be^2] - 
        (1 + be*Cos[theta])*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] + 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
        be*Cos[theta]*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 
        2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] - 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
        be*Cos[theta]*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] + PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be*Cos[theta]*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)])/
       (be*(-1 + be^2)*(1 + be*Cos[theta])*(1 + beta*Cos[theta]))), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/(-1 - beta*Cos[theta]) + 
  (5*NNIntegrate[(2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[(1 - be*Cos[theta])/(1 + be*Cos[theta])] - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[(1 - be*Cos[theta])/
           (1 + be*Cos[theta])] + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] - 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
        be^2*Cos[theta]^2*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 2*be*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^3*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] - 2*beta*Cos[theta]*PolyLog[2, 
          -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 2*be^2*beta*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
        be^2*Cos[theta]^2*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] - PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be^2*Cos[theta]^2*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(1 + be*Cos[theta])*
       (-1 + beta*Cos[theta])*(1 + beta*Cos[theta])), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(2*(1 + beta*Cos[theta])) - 
  (5*beta^2*Cos[theta]^2*NNIntegrate[
     (2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[(1 - be*Cos[theta])/(1 + be*Cos[theta])] - 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[(1 - be*Cos[theta])/
           (1 + be*Cos[theta])] + 2*Log[1 + be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 - 
        Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/(-1 + Cos[theta]^2))] + 
        be^2*Cos[theta]^2*Log[1 - be^2]*Log[-((1 + be*Cos[theta])^2/
            (-1 + Cos[theta]^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, be^2] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)] - 
        PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] + 
        be^2*Cos[theta]^2*PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/
            (-1 + Cos[theta]^2))] - 2*be*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        2*be^3*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] - 2*beta*Cos[theta]*PolyLog[2, 
          -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 2*be^2*beta*Cos[theta]*
         PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))] + 
        PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] - 
        be^2*Cos[theta]^2*PolyLog[2, (be^2*(-1 + Cos[theta]^2))/
           (-1 + be^2*Cos[theta]^2)] - PolyLog[2, 
         1 + (-1 + be^2*Cos[theta]^2)^(-1)] + be^2*Cos[theta]^2*
         PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^(-1)]))/
      (be*(-1 + be^2)*(-1 + be*Cos[theta])*(1 + be*Cos[theta])*
       (-1 + beta*Cos[theta])*(1 + beta*Cos[theta])), {be, 0, beta}, 
     {x2, 0, 1}, AccuracyGoal -> 5])/(2*(1 + beta*Cos[theta])) - 
  (5*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 - 2*Log[1 + be*Cos[theta]]^2 + 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 + 
        Log[1 - be^2]*Log[(1 + be*Cos[theta])^3/((-1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + be^2*Cos[theta]^2*Log[1 - be^2]*
         Log[((-1 + be*Cos[theta])*(-1 + Cos[theta]^2))/(1 + be*Cos[theta])^
            3] + (1 - be^2*Cos[theta]^2)*PolyLog[2, be^2] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, Cos[theta]^2/
           (-1 + Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        2*be*(-1 + be^2)*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^
            (-1)]))/(be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (2*(1 + beta*Cos[theta])) + 
  (5*beta^2*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 - be*Cos[theta]]^2 - 
        2*Log[1 + be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 + be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[(1 + be*Cos[theta])^3/((-1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + be^2*Cos[theta]^2*Log[1 - be^2]*
         Log[((-1 + be*Cos[theta])*(-1 + Cos[theta]^2))/(1 + be*Cos[theta])^
            3] + (1 - be^2*Cos[theta]^2)*PolyLog[2, be^2] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, Cos[theta]^2/
           (-1 + Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        2*be*(-1 + be^2)*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^
            (-1)]))/(be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (2*(1 + beta*Cos[theta])) - 
  (5*beta*Cos[theta]*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 
        2*be^2*Cos[theta]^2*Log[1 - be*Cos[theta]]^2 - 
        2*Log[1 + be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
         Log[1 + be*Cos[theta]]^2 + Log[1 - be^2]*
         Log[(1 + be*Cos[theta])^3/((-1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + be^2*Cos[theta]^2*Log[1 - be^2]*
         Log[((-1 + be*Cos[theta])*(-1 + Cos[theta]^2))/(1 + be*Cos[theta])^
            3] + (1 - be^2*Cos[theta]^2)*PolyLog[2, be^2] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, Cos[theta]^2/
           (-1 + Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        2*be*(-1 + be^2)*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^
            (-1)]))/(be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (2*(1 + beta*Cos[theta])) + 
  (5*beta^3*Cos[theta]*NNIntegrate[
     (-2*(2*Log[1 - be*Cos[theta]]^2 - 2*be^2*Cos[theta]^2*
         Log[1 - be*Cos[theta]]^2 - 2*Log[1 + be*Cos[theta]]^2 + 
        2*be^2*Cos[theta]^2*Log[1 + be*Cos[theta]]^2 + 
        Log[1 - be^2]*Log[(1 + be*Cos[theta])^3/((-1 + be*Cos[theta])*
            (-1 + Cos[theta]^2))] + be^2*Cos[theta]^2*Log[1 - be^2]*
         Log[((-1 + be*Cos[theta])*(-1 + Cos[theta]^2))/(1 + be*Cos[theta])^
            3] + (1 - be^2*Cos[theta]^2)*PolyLog[2, be^2] + 
        (-1 + be^2*Cos[theta]^2)*PolyLog[2, Cos[theta]^2/
           (-1 + Cos[theta]^2)] + (1 - be^2*Cos[theta]^2)*
         PolyLog[2, -(((-1 + be^2)*Cos[theta]^2)/(-1 + Cos[theta]^2))] - 
        2*be*(-1 + be^2)*Cos[theta]*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/
            (-1 + be^2))] + (-1 + be^2*Cos[theta]^2)*
         PolyLog[2, (be^2*(-1 + Cos[theta]^2))/(-1 + be^2*Cos[theta]^2)] + 
        (1 - be^2*Cos[theta]^2)*PolyLog[2, 1 + (-1 + be^2*Cos[theta]^2)^
            (-1)]))/(be*(-1 + be^2)*(-1 + beta^2)*(-1 + be^2*Cos[theta]^2)), 
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (2*(1 + beta*Cos[theta])) + (5*PolyGamma[2, 1])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - (5*beta^2*PolyGamma[2, 1])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*Cos[theta]*PolyGamma[2, 1])/((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (5*beta^3*Cos[theta]*PolyGamma[2, 1])/((-1 + beta^2)*
    (1 + beta*Cos[theta])) - (20*PolyGamma[2, 2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + (20*beta^2*PolyGamma[2, 2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (20*beta*Cos[theta]*PolyGamma[2, 2])/((-1 + beta^2)*
    (1 + beta*Cos[theta])) + (20*beta^3*Cos[theta]*PolyGamma[2, 2])/
   ((-1 + beta^2)*(1 + beta*Cos[theta])) + (5*PolyLog[2, beta^2])/
   (1 + beta*Cos[theta]) - (5*EulerGamma*PolyLog[2, beta^2])/
   (2*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*PolyLog[2, beta^2])/
   (1 + beta*Cos[theta]) - (5*beta*EulerGamma*Cos[theta]*PolyLog[2, beta^2])/
   (2*(1 + beta*Cos[theta])) - 
  (5*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(1 + beta*Cos[theta]) + 
  (5*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (2*(1 + beta*Cos[theta])) - 
  (5*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (1 + beta*Cos[theta]) + (5*beta*EulerGamma*Cos[theta]*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) + 
  (5*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (1 + beta*Cos[theta]) - 
  (5*EulerGamma*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (2*(1 + beta*Cos[theta])) + 
  (5*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(1 + beta*Cos[theta]) - 
  (5*beta*EulerGamma*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) - 
  (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (1 + beta*Cos[theta]) + 
  (5*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (1 + beta*Cos[theta]) - 
  (10*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(1 + beta*Cos[theta]) + 
  (5*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/(1 + beta*Cos[theta]) - 
  (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (1 + beta*Cos[theta]) + 
  (5*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) - 
  (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(1 + beta*Cos[theta]) + 
  (5*beta*EulerGamma*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(2*(1 + beta*Cos[theta])) + 
  (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/(1 + beta*Cos[theta]) - 
  (5*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (2*(1 + beta*Cos[theta])) + 
  (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (1 + beta*Cos[theta]) - (5*beta*EulerGamma*Cos[theta]*
    PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (2*(1 + beta*Cos[theta])) - 
  (5*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(1 + beta*Cos[theta])^2 - 
  (5*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(1 + beta*Cos[theta])^2 + 
  (5*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   ((-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2) - 
  (5*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/((-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2))

resT[3,3][-1,1] := 0

resT[3,3][0,1] := Pi^(1 + d/2)*(-40/(-1 + beta^2) + (40*beta^2)/(-1 + beta^2) + 
  (20*EulerGamma)/(-1 + beta^2) - (20*beta^2*EulerGamma)/(-1 + beta^2) - 
  (5*EulerGamma^2)/(-1 + beta^2) + (5*beta^2*EulerGamma^2)/(-1 + beta^2) + 
  (5*Pi^2)/(2*(-1 + beta^2)) - (5*beta^2*Pi^2)/(2*(-1 + beta^2)) + 
  (20*Log[1 - beta^2])/(-1 + beta^2) - (20*beta^2*Log[1 - beta^2])/
   (-1 + beta^2) - (10*EulerGamma*Log[1 - beta^2])/(-1 + beta^2) + 
  (10*beta^2*EulerGamma*Log[1 - beta^2])/(-1 + beta^2) - 
  (20*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) + 
  (20*beta^2*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) + 
  (10*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) - 
  (10*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) + 
  NNIntegrate[((10/(-1 + beta^2) - (10*beta^2)/(-1 + beta^2) - 
      10/((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
      (10*beta^2)/((1 - y)*(-1 + beta^2 - beta^2*y + 
         beta^2*y*Cos[theta]^2)) + (10*y)/((1 - y)*(-1 + beta^2 - beta^2*y + 
         beta^2*y*Cos[theta]^2)) - (10*beta^2*y)/
       ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))*Log[y])/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[(-20/(-1 + beta^2) + (20*beta^2)/(-1 + beta^2) + 
     (10*EulerGamma)/(-1 + beta^2) - (10*beta^2*EulerGamma)/(-1 + beta^2) + 
     20/((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*beta^2)/((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*EulerGamma)/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*beta^2*EulerGamma)/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*y)/((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*beta^2*y)/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*EulerGamma*y)/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*beta^2*EulerGamma*y)/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*Log[1 - beta^2])/(-1 + beta^2) - 
     (10*beta^2*Log[1 - beta^2])/(-1 + beta^2) - 
     (10*Log[1 - y])/((-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*beta^2*Log[1 - y])/
      ((-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (10*y*Log[1 - y])/((-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (10*beta^2*y*Log[1 - y])/
      ((-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (10*Log[1 + y/(1 - y)])/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (10*beta^2*Log[1 + y/(1 - y)])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*y*Log[1 + y/(1 - y)])/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*beta^2*y*Log[1 + y/(1 - y)])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) + 
     (10*beta^2*Log[1 - beta^2*Cos[theta]^2])/(-1 + beta^2) + 
     (10*Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (10*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*y*Log[1 - beta^2*Cos[theta]^2])/((1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (10*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (10*beta^2*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (10*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (10*beta^2*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      ((1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-1 + beta^2) - 
  (10*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (-1 + beta^2))

resT[3,4][-1,1] := 0

resT[3,4][0,1] := Pi^(1 + d/2)*((40*ArcTanh[beta])/beta + 40*beta*ArcTanh[beta] - 
  (20*EulerGamma*ArcTanh[beta])/beta - 20*beta*EulerGamma*ArcTanh[beta] + 
  (5*EulerGamma^2*ArcTanh[beta])/beta + 5*beta*EulerGamma^2*ArcTanh[beta] - 
  (5*Pi^2*ArcTanh[beta])/(2*beta) - (5*beta*Pi^2*ArcTanh[beta])/2 + 
  (20*Log[2]*Log[1 - beta])/beta + 20*beta*Log[2]*Log[1 - beta] - 
  (10*EulerGamma*Log[2]*Log[1 - beta])/beta - 10*beta*EulerGamma*Log[2]*
   Log[1 - beta] - (20*Log[2]*Log[1 + beta])/beta - 
  20*beta*Log[2]*Log[1 + beta] + (10*EulerGamma*Log[2]*Log[1 + beta])/beta + 
  10*beta*EulerGamma*Log[2]*Log[1 + beta] - 
  (20*Log[1 - beta]*Log[1 + Cos[theta]])/beta - 
  20*beta*Log[1 - beta]*Log[1 + Cos[theta]] + 
  (10*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]])/beta + 
  10*beta*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]] + 
  (20*Log[1 + beta]*Log[1 + Cos[theta]])/beta + 
  20*beta*Log[1 + beta]*Log[1 + Cos[theta]] - 
  (10*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]])/beta - 
  10*beta*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]] + 
  NNIntegrate[(((-10*ArcTanh[beta])/beta - 10*beta*ArcTanh[beta] - 
      (10*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
         (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
        Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (beta*(-1 + y - y*Cos[theta]^2)) - (10*beta*Sqrt[-(-1 + y)^(-1)]*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (-1 + y - y*Cos[theta]^2) + (10*Sqrt[-(-1 + y)^(-1)]*y*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (beta*(-1 + y - y*Cos[theta]^2)) + (10*beta*Sqrt[-(-1 + y)^(-1)]*y*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (-1 + y - y*Cos[theta]^2))*Log[y])/y, {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[((20*ArcTanh[beta])/beta + 20*beta*ArcTanh[beta] - 
     (10*EulerGamma*ArcTanh[beta])/beta - 10*beta*EulerGamma*ArcTanh[beta] + 
     (20*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (beta*(-1 + y - y*Cos[theta]^2)) + (20*beta*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/(-1 + y - y*Cos[theta]^2) - 
     (10*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (beta*(-1 + y - y*Cos[theta]^2)) - 
     (10*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/(-1 + y - y*Cos[theta]^2) - 
     (20*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (beta*(-1 + y - y*Cos[theta]^2)) - (20*beta*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/(-1 + y - y*Cos[theta]^2) + 
     (10*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (beta*(-1 + y - y*Cos[theta]^2)) + 
     (10*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/(-1 + y - y*Cos[theta]^2) + 
     (10*Log[2]*Log[1 - beta])/beta + 10*beta*Log[2]*Log[1 - beta] - 
     (10*Log[2]*Log[1 + beta])/beta - 10*beta*Log[2]*Log[1 + beta] + 
     (10*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (beta*(-1 + y - y*Cos[theta]^2)) + (10*beta*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (-1 + y - y*Cos[theta]^2) - (10*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (beta*(-1 + y - y*Cos[theta]^2)) - (10*beta*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (-1 + y - y*Cos[theta]^2) - (10*Log[1 - beta]*Log[1 + Cos[theta]])/
      beta - 10*beta*Log[1 - beta]*Log[1 + Cos[theta]] + 
     (10*Log[1 + beta]*Log[1 + Cos[theta]])/beta + 10*beta*Log[1 + beta]*
      Log[1 + Cos[theta]] - 
     (10*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*beta*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*Log[1 + y/(1 - y)]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*beta*Log[1 + y/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (5*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (5*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*beta*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (5*Log[1 + y/(1 - y)]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (5*beta*Log[1 + y/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/((1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/((1 + beta)*
          (1 + Cos[theta]))])/beta + 
     5*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
        ((1 + beta)*(1 + Cos[theta]))] - 
     (5*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
          (1 + Cos[theta]))])/beta - 
     5*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
        ((-1 + beta)*(1 + Cos[theta]))] - 
     (5*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (beta*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (5*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      ((1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (beta*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (5*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      ((1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  5*NNIntegrate[(2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
     ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6] + 
  5*beta^2*NNIntegrate[
    (2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
     ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6] + 
  (10*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/beta + 
  10*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
     ((1 + beta)*(1 + Cos[theta]))] - 
  (5*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/beta - 
  5*beta*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
     ((1 + beta)*(1 + Cos[theta]))] - 
  (10*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
       (1 + Cos[theta]))])/beta - 
  10*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
     ((-1 + beta)*(1 + Cos[theta]))] + 
  (5*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/beta + 
  5*beta*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
     ((-1 + beta)*(1 + Cos[theta]))])

