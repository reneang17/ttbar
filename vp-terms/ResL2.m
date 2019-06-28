resL[1,3][-1,1] := (Pi^(1 + d/2)*(-752 + 6*(62 - 15*EulerGamma)*EulerGamma + 15*Pi^2))/54

resL[1,3][0,1] := Pi^(1 + d/2)*((31*beta*Pi^2*Cos[theta])/(27*(-1 + beta*Cos[theta])^2) - 
  (5*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])^2) - 
  (31*beta^2*Pi^2*Cos[theta]^2)/(27*(-1 + beta*Cos[theta])^2) + 
  (5*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])^2) + 
  160/(3*(-1 + beta*Cos[theta])) - (704*EulerGamma)/
   (27*(-1 + beta*Cos[theta])) + (28*EulerGamma^2)/
   (9*(-1 + beta*Cos[theta])) - (104*Pi^2)/(27*(-1 + beta*Cos[theta])) + 
  (10*EulerGamma*Pi^2)/(9*(-1 + beta*Cos[theta])) + 
  (752*ArcTanh[beta*Cos[theta]])/(27*(-1 + beta*Cos[theta])) - 
  (124*EulerGamma*ArcTanh[beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
  (10*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (5*Pi^2*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (160*beta*Cos[theta])/(3*(-1 + beta*Cos[theta])) + 
  (704*beta*EulerGamma*Cos[theta])/(27*(-1 + beta*Cos[theta])) - 
  (28*beta*EulerGamma^2*Cos[theta])/(9*(-1 + beta*Cos[theta])) + 
  (104*beta*Pi^2*Cos[theta])/(27*(-1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])) - 
  (752*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (27*(-1 + beta*Cos[theta])) + 
  (124*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (9*(-1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) + (5*beta*Pi^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(3*(-1 + beta*Cos[theta])) - 
  (31*Pi^2)/(54*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (5*EulerGamma*Pi^2)/(18*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (31*beta^2*Pi^2*Cos[theta]^2)/(54*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (5*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/
   (18*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (31*Pi^2)/(9*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (5*EulerGamma*Pi^2)/(3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (31*beta^2*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - (5*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (376*Log[1 - beta^2])/(27*(-1 + beta*Cos[theta])) - 
  (62*EulerGamma*Log[1 - beta^2])/(9*(-1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 - beta^2])/(6*(-1 + beta*Cos[theta])) - 
  (376*beta*Cos[theta]*Log[1 - beta^2])/(27*(-1 + beta*Cos[theta])) + 
  (62*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/
   (9*(-1 + beta*Cos[theta])) - (5*beta*EulerGamma^2*Cos[theta]*
    Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) + 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/(6*(-1 + beta*Cos[theta])) - 
  (40*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta]) + 
  (118*EulerGamma*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
  (5*EulerGamma^2*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
  (35*Pi^2*Log[1 - beta*Cos[theta]])/(18*(-1 + beta*Cos[theta])) + 
  (40*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta]) - 
  (118*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (5*beta*EulerGamma^2*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (35*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (18*(-1 + beta*Cos[theta])) + 
  (124*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])^2) - (20*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
  (124*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])^2) + (20*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
  (124*Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (20*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (124*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (20*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (62*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])) - (62*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])) - (40*Log[1 + beta*Cos[theta]])/
   (-1 + beta*Cos[theta]) + (118*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (5*EulerGamma^2*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) + (35*Pi^2*Log[1 + beta*Cos[theta]])/
   (18*(-1 + beta*Cos[theta])) + 
  (40*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta]) - 
  (118*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (5*beta*EulerGamma^2*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (35*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (18*(-1 + beta*Cos[theta])) - (62*Log[1 + beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (10*EulerGamma*Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + (62*beta^2*Cos[theta]^2*
    Log[1 + beta*Cos[theta]]^2)/(9*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (10*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + 
  (31*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (5*EulerGamma*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
      (1 - beta*Cos[theta])])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (31*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (5*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (62*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(-1 + beta*Cos[theta])^2) + (10*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])^2) + (62*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(-1 + beta*Cos[theta])^2) - (10*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (62*Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (10*EulerGamma*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (62*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (10*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (704*Log[1 - beta^2*Cos[theta]^2])/(27*(-1 + beta*Cos[theta])) - 
  (56*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (10*Pi^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (704*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta*Cos[theta])) + (56*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) + 
  (10*beta*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) - 
  (62*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) + 
  (10*EulerGamma*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
  (62*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Cos[theta]*Log[(1 - beta*Cos[theta])/
      (1 + beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])) + NNIntegrate[
   (Log[y]*(-56/(9*(-1 + beta*Cos[theta])) + 
      56/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
      (56*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
      (20*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
      (20*ArcTanh[beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (20*y*ArcTanh[beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (56*beta*Cos[theta])/(9*(-1 + beta*Cos[theta])) - 
      (56*beta*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
      (56*beta*y*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
      (20*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
       (3*(-1 + beta*Cos[theta])) - (20*beta*ArcTanh[beta*Cos[theta]]*
        Cos[theta])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (20*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - (10*Log[1 - beta^2])/
       (3*(-1 + beta*Cos[theta])) + (10*beta*Cos[theta]*Log[1 - beta^2])/
       (3*(-1 + beta*Cos[theta])) - (20*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (20*y*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (20*beta*Cos[theta]*Log[1 + y/(1 - y)])/(3*(1 - y)*
        (-1 + beta*Cos[theta])) - (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (10*Log[1 - beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) - (10*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (10*y*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) + (10*beta*Cos[theta]*
        Log[1 - beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (10*Log[1 + beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) - (10*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (10*y*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) + (10*beta*Cos[theta]*
        Log[1 + beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (10*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (10*beta*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (10*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta]))))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   ((5*beta*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])^2) - 
     (5*beta*Pi^2*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (5*beta*Pi^2*y*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (5*beta^2*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])^2) + 
     (5*beta^2*Pi^2*Cos[theta]^2)/(9*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (5*beta^2*Pi^2*y*Cos[theta]^2)/(9*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     704/(27*(-1 + beta*Cos[theta])) - (56*EulerGamma)/
      (9*(-1 + beta*Cos[theta])) - (10*Pi^2)/(9*(-1 + beta*Cos[theta])) - 
     704/(27*(1 - y)*(-1 + beta*Cos[theta])) + (56*EulerGamma)/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*Pi^2)/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (704*y)/(27*(1 - y)*(-1 + beta*Cos[theta])) - 
     (56*EulerGamma*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*Pi^2*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (124*ArcTanh[beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
     (20*EulerGamma*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (124*ArcTanh[beta*Cos[theta]])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (20*EulerGamma*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + (124*y*ArcTanh[beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (20*EulerGamma*y*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (704*beta*Cos[theta])/
      (27*(-1 + beta*Cos[theta])) + (56*beta*EulerGamma*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (10*beta*Pi^2*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (704*beta*Cos[theta])/
      (27*(1 - y)*(-1 + beta*Cos[theta])) - (56*beta*EulerGamma*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (10*beta*Pi^2*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (704*beta*y*Cos[theta])/
      (27*(1 - y)*(-1 + beta*Cos[theta])) + (56*beta*EulerGamma*y*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + (10*beta*Pi^2*y*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (124*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (20*beta*EulerGamma*
       ArcTanh[beta*Cos[theta]]*Cos[theta])/(3*(-1 + beta*Cos[theta])) + 
     (124*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (20*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (124*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (20*beta*EulerGamma*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (5*Pi^2)/(18*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*Pi^2)/(18*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*Pi^2*y)/(18*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*Pi^2*Cos[theta]^2)/(18*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*beta^2*Pi^2*Cos[theta]^2)/
      (18*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*Pi^2*y*Cos[theta]^2)/(18*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*Pi^2)/(3*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (5*Pi^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (5*Pi^2*y)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (5*beta^2*Pi^2*Cos[theta]^2)/(3*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (5*beta^2*Pi^2*Cos[theta]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (5*beta^2*Pi^2*y*Cos[theta]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (62*Log[1 - beta^2])/
      (9*(-1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 - beta^2])/
      (3*(-1 + beta*Cos[theta])) - (62*beta*Cos[theta]*Log[1 - beta^2])/
      (9*(-1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*
       Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) + 
     (56*Log[1 - y])/(9*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (56*y*Log[1 - y])/(9*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (20*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (20*y*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - (56*beta*Cos[theta]*Log[1 - y])/
      (9*(-1 + y)*(-1 + beta*Cos[theta])) + (56*beta*y*Cos[theta]*Log[1 - y])/
      (9*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (20*beta*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (20*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + (124*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (20*EulerGamma*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (124*y*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (20*EulerGamma*y*Log[1 + y/(1 - y)])/(3*(1 - y)*
       (-1 + beta*Cos[theta])) - (124*beta*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (20*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (124*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (20*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (20*Log[1 - y]*Log[1 + y/(1 - y)])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (20*y*Log[1 - y]*Log[1 + y/(1 - y)])/(3*(-1 + y)*
       (-1 + beta*Cos[theta])) + (20*beta*Cos[theta]*Log[1 - y]*
       Log[1 + y/(1 - y)])/(3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (20*beta*y*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y)])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (5*beta*y*Cos[theta]*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (5*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (5*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + (5*Log[1 + y/(1 - y)]^2)/
      (6*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 + y/(1 - y)]^2)/(6*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (6*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (6*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*Log[1 + y/(1 - y)]^2)/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (5*y*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (5*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (5*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (118*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
     (10*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
     (118*Log[1 - beta*Cos[theta]])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (118*y*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*EulerGamma*y*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (118*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) - (10*beta*EulerGamma*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (118*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (118*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*y*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (20*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(-1 + beta*Cos[theta])^2) - (20*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
     (20*Log[1 - beta*Cos[theta]]^2)/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (20*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]^2)/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (20*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (20*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (20*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (20*beta^2*y*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (20*Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (20*y*Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*
         (1 - beta*Cos[theta])])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (20*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (20*beta^2*y*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])) - (10*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])) - (118*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta*Cos[theta])) + (118*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (118*y*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*EulerGamma*y*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (118*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) - (10*beta*EulerGamma*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (118*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (118*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*y*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (10*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (10*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (10*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (10*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (10*Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (10*Log[1 + beta*Cos[theta]]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (10*beta^2*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (10*beta^2*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (10*beta^2*y*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (5*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*beta^2*Cos[theta]^2*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
         (1 - beta*Cos[theta])])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (10*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(-1 + beta*Cos[theta])^2) + (10*beta^2*Cos[theta]^2*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(-1 + beta*Cos[theta])^2) + 
     (10*Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/
          (-1 + Cos[theta]^2))])/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (10*beta^2*Cos[theta]^2*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (56*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
     (56*Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (56*y*Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (56*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta*Cos[theta])) + (56*beta*Cos[theta]*
       Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (56*beta*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
     (10*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (62*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*EulerGamma*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (62*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*EulerGamma*y*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (62*beta*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (62*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (10*y*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta*y*Cos[theta]*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*Cos[theta]^2*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*y*Cos[theta]^2*
       Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + 
     (10*y*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (10*beta^2*Cos[theta]^2*
       Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (10*beta^2*y*Cos[theta]^2*
       Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (10*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (5*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*y*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (10*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (5*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*Cos[theta]^2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*beta^2*y*Cos[theta]^2*Log[(1 + beta*Cos[theta])/
         (1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/
      (3*(-1 + beta*Cos[theta])^2) + (10*PolyLog[2, beta^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (10*beta*Cos[theta]*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) - 
     (10*beta*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta*y*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(-1 + beta*Cos[theta])^2) + (10*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])^
        2) - (10*beta^2*y*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (5*PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (5*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (5*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (5*beta^2*y*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (10*PolyLog[2, beta^2*Cos[theta]^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*PolyLog[2, beta^2*Cos[theta]^2])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (10*y*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])^2) - (10*beta^2*Cos[theta]^2*
       PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])^2) - 
     (10*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
     (10*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (10*beta*Cos[theta]*
       PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta*y*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*y*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (10*beta^2*y*Cos[theta]^2*
       PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (3*(-1 + beta*Cos[theta])^2) + 
     (20*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) + 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*beta^2*Cos[theta]^2*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (5*beta^2*Cos[theta]^2*
       PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (5*beta^2*y*Cos[theta]^2*
       PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (10*beta*Cos[theta]*
       PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta*y*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*y*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (10*beta^2*Cos[theta]^2*
       PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (5*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (5*beta^2*y*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^
          (-1)])/(3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta*y*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*y*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*y*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (20*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (20*beta*y*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (10*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (10*beta^2*y*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + (10*beta*Cos[theta]*
    NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 2*be*Cos[theta]*
        Log[1 - be*Cos[theta]]^2 - 2*Log[1 + be*Cos[theta]]^2 + 
       2*be*Cos[theta]*Log[1 + be*Cos[theta]]^2 + Log[1 - be^2]*
        Log[(1 + be*Cos[theta])/(1 - be*Cos[theta])] - 
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
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (3*(-1 + beta*Cos[theta])) - 
  (10*beta^2*Cos[theta]^2*NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 
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
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (3*(-1 + beta*Cos[theta])) - 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) + 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) + 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) - 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) - 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) + 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(-1 + beta*Cos[theta])) - 
  (10*PolyGamma[2, 1])/(3*(-1 + beta*Cos[theta])) + 
  (10*beta*Cos[theta]*PolyGamma[2, 1])/(3*(-1 + beta*Cos[theta])) + 
  (40*PolyGamma[2, 2])/(3*(-1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyGamma[2, 2])/(3*(-1 + beta*Cos[theta])) - 
  (62*beta*Cos[theta]*PolyLog[2, beta^2])/(9*(-1 + beta*Cos[theta])^2) + 
  (10*beta*EulerGamma*Cos[theta]*PolyLog[2, beta^2])/
   (3*(-1 + beta*Cos[theta])^2) + (62*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/
   (9*(-1 + beta*Cos[theta])^2) - (10*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (62*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - (10*EulerGamma*PolyLog[2, beta^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (62*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (10*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2])/((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (62*beta*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])^2) - (10*beta*EulerGamma*Cos[theta]*
    PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (62*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])^2) + (10*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (31*PolyLog[2, beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + (5*EulerGamma*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (31*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (5*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (62*PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + 
  (10*EulerGamma*PolyLog[2, beta^2*Cos[theta]^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (62*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (10*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (62*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])^2) - (10*beta*EulerGamma*Cos[theta]*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (62*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])^2) + (10*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (62*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (10*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (62*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (10*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     Cos[theta]^2/(-1 + Cos[theta]^2)])/((-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - 
  (62*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(-1 + beta*Cos[theta])^2) + 
  (10*beta*EulerGamma*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
  (62*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(-1 + beta*Cos[theta])^2) - 
  (10*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
  (62*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (10*EulerGamma*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (62*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (10*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (118*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta*Cos[theta])^2) + 
  (10*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (236*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta*Cos[theta])^2) - 
  (20*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (118*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta*Cos[theta])^2) + 
  (10*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (56*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (56*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (56*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (56*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (31*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (5*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (31*beta^2*Cos[theta]^2*
    PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (5*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - 
  (31*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (5*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (31*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (5*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - 
  (10*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (20*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
  (10*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2))

resL[2,3][-1,1] := (Pi^(1 + d/2)*(752 + 6*EulerGamma*(-62 + 15*EulerGamma) - 15*Pi^2))/54

resL[2,3][0,1] := Pi^(1 + d/2)*(-104/(27*(-1 + beta^2)) + (104*beta^2)/(27*(-1 + beta^2)) + 
  (16*EulerGamma)/(9*(-1 + beta^2)) - (16*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - EulerGamma^2/(3*(-1 + beta^2)) + 
  (beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + Pi^2/(6*(-1 + beta^2)) - 
  (beta^2*Pi^2)/(6*(-1 + beta^2)) - 
  1544/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (1544*beta^2)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*EulerGamma)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^2*EulerGamma)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (31*EulerGamma^2)/(9*(1 + beta*Cos[theta])) - 
  (31*Pi^2)/(54*(1 + beta*Cos[theta])) + 
  (31*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (31*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*EulerGamma*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^2*EulerGamma*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*ArcTanh[beta*Cos[theta]])/(27*(1 + beta*Cos[theta])) - 
  (124*EulerGamma*ArcTanh[beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (10*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (5*Pi^2*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (1544*beta*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (1544*beta^3*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*beta*EulerGamma*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^3*EulerGamma*Cos[theta])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (31*beta*EulerGamma^2*Cos[theta])/
   (9*(1 + beta*Cos[theta])) - (31*beta*Pi^2*Cos[theta])/
   (54*(1 + beta*Cos[theta])) + (31*beta*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - (31*beta^3*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (10*beta^3*EulerGamma*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/(27*(1 + beta*Cos[theta])) - 
  (124*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (9*(1 + beta*Cos[theta])) + (10*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(3*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (3*(1 + beta*Cos[theta])) - (376*Log[1 - beta^2])/
   (27*(1 + beta*Cos[theta])) + (62*EulerGamma*Log[1 - beta^2])/
   (9*(1 + beta*Cos[theta])) - (5*EulerGamma^2*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) + (5*Pi^2*Log[1 - beta^2])/
   (6*(1 + beta*Cos[theta])) - (376*beta*Cos[theta]*Log[1 - beta^2])/
   (27*(1 + beta*Cos[theta])) + (62*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2])/(9*(1 + beta*Cos[theta])) - 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) + (5*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/
   (6*(1 + beta*Cos[theta])) + (16*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (16*beta^2*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (2*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (2*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (376*Log[1 - beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + (752*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^2*Log[1 - beta*Cos[theta]])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (62*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (62*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*Log[1 - beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 - beta*Cos[theta]])/(6*(1 + beta*Cos[theta])) - 
  (10*Pi^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (10*beta^2*Pi^2*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (376*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(27*(1 + beta*Cos[theta])) + 
  (752*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (62*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (62*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*beta^3*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (6*(1 + beta*Cos[theta])) - 
  (10*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^3*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + (62*Log[1 - beta*Cos[theta]]^2)/
   (9*(1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) + 
  (62*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/(9*(1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (31*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (5*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) - (31*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) + (16*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (16*beta^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (2*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (376*Log[1 + beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + (752*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^2*Log[1 + beta*Cos[theta]])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (62*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (62*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*EulerGamma^2*Log[1 + beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (5*Pi^2*Log[1 + beta*Cos[theta]])/(6*(1 + beta*Cos[theta])) - 
  (10*Pi^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (10*beta^2*Pi^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (376*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(27*(1 + beta*Cos[theta])) + 
  (752*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (62*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (62*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*beta^3*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (5*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (6*(1 + beta*Cos[theta])) - 
  (10*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta^3*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - (62*Log[1 + beta*Cos[theta]]^2)/
   (9*(1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 + beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (62*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/(9*(1 + beta*Cos[theta])) + 
  (10*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (62*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) - (62*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) + 
  (31*Log[1 - beta^2]*Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(1 + beta*Cos[theta])) - (5*EulerGamma*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(1 + beta*Cos[theta])) + (31*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(1 + beta*Cos[theta])) - (5*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(1 + beta*Cos[theta])) - (16*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)) + (16*beta^2*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)) + (2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)) - (2*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)) - (752*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*beta^2*Log[1 - beta^2*Cos[theta]^2])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (62*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (62*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*Pi^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (10*beta^2*Pi^2*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (752*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (752*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*beta*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (62*beta^3*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (10*beta^3*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (62*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (10*EulerGamma*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  (62*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (10*beta*EulerGamma*Cos[theta]*Log[(1 + beta*Cos[theta])/
      (1 - beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(1 + beta*Cos[theta])) + NNIntegrate[
   (Log[y]*(-68/9 + 68/(9*(1 - y)) - (80*y)/(9*(1 - y)) + 
      (4*y^2)/(3*(1 - y)) - (20*ArcTanh[beta*Cos[theta]])/3 + 
      (20*ArcTanh[beta*Cos[theta]])/(3*(1 - y)) - 
      (20*y*ArcTanh[beta*Cos[theta]])/(3*(1 - y)) + (10*Log[1 - beta^2])/3 - 
      (10*Log[1 - beta*Cos[theta]])/3 + (10*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)) - (10*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
      (10*Log[1 + beta*Cos[theta]])/3 + (10*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)) - (10*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) - 
      (10*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)) + (10*y*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/(3*(1 - y))))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   (16/9 - (2*EulerGamma)/3 - 16/(9*(1 - y)) + (2*EulerGamma)/(3*(1 - y)) + 
     (16*y)/(3*(1 - y)) - (2*EulerGamma*y)/(1 - y) - (32*y^2)/(9*(1 - y)) + 
     (4*EulerGamma*y^2)/(3*(1 - y)) - 
     752/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (752*beta^2)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*EulerGamma)/(9*(1 + beta*Cos[theta])) + 
     (10*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     752/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (752*beta^2)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*EulerGamma)/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*Pi^2)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (752*y)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (752*beta^2*y)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*EulerGamma*y)/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Pi^2*y)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^2*Pi^2*y)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (124*ArcTanh[beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) - 
     (20*EulerGamma*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
     (124*ArcTanh[beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*EulerGamma*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (124*y*ArcTanh[beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*EulerGamma*y*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - (752*beta*Cos[theta])/
      (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + (752*beta^3*Cos[theta])/
      (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*beta*EulerGamma*Cos[theta])/(9*(1 + beta*Cos[theta])) + 
     (10*beta*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (752*beta*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (752*beta^3*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (62*beta*EulerGamma*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (10*beta*Pi^2*Cos[theta])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta^3*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (752*beta*y*Cos[theta])/
      (27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (752*beta^3*y*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (62*beta*EulerGamma*y*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (10*beta*Pi^2*y*Cos[theta])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta^3*Pi^2*y*Cos[theta])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (124*beta*ArcTanh[beta*Cos[theta]]*
       Cos[theta])/(9*(1 + beta*Cos[theta])) - 
     (20*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 + beta*Cos[theta])) - (124*beta*ArcTanh[beta*Cos[theta]]*
       Cos[theta])/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (124*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta*EulerGamma*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - (62*Log[1 - beta^2])/
      (9*(1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 - beta^2])/
      (3*(1 + beta*Cos[theta])) - (62*beta*Cos[theta]*Log[1 - beta^2])/
      (9*(1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*
       Log[1 - beta^2])/(3*(1 + beta*Cos[theta])) + 
     (68*Log[1 - y])/(9*(-1 + y)) - (80*y*Log[1 - y])/(9*(-1 + y)) + 
     (4*y^2*Log[1 - y])/(3*(-1 + y)) + (20*ArcTanh[beta*Cos[theta]]*
       Log[1 - y])/(3*(-1 + y)) - (20*y*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)) - (124*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (124*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (124*beta^2*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (124*y*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (124*y*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (124*beta^2*y*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (124*beta*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (124*beta*Cos[theta]*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (124*beta^3*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (124*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (124*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (124*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (2*Log[1 - beta*Cos[theta]])/3 + (2*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)) - (2*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) + 
     (62*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
     (62*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (62*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (62*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (62*y*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (62*y*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta^2*y*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*EulerGamma*y*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 + beta*Cos[theta])) + (62*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (62*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (62*beta^3*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (62*beta^3*y*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*beta*EulerGamma*y*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 - y]*Log[1 - beta*Cos[theta]])/(3*(-1 + y)) - 
     (10*y*Log[1 - y]*Log[1 - beta*Cos[theta]])/(3*(-1 + y)) + 
     (10*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 - beta*Cos[theta]]^2)/(3*(1 + beta*Cos[theta])) - 
     (10*Log[1 - beta*Cos[theta]]^2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*y*Log[1 - beta*Cos[theta]]^2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(1 + beta*Cos[theta])) - (10*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]]^2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (5*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (2*Log[1 + beta*Cos[theta]])/3 + 
     (2*Log[1 + beta*Cos[theta]])/(3*(1 - y)) - 
     (2*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (62*Log[1 + beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
     (62*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*beta^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) - (10*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (62*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (62*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (62*y*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (62*y*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta^2*y*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*EulerGamma*y*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 + beta*Cos[theta])) + (62*beta*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (62*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (62*beta*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (62*beta^3*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (10*beta*EulerGamma*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (62*beta^3*y*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (10*beta*EulerGamma*y*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[1 - y]*Log[1 + beta*Cos[theta]])/(3*(-1 + y)) - 
     (10*y*Log[1 - y]*Log[1 + beta*Cos[theta]])/(3*(-1 + y)) + 
     (20*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^2*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*Log[1 + beta*Cos[theta]]^2)/(3*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
      (3*(1 + beta*Cos[theta])) + (10*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[1 + beta*Cos[theta]]*Log[(1 + y/(1 - y))*
         (1 + beta*Cos[theta])])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (10*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) + 
     (5*Log[1 - beta^2]*Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(1 + beta*Cos[theta])) + (2*Log[1 - beta^2*Cos[theta]^2])/3 - 
     (2*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (2*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (62*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) + (62*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (62*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (62*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*y*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (62*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (62*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (62*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta^3*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (20*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (20*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) - 
     (10*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) - 
     (10*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*EulerGamma*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*EulerGamma*y*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (62*beta*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (62*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)) + 
     (10*y*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/(3*(-1 + y)) - 
     (5*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (5*PolyLog[2, beta^2])/
      (3*(1 + beta*Cos[theta])) + (5*beta*Cos[theta]*PolyLog[2, beta^2])/
      (3*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (3*(1 + beta*Cos[theta])) - (10*beta*Cos[theta]*
       PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (3*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*y*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*y*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*y*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (5*beta*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (5*beta*y*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*y*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (10*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (10*beta*y*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])))/y, {y, 0, 1}, AccuracyGoal -> 5] - 
  (10*beta*Cos[theta]*NNIntegrate[
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
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (3*(-1 - beta*Cos[theta])) - 
  (10*beta^2*Cos[theta]^2*NNIntegrate[
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
     {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 5])/
   (3*(-1 - beta*Cos[theta])) + 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(1 + beta*Cos[theta])) - 
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
     {x2, 0, 1}, AccuracyGoal -> 5])/(3*(1 + beta*Cos[theta])) - 
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
   (3*(1 + beta*Cos[theta])) + 
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
   (3*(1 + beta*Cos[theta])) - 
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
   (3*(1 + beta*Cos[theta])) + 
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
   (3*(1 + beta*Cos[theta])) + (10*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (10*beta^2*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (10*beta*Cos[theta]*PolyGamma[2, 1])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (10*beta^3*Cos[theta]*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (40*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (40*beta^2*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyGamma[2, 2])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (40*beta^3*Cos[theta]*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (31*PolyLog[2, beta^2])/
   (9*(1 + beta*Cos[theta])) - (5*EulerGamma*PolyLog[2, beta^2])/
   (3*(1 + beta*Cos[theta])) + (31*beta*Cos[theta]*PolyLog[2, beta^2])/
   (9*(1 + beta*Cos[theta])) - (5*beta*EulerGamma*Cos[theta]*
    PolyLog[2, beta^2])/(3*(1 + beta*Cos[theta])) - 
  (31*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + 
  (5*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(1 + beta*Cos[theta])) - 
  (31*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + (5*beta*EulerGamma*Cos[theta]*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
  (31*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) - 
  (5*EulerGamma*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (3*(1 + beta*Cos[theta])) + 
  (31*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(1 + beta*Cos[theta])) - 
  (5*beta*EulerGamma*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) - 
  (62*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(1 + beta*Cos[theta])) + 
  (10*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])) - 
  (62*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(1 + beta*Cos[theta])) + 
  (10*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])) - 
  (31*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + 
  (5*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) - 
  (31*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(9*(1 + beta*Cos[theta])) + 
  (5*beta*EulerGamma*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
  (31*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(1 + beta*Cos[theta])) - 
  (5*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(1 + beta*Cos[theta])) + 
  (31*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(1 + beta*Cos[theta])) - (5*beta*EulerGamma*Cos[theta]*
    PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(1 + beta*Cos[theta])) - 
  (10*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) - 
  (10*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (10*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2) - 
  (10*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2))

resL[3,3][-1,1] := 0

resL[3,3][0,1] := Pi^(1 + d/2)*(-752/(27*(-1 + beta^2)) + (752*beta^2)/(27*(-1 + beta^2)) + 
  (124*EulerGamma)/(9*(-1 + beta^2)) - (124*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - (10*EulerGamma^2)/(3*(-1 + beta^2)) + 
  (10*beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + (5*Pi^2)/(3*(-1 + beta^2)) - 
  (5*beta^2*Pi^2)/(3*(-1 + beta^2)) - 208/(27*(-1 + beta*Cos[theta])) + 
  (32*EulerGamma)/(9*(-1 + beta*Cos[theta])) - 
  (2*EulerGamma^2)/(3*(-1 + beta*Cos[theta])) + 
  Pi^2/(3*(-1 + beta*Cos[theta])) + (208*beta*Cos[theta])/
   (27*(-1 + beta*Cos[theta])) - (32*beta*EulerGamma*Cos[theta])/
   (9*(-1 + beta*Cos[theta])) + (2*beta*EulerGamma^2*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) - (beta*Pi^2*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) + (124*Log[1 - beta^2])/(9*(-1 + beta^2)) - 
  (124*beta^2*Log[1 - beta^2])/(9*(-1 + beta^2)) - 
  (20*EulerGamma*Log[1 - beta^2])/(3*(-1 + beta^2)) + 
  (20*beta^2*EulerGamma*Log[1 - beta^2])/(3*(-1 + beta^2)) + 
  (4*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^3) - 
  (4*beta*Cos[theta]*Log[1 - beta^2])/(-1 + beta*Cos[theta])^3 + 
  (4*beta^2*Cos[theta]^2*Log[1 - beta^2])/(-1 + beta*Cos[theta])^3 - 
  (4*beta^3*Cos[theta]^3*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^3) + 
  (4*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (8*beta*Cos[theta]*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (4*beta^2*Cos[theta]^2*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (4*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])^3) + 
  (4*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 - 
  (4*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 + 
  (4*beta^3*Cos[theta]^3*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])^3) + (32*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (4*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) - (32*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (4*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (4*Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])^3) + 
  (4*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 - 
  (4*beta^2*Cos[theta]^2*Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 + 
  (4*beta^3*Cos[theta]^3*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])^3) + (32*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (4*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) - (32*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (4*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (124*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (124*beta^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (20*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (20*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (4*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (8*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (4*beta^2*Cos[theta]^2*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])^2) - (32*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) + (4*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])) + 
  (32*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) - (4*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
  NNIntegrate[((-4/3 + 20/(3*(-1 + beta^2)) - (20*beta^2)/(3*(-1 + beta^2)) + 
      4/(3*(1 - y)) - (8*y)/(3*(1 - y)) + (4*y^2)/(3*(1 - y)) - 
      20/(3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
      (20*beta^2)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
         beta^2*y*Cos[theta]^2)) + (20*y)/(3*(1 - y)*(-1 + beta^2 - 
         beta^2*y + beta^2*y*Cos[theta]^2)) - (20*beta^2*y)/
       (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))*Log[y])/
    y, {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[(32/9 - 124/(9*(-1 + beta^2)) + 
     (124*beta^2)/(9*(-1 + beta^2)) - (4*EulerGamma)/3 + 
     (20*EulerGamma)/(3*(-1 + beta^2)) - (20*beta^2*EulerGamma)/
      (3*(-1 + beta^2)) - 32/(9*(1 - y)) + (4*EulerGamma)/(3*(1 - y)) + 
     (64*y)/(9*(1 - y)) - (8*EulerGamma*y)/(3*(1 - y)) - 
     (32*y^2)/(9*(1 - y)) + (4*EulerGamma*y^2)/(3*(1 - y)) + 
     124/(9*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (124*beta^2)/(9*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (20*EulerGamma)/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*beta^2*EulerGamma)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - 
     (124*y)/(9*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (124*beta^2*y)/(9*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (20*EulerGamma*y)/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*beta^2*EulerGamma*y)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (20*Log[1 - beta^2])/(3*(-1 + beta^2)) - 
     (20*beta^2*Log[1 - beta^2])/(3*(-1 + beta^2)) + 
     (4*Log[1 - y])/(3*(-1 + y)) - (8*y*Log[1 - y])/(3*(-1 + y)) + 
     (4*y^2*Log[1 - y])/(3*(-1 + y)) - (20*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*beta^2*Log[1 - y])/(3*(-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (20*y*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*beta^2*y*Log[1 - y])/(3*(-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (20*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*beta^2*Log[1 + y/(1 - y)])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (20*y*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*beta^2*y*Log[1 + y/(1 - y)])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (4*Log[1 - beta*Cos[theta]])/3 + 
     (4*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
     (8*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) + 
     (4*y^2*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
     (4*Log[1 + beta*Cos[theta]])/3 + (4*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)) - (8*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (4*y^2*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (4*Log[1 - beta^2*Cos[theta]^2])/3 - (20*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)) + (20*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)) - (4*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (8*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (4*y^2*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (20*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (20*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (20*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*beta^2*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (20*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (20*beta^2*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (20*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)) - 
  (20*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)) + 
  (4*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (8*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) + 
  (4*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
  (4*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (4*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (4*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (4*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(-1 + beta*Cos[theta])))

resL[3,4][-1,1] := 0

resL[3,4][0,1] := Pi^(1 + d/2)*(-104/(27*(-1 + beta^2)) + (104*beta^2)/(27*(-1 + beta^2)) + 
  (16*EulerGamma)/(9*(-1 + beta^2)) - (16*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - EulerGamma^2/(3*(-1 + beta^2)) + 
  (beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + Pi^2/(6*(-1 + beta^2)) - 
  (beta^2*Pi^2)/(6*(-1 + beta^2)) + (752*ArcTanh[beta])/(27*beta) + 
  (752*beta*ArcTanh[beta])/27 - (124*EulerGamma*ArcTanh[beta])/(9*beta) - 
  (124*beta*EulerGamma*ArcTanh[beta])/9 + (10*EulerGamma^2*ArcTanh[beta])/
   (3*beta) + (10*beta*EulerGamma^2*ArcTanh[beta])/3 - 
  (5*Pi^2*ArcTanh[beta])/(3*beta) - (5*beta*Pi^2*ArcTanh[beta])/3 + 
  104/(27*(1 + beta*Cos[theta])) - (16*EulerGamma)/
   (9*(1 + beta*Cos[theta])) + EulerGamma^2/(3*(1 + beta*Cos[theta])) - 
  Pi^2/(6*(1 + beta*Cos[theta])) + (104*beta*Cos[theta])/
   (27*(1 + beta*Cos[theta])) - (16*beta*EulerGamma*Cos[theta])/
   (9*(1 + beta*Cos[theta])) + (beta*EulerGamma^2*Cos[theta])/
   (3*(1 + beta*Cos[theta])) - (beta*Pi^2*Cos[theta])/
   (6*(1 + beta*Cos[theta])) + (124*Log[2]*Log[1 - beta])/(9*beta) + 
  (124*beta*Log[2]*Log[1 - beta])/9 - (20*EulerGamma*Log[2]*Log[1 - beta])/
   (3*beta) - (20*beta*EulerGamma*Log[2]*Log[1 - beta])/3 - 
  (124*Log[2]*Log[1 + beta])/(9*beta) - (124*beta*Log[2]*Log[1 + beta])/9 + 
  (20*EulerGamma*Log[2]*Log[1 + beta])/(3*beta) + 
  (20*beta*EulerGamma*Log[2]*Log[1 + beta])/3 - 
  (124*Log[1 - beta]*Log[1 + Cos[theta]])/(9*beta) - 
  (124*beta*Log[1 - beta]*Log[1 + Cos[theta]])/9 + 
  (20*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]])/(3*beta) + 
  (20*beta*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]])/3 + 
  (124*Log[1 + beta]*Log[1 + Cos[theta]])/(9*beta) + 
  (124*beta*Log[1 + beta]*Log[1 + Cos[theta]])/9 - 
  (20*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]])/(3*beta) - 
  (20*beta*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]])/3 + 
  (16*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)) - 
  (16*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)) - 
  (2*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)) + 
  (2*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)) - 
  (16*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (2*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (16*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (2*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) + (16*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (16*beta^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (2*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) - (16*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) + (2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - (16*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) + (2*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (16*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (16*beta^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (2*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) + 
  (16*Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  (16*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(1 + beta*Cos[theta])) - (2*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  NNIntegrate[((-4/3 + 4/(3*(1 - y)) - (8*y)/(3*(1 - y)) + 
      (4*y^2)/(3*(1 - y)) - (20*ArcTanh[beta])/(3*beta) - 
      (20*beta*ArcTanh[beta])/3 - (20*Sqrt[-(-1 + y)^(-1)]*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*beta*(-1 + y - y*Cos[theta]^2)) - 
      (20*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
         (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
        Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*(-1 + y - y*Cos[theta]^2)) + (20*Sqrt[-(-1 + y)^(-1)]*y*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*beta*(-1 + y - y*Cos[theta]^2)) + 
      (20*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
         (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
        Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*(-1 + y - y*Cos[theta]^2)))*Log[y])/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   (32/9 - (4*EulerGamma)/3 - 32/(9*(1 - y)) + (4*EulerGamma)/(3*(1 - y)) + 
     (64*y)/(9*(1 - y)) - (8*EulerGamma*y)/(3*(1 - y)) - 
     (32*y^2)/(9*(1 - y)) + (4*EulerGamma*y^2)/(3*(1 - y)) + 
     (124*ArcTanh[beta])/(9*beta) + (124*beta*ArcTanh[beta])/9 - 
     (20*EulerGamma*ArcTanh[beta])/(3*beta) - 
     (20*beta*EulerGamma*ArcTanh[beta])/3 + 
     (124*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*beta*(-1 + y - y*Cos[theta]^2)) + 
     (124*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*(-1 + y - y*Cos[theta]^2)) - (20*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) - 
     (20*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*(-1 + y - y*Cos[theta]^2)) - (124*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*beta*(-1 + y - y*Cos[theta]^2)) - 
     (124*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*(-1 + y - y*Cos[theta]^2)) + (20*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) + 
     (20*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*(-1 + y - y*Cos[theta]^2)) + (20*Log[2]*Log[1 - beta])/(3*beta) + 
     (20*beta*Log[2]*Log[1 - beta])/3 - (20*Log[2]*Log[1 + beta])/(3*beta) - 
     (20*beta*Log[2]*Log[1 + beta])/3 + (4*Log[1 - y])/(3*(-1 + y)) - 
     (8*y*Log[1 - y])/(3*(-1 + y)) + (4*y^2*Log[1 - y])/(3*(-1 + y)) + 
     (20*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) + 
     (20*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*(-1 + y - y*Cos[theta]^2)) - (20*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) - 
     (20*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*(-1 + y - y*Cos[theta]^2)) - (20*Log[1 - beta]*Log[1 + Cos[theta]])/
      (3*beta) - (20*beta*Log[1 - beta]*Log[1 + Cos[theta]])/3 + 
     (20*Log[1 + beta]*Log[1 + Cos[theta]])/(3*beta) + 
     (20*beta*Log[1 + beta]*Log[1 + Cos[theta]])/3 - 
     (4*Log[1 - beta*Cos[theta]])/3 + (4*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)) - (4*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
     (4*Log[1 + beta*Cos[theta]])/3 + (4*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)) - (4*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (4*Log[1 - beta^2*Cos[theta]^2])/3 - (4*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)) + (4*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (20*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (20*beta*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*Log[1 + y/(1 - y)]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*beta*Log[1 + y/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (20*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (20*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (20*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (20*beta*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*Log[1 + y/(1 - y)]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*beta*Log[1 + y/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (20*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (20*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/((1 + beta)*
          (1 + Cos[theta]))])/(3*beta) + 
     (10*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
         ((1 + beta)*(1 + Cos[theta]))])/3 - 
     (10*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
          (1 + Cos[theta]))])/(3*beta) - 
     (10*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
         ((-1 + beta)*(1 + Cos[theta]))])/3 - 
     (10*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/(3*beta*(1 - y)*
       Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (10*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (3*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/(3*beta*(1 - y)*
       Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (10*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (3*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (10*NNIntegrate[(2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
      ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6])/3 + 
  (10*beta^2*NNIntegrate[
     (2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
      ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6])/3 + 
  (62*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/(9*beta) + 
  (62*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/9 - 
  (10*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/(3*beta) - 
  (10*beta*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/3 - 
  (62*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
       (1 + Cos[theta]))])/(9*beta) - 
  (62*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/9 + 
  (10*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/(3*beta) + 
  (10*beta*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/3 + 
  (2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])^2) + 
  (4*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (2*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (2*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (2*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (2*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])))

