resM[1,3][-1,1] := (2*Pi^(1 + d/2)*(-112 + 6*(10 - 3*EulerGamma)*EulerGamma + 3*Pi^2))/27

resM[1,3][0,1] := Pi^(1 + d/2)*((20*beta*Pi^2*Cos[theta])/(27*(-1 + beta*Cos[theta])^2) - 
  (4*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])^2) - 
  (20*beta^2*Pi^2*Cos[theta]^2)/(27*(-1 + beta*Cos[theta])^2) + 
  (4*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])^2) + 
  736/(27*(-1 + beta*Cos[theta])) - (448*EulerGamma)/
   (27*(-1 + beta*Cos[theta])) + (20*EulerGamma^2)/
   (9*(-1 + beta*Cos[theta])) - (70*Pi^2)/(27*(-1 + beta*Cos[theta])) + 
  (8*EulerGamma*Pi^2)/(9*(-1 + beta*Cos[theta])) + 
  (448*ArcTanh[beta*Cos[theta]])/(27*(-1 + beta*Cos[theta])) - 
  (80*EulerGamma*ArcTanh[beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
  (8*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (4*Pi^2*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (736*beta*Cos[theta])/(27*(-1 + beta*Cos[theta])) + 
  (448*beta*EulerGamma*Cos[theta])/(27*(-1 + beta*Cos[theta])) - 
  (20*beta*EulerGamma^2*Cos[theta])/(9*(-1 + beta*Cos[theta])) + 
  (70*beta*Pi^2*Cos[theta])/(27*(-1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])) - 
  (448*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (27*(-1 + beta*Cos[theta])) + (80*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(9*(-1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) + (4*beta*Pi^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(3*(-1 + beta*Cos[theta])) - 
  (10*Pi^2)/(27*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (2*EulerGamma*Pi^2)/(9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (10*beta^2*Pi^2*Cos[theta]^2)/(27*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (2*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (20*Pi^2)/(9*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (4*EulerGamma*Pi^2)/(3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (20*beta^2*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - (4*beta^2*EulerGamma*Pi^2*Cos[theta]^2)/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (224*Log[1 - beta^2])/(27*(-1 + beta*Cos[theta])) - 
  (40*EulerGamma*Log[1 - beta^2])/(9*(-1 + beta*Cos[theta])) + 
  (4*EulerGamma^2*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) - 
  (2*Pi^2*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) - 
  (224*beta*Cos[theta]*Log[1 - beta^2])/(27*(-1 + beta*Cos[theta])) + 
  (40*beta*EulerGamma*Cos[theta]*Log[1 - beta^2])/
   (9*(-1 + beta*Cos[theta])) - (4*beta*EulerGamma^2*Cos[theta]*
    Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) + 
  (2*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) - 
  (224*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
  (80*EulerGamma*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
  (4*EulerGamma^2*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
  (14*Pi^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
  (224*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
  (80*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (4*beta*EulerGamma^2*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (14*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + 
  (80*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])^2) - (16*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
  (80*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])^2) + (16*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
  (80*Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (16*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (80*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (16*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta*Cos[theta]]^2)/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (40*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])) - (40*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])) - (224*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (80*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (4*EulerGamma^2*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) + (14*Pi^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + 
  (224*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
  (80*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (4*beta*EulerGamma^2*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (14*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (40*Log[1 + beta*Cos[theta]]^2)/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (8*EulerGamma*Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + (40*beta^2*Cos[theta]^2*
    Log[1 + beta*Cos[theta]]^2)/(9*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (8*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + 
  (20*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (4*EulerGamma*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
      (1 - beta*Cos[theta])])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (20*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (4*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(-1 + beta*Cos[theta])^2) + 
  (8*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])^2) + (40*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(-1 + beta*Cos[theta])^2) - (8*beta^2*EulerGamma*Cos[theta]^2*
    Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (40*Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (8*EulerGamma*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (40*beta^2*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (8*beta^2*EulerGamma*Cos[theta]^2*Log[1 - beta^2]*
    Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (448*Log[1 - beta^2*Cos[theta]^2])/(27*(-1 + beta*Cos[theta])) - 
  (40*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (8*Pi^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (448*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta*Cos[theta])) + (40*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) + 
  (8*beta*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) - 
  (40*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) + 
  (8*EulerGamma*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
  (40*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma*Cos[theta]*Log[(1 - beta*Cos[theta])/
      (1 + beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])) + NNIntegrate[
   (Log[y]*(-40/(9*(-1 + beta*Cos[theta])) + 
      40/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
      (40*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
      (16*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
      (16*ArcTanh[beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (16*y*ArcTanh[beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (40*beta*Cos[theta])/(9*(-1 + beta*Cos[theta])) - 
      (40*beta*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
      (40*beta*y*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
      (16*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
       (3*(-1 + beta*Cos[theta])) - (16*beta*ArcTanh[beta*Cos[theta]]*
        Cos[theta])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (16*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - (8*Log[1 - beta^2])/
       (3*(-1 + beta*Cos[theta])) + (8*beta*Cos[theta]*Log[1 - beta^2])/
       (3*(-1 + beta*Cos[theta])) - (16*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (16*y*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (16*beta*Cos[theta]*Log[1 + y/(1 - y)])/(3*(1 - y)*
        (-1 + beta*Cos[theta])) - (16*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (8*Log[1 - beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) - (8*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (8*y*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) + (8*beta*Cos[theta]*
        Log[1 - beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (8*Log[1 + beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) - (8*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + (8*y*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
       (3*(-1 + beta*Cos[theta])) + (8*beta*Cos[theta]*
        Log[1 + beta*Cos[theta]])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (8*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) - 
      (8*beta*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta])) + 
      (8*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)*(-1 + beta*Cos[theta]))))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   ((4*beta*Pi^2*Cos[theta])/(9*(-1 + beta*Cos[theta])^2) - 
     (4*beta*Pi^2*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (4*beta*Pi^2*y*Cos[theta])/(9*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (4*beta^2*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])^2) + 
     (4*beta^2*Pi^2*Cos[theta]^2)/(9*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (4*beta^2*Pi^2*y*Cos[theta]^2)/(9*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     448/(27*(-1 + beta*Cos[theta])) - (40*EulerGamma)/
      (9*(-1 + beta*Cos[theta])) - (8*Pi^2)/(9*(-1 + beta*Cos[theta])) - 
     448/(27*(1 - y)*(-1 + beta*Cos[theta])) + (40*EulerGamma)/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*Pi^2)/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (448*y)/(27*(1 - y)*(-1 + beta*Cos[theta])) - 
     (40*EulerGamma*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*Pi^2*y)/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*ArcTanh[beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) - 
     (16*EulerGamma*ArcTanh[beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (80*ArcTanh[beta*Cos[theta]])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (16*EulerGamma*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + (80*y*ArcTanh[beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (16*EulerGamma*y*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (448*beta*Cos[theta])/
      (27*(-1 + beta*Cos[theta])) + (40*beta*EulerGamma*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (8*beta*Pi^2*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (448*beta*Cos[theta])/
      (27*(1 - y)*(-1 + beta*Cos[theta])) - (40*beta*EulerGamma*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (8*beta*Pi^2*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (448*beta*y*Cos[theta])/
      (27*(1 - y)*(-1 + beta*Cos[theta])) + (40*beta*EulerGamma*y*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + (8*beta*Pi^2*y*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (80*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(-1 + beta*Cos[theta])) + (16*beta*EulerGamma*
       ArcTanh[beta*Cos[theta]]*Cos[theta])/(3*(-1 + beta*Cos[theta])) + 
     (80*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (16*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (80*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (16*beta*EulerGamma*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (2*Pi^2)/(9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (2*Pi^2)/(9*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (2*Pi^2*y)/(9*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (2*beta^2*Pi^2*Cos[theta]^2)/(9*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (2*beta^2*Pi^2*Cos[theta]^2)/
      (9*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (2*beta^2*Pi^2*y*Cos[theta]^2)/(9*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (4*Pi^2)/(3*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (4*Pi^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (4*Pi^2*y)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (4*beta^2*Pi^2*Cos[theta]^2)/(3*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (4*beta^2*Pi^2*Cos[theta]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (4*beta^2*Pi^2*y*Cos[theta]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (40*Log[1 - beta^2])/
      (9*(-1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 - beta^2])/
      (3*(-1 + beta*Cos[theta])) - (40*beta*Cos[theta]*Log[1 - beta^2])/
      (9*(-1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
       Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])) + 
     (40*Log[1 - y])/(9*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (40*y*Log[1 - y])/(9*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (16*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (16*y*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - (40*beta*Cos[theta]*Log[1 - y])/
      (9*(-1 + y)*(-1 + beta*Cos[theta])) + (40*beta*y*Cos[theta]*Log[1 - y])/
      (9*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (16*beta*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (16*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta]*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + (80*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - (16*EulerGamma*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (80*y*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (16*EulerGamma*y*Log[1 + y/(1 - y)])/(3*(1 - y)*
       (-1 + beta*Cos[theta])) - (80*beta*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (16*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (16*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (16*Log[1 - y]*Log[1 + y/(1 - y)])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (16*y*Log[1 - y]*Log[1 + y/(1 - y)])/(3*(-1 + y)*
       (-1 + beta*Cos[theta])) + (16*beta*Cos[theta]*Log[1 - y]*
       Log[1 + y/(1 - y)])/(3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (16*beta*y*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y)])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (4*beta*y*Cos[theta]*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (4*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (4*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + (2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (2*y*Log[1 + y/(1 - y)]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (2*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (2*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*Log[1 + y/(1 - y)]^2)/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (4*y*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (4*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (4*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]^2)/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (80*Log[1 - beta*Cos[theta]])/(9*(-1 + beta*Cos[theta])) + 
     (8*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) + 
     (80*Log[1 - beta*Cos[theta]])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (80*y*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*EulerGamma*y*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) - (8*beta*EulerGamma*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (80*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*Log[1 - y]*Log[1 - beta*Cos[theta]])/(3*(-1 + y)*
       (-1 + beta*Cos[theta])) + (8*y*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[1 - y]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (16*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(-1 + beta*Cos[theta])^2) - (16*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])^2) - 
     (16*Log[1 - beta*Cos[theta]]^2)/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (16*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]^2)/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (16*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (16*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (16*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (16*beta^2*y*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (16*Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (16*y*Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*
         (1 - beta*Cos[theta])])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (16*beta^2*Cos[theta]^2*
       Log[1 - beta*Cos[theta]]*Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (16*beta^2*y*Cos[theta]^2*Log[1 - beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 - beta*Cos[theta])])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])) - (8*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])) - (80*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta*Cos[theta])) + (80*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - (80*y*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*EulerGamma*y*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta*Cos[theta])) - (8*beta*EulerGamma*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
     (80*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (80*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*Log[1 - y]*Log[1 + beta*Cos[theta]])/(3*(-1 + y)*
       (-1 + beta*Cos[theta])) + (8*y*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[1 - y]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (8*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (8*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (8*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (8*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (8*Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (8*Log[1 + beta*Cos[theta]]^2)/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (8*y*Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (8*beta^2*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (8*beta^2*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (8*beta^2*y*Cos[theta]^2*
       Log[1 + beta*Cos[theta]]^2)/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (4*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*beta^2*Cos[theta]^2*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/
         (1 - beta*Cos[theta])])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (8*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(-1 + beta*Cos[theta])^2) + (8*beta^2*Cos[theta]^2*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(-1 + beta*Cos[theta])^2) + 
     (8*Log[1 - beta^2]*Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*Cos[theta]^2*Log[1 - beta^2]*
       Log[-((-1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (40*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])) - 
     (40*Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (40*y*Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (40*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta*Cos[theta])) + (40*beta*Cos[theta]*
       Log[1 - beta^2*Cos[theta]^2])/(9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (40*beta*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
     (8*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (40*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*EulerGamma*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (40*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*EulerGamma*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (40*beta*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (40*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (8*y*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)*(-1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[1 - y]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(-1 + y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta*y*Cos[theta]*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*Cos[theta]^2*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*y*Cos[theta]^2*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + 
     (8*y*Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (8*beta^2*Cos[theta]^2*
       Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (8*beta^2*y*Cos[theta]^2*
       Log[-(((1 + y/(1 - y))*(-1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (8*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*y*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (4*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (4*y*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*beta^2*Cos[theta]^2*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*beta^2*y*Cos[theta]^2*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (8*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])) - 
     (4*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*beta^2*Cos[theta]^2*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*beta^2*y*Cos[theta]^2*Log[(1 + beta*Cos[theta])/
         (1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/
      (3*(-1 + beta*Cos[theta])^2) + (8*PolyLog[2, beta^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + 
     (8*beta*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(-1 + beta*Cos[theta])^2) - 
     (8*beta*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta*y*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(-1 + beta*Cos[theta])^2) + (8*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])^
        2) - (8*beta^2*y*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (4*PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (4*PolyLog[2, beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*y*PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (4*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (4*beta^2*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (4*beta^2*y*Cos[theta]^2*
       PolyLog[2, beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (8*PolyLog[2, beta^2*Cos[theta]^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*PolyLog[2, beta^2*Cos[theta]^2])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - (8*y*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])^2) - (8*beta^2*Cos[theta]^2*
       PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])^2) - 
     (8*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
     (8*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/((-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) - 
     (8*beta*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta*y*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*y*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (8*beta^2*y*Cos[theta]^2*
       PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (3*(-1 + beta*Cos[theta])^2) + 
     (16*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) + 
     (4*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*beta^2*Cos[theta]^2*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - 
     (4*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + 
     (4*y*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (4*beta^2*Cos[theta]^2*
       PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) - (4*beta^2*y*Cos[theta]^2*
       PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(-1 + beta*Cos[theta])*
       (1 + beta*Cos[theta])) + (8*beta*Cos[theta]*
       PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta*y*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*y*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/((1 - y)*(-1 + beta*Cos[theta])*
       (-6 + 6*beta*Cos[theta])) + (8*beta^2*Cos[theta]^2*
       PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (4*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*y*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
     (4*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (4*beta^2*y*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^
          (-1)])/(3*(1 - y)*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta*y*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*Cos[theta]^2*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*y*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, 
        (Cos[theta]^2*(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
              (1 - y))))/(-1 + Cos[theta]^2)])/
      ((1 - y)*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
     (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*y*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (16*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (16*beta*y*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) + 
     (8*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2) - 
     (8*beta^2*y*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(-1 + beta*Cos[theta])^2))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + 
  (8*beta*Cos[theta]*NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 
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
  (8*beta^2*Cos[theta]^2*NNIntegrate[(2*Log[1 - be*Cos[theta]]^2 - 
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
  (4*NNIntegrate[(-2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
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
  (4*beta^2*Cos[theta]^2*NNIntegrate[
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
  (4*NNIntegrate[(-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*
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
  (4*beta^2*NNIntegrate[(-2*(2*be^2*ArcTanh[be*Cos[theta]]*Cos[theta]^2*
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
  (4*beta*Cos[theta]*NNIntegrate[
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
  (4*beta^3*Cos[theta]*NNIntegrate[
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
  (8*PolyGamma[2, 1])/(3*(-1 + beta*Cos[theta])) + 
  (8*beta*Cos[theta]*PolyGamma[2, 1])/(3*(-1 + beta*Cos[theta])) + 
  (32*PolyGamma[2, 2])/(3*(-1 + beta*Cos[theta])) - 
  (32*beta*Cos[theta]*PolyGamma[2, 2])/(3*(-1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyLog[2, beta^2])/(9*(-1 + beta*Cos[theta])^2) + 
  (8*beta*EulerGamma*Cos[theta]*PolyLog[2, beta^2])/
   (3*(-1 + beta*Cos[theta])^2) + (40*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/
   (9*(-1 + beta*Cos[theta])^2) - (8*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (40*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - (8*EulerGamma*PolyLog[2, beta^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (40*beta^2*Cos[theta]^2*PolyLog[2, beta^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (8*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2])/((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (40*beta*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])^2) - 
  (8*beta*EulerGamma*Cos[theta]*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (40*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])^2) + (8*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (20*PolyLog[2, beta^2*Cos[theta]^2])/(9*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) + (4*EulerGamma*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (20*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (4*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (40*PolyLog[2, beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + 
  (8*EulerGamma*PolyLog[2, beta^2*Cos[theta]^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (40*beta^2*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (8*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, beta^2*Cos[theta]^2])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (40*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])^2) - 
  (8*beta*EulerGamma*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (40*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])^2) + (8*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (40*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (8*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) + 
  (40*beta^2*Cos[theta]^2*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (8*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     Cos[theta]^2/(-1 + Cos[theta]^2)])/((-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(-1 + beta*Cos[theta])^2) + 
  (8*beta*EulerGamma*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
  (40*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(-1 + beta*Cos[theta])^2) - 
  (8*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])^2) + 
  (40*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (3*(-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (8*EulerGamma*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (40*beta^2*Cos[theta]^2*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (-6 + 6*beta*Cos[theta])) + (8*beta^2*EulerGamma*Cos[theta]^2*
    PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   ((-1 + beta*Cos[theta])*(-6 + 6*beta*Cos[theta])) - 
  (80*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta*Cos[theta])^2) + 
  (8*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (160*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta*Cos[theta])^2) - 
  (16*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (80*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta*Cos[theta])^2) + 
  (8*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (40*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (40*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (40*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (20*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (4*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - (20*beta^2*Cos[theta]^2*
    PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (4*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - 
  (20*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (4*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) + 
  (20*beta^2*Cos[theta]^2*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])) - 
  (4*beta^2*EulerGamma*Cos[theta]^2*PolyLog[2, 
     1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/(3*(-1 + beta*Cos[theta])*
    (1 + beta*Cos[theta])) - 
  (8*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) + 
  (16*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
  (8*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2))

resM[2,3][-1,1] := (-2*Pi^(1 + d/2)*(-112 + 6*(10 - 3*EulerGamma)*EulerGamma + 3*Pi^2))/27

resM[2,3][0,1] := Pi^(1 + d/2)*(-340/(27*(-1 + beta^2)) + (340*beta^2)/(27*(-1 + beta^2)) + 
  (44*EulerGamma)/(9*(-1 + beta^2)) - (44*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - (2*EulerGamma^2)/(3*(-1 + beta^2)) + 
  (2*beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + Pi^2/(3*(-1 + beta^2)) - 
  (beta^2*Pi^2)/(3*(-1 + beta^2)) + 52/(9*(1 + beta*Cos[theta])) - 
  920/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (920*beta^2)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (52*EulerGamma)/(9*(1 + beta*Cos[theta])) + 
  (424*EulerGamma)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (424*beta^2*EulerGamma)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (26*EulerGamma^2)/(9*(1 + beta*Cos[theta])) - 
  (13*Pi^2)/(27*(1 + beta*Cos[theta])) + 
  (22*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (22*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (8*EulerGamma*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta^2*EulerGamma*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (448*ArcTanh[beta*Cos[theta]])/(27*(1 + beta*Cos[theta])) - 
  (80*EulerGamma*ArcTanh[beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (8*EulerGamma^2*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (4*Pi^2*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) + 
  (52*beta*Cos[theta])/(9*(1 + beta*Cos[theta])) - 
  (920*beta*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (920*beta^3*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (52*beta*EulerGamma*Cos[theta])/(9*(1 + beta*Cos[theta])) + 
  (424*beta*EulerGamma*Cos[theta])/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (424*beta^3*EulerGamma*Cos[theta])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (26*beta*EulerGamma^2*Cos[theta])/
   (9*(1 + beta*Cos[theta])) - (13*beta*Pi^2*Cos[theta])/
   (27*(1 + beta*Cos[theta])) + (22*beta*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - (22*beta^3*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma*Pi^2*Cos[theta])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (8*beta^3*EulerGamma*Pi^2*Cos[theta])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (448*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/(27*(1 + beta*Cos[theta])) - 
  (80*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (9*(1 + beta*Cos[theta])) + (8*beta*EulerGamma^2*ArcTanh[beta*Cos[theta]]*
    Cos[theta])/(3*(1 + beta*Cos[theta])) - 
  (4*beta*Pi^2*ArcTanh[beta*Cos[theta]]*Cos[theta])/
   (3*(1 + beta*Cos[theta])) - (224*Log[1 - beta^2])/
   (27*(1 + beta*Cos[theta])) + (40*EulerGamma*Log[1 - beta^2])/
   (9*(1 + beta*Cos[theta])) - (4*EulerGamma^2*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) + (2*Pi^2*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) - (224*beta*Cos[theta]*Log[1 - beta^2])/
   (27*(1 + beta*Cos[theta])) + (40*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2])/(9*(1 + beta*Cos[theta])) - 
  (4*beta*EulerGamma^2*Cos[theta]*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) + (2*beta*Pi^2*Cos[theta]*Log[1 - beta^2])/
   (3*(1 + beta*Cos[theta])) + (44*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (44*beta^2*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (4*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (4*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (224*Log[1 - beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + (580*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (580*beta^2*Log[1 - beta*Cos[theta]])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (40*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (52*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (52*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (4*EulerGamma^2*Log[1 - beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (2*Pi^2*Log[1 - beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (8*Pi^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta^2*Pi^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (224*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + 
  (580*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (580*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (52*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (52*beta^3*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (4*beta*EulerGamma^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (2*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (8*beta*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta^3*Pi^2*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + (40*Log[1 - beta*Cos[theta]]^2)/
   (9*(1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 - beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) + 
  (40*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/(9*(1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (20*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (4*EulerGamma*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) - (20*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (4*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) + (44*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (44*beta^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (4*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (4*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (224*Log[1 + beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + (580*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (580*beta^2*Log[1 + beta*Cos[theta]])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (40*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (52*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (52*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (4*EulerGamma^2*Log[1 + beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (2*Pi^2*Log[1 + beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (8*Pi^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta^2*Pi^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (224*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (27*(1 + beta*Cos[theta])) + 
  (580*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (580*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (40*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) - (52*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (52*beta^3*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (4*beta*EulerGamma^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (2*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - 
  (8*beta*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta^3*Pi^2*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - (40*Log[1 + beta*Cos[theta]]^2)/
   (9*(1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 + beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/(9*(1 + beta*Cos[theta])) + 
  (8*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
   (3*(1 + beta*Cos[theta])) - 
  (40*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) - (40*beta*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (9*(1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
   (3*(1 + beta*Cos[theta])) + 
  (20*Log[1 - beta^2]*Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(1 + beta*Cos[theta])) - (4*EulerGamma*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(1 + beta*Cos[theta])) + (20*beta*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (9*(1 + beta*Cos[theta])) - (4*beta*EulerGamma*Cos[theta]*Log[1 - beta^2]*
    Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
   (3*(1 + beta*Cos[theta])) - (44*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)) + (44*beta^2*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)) + (4*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)) - (4*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta^2)) - (580*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (580*beta^2*Log[1 - beta^2*Cos[theta]^2])/(27*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (52*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (52*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*Pi^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (8*beta^2*Pi^2*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (580*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (580*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (52*beta*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (52*beta^3*EulerGamma*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (8*beta^3*Pi^2*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (40*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (8*EulerGamma*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  (40*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
    Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (8*beta*EulerGamma*Cos[theta]*Log[(1 + beta*Cos[theta])/
      (1 - beta*Cos[theta])]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(1 + beta*Cos[theta])) + NNIntegrate[
   (Log[y]*(-64/9 + 64/(9*(1 - y)) - (88*y)/(9*(1 - y)) + 
      (8*y^2)/(3*(1 - y)) - (16*ArcTanh[beta*Cos[theta]])/3 + 
      (16*ArcTanh[beta*Cos[theta]])/(3*(1 - y)) - 
      (16*y*ArcTanh[beta*Cos[theta]])/(3*(1 - y)) + (8*Log[1 - beta^2])/3 - 
      (8*Log[1 - beta*Cos[theta]])/3 + (8*Log[1 - beta*Cos[theta]])/
       (3*(1 - y)) - (8*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
      (8*Log[1 + beta*Cos[theta]])/3 + (8*Log[1 + beta*Cos[theta]])/
       (3*(1 - y)) - (8*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) - 
      (8*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
       (3*(1 - y)) + (8*y*Log[1 + y/(1 - y) - 
          beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/(3*(1 - y))))/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   (44/9 - (4*EulerGamma)/3 - 44/(9*(1 - y)) + (4*EulerGamma)/(3*(1 - y)) + 
     (44*y)/(3*(1 - y)) - (4*EulerGamma*y)/(1 - y) - (88*y^2)/(9*(1 - y)) + 
     (8*EulerGamma*y^2)/(3*(1 - y)) + 52/(9*(1 + beta*Cos[theta])) - 
     424/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (424*beta^2)/(27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*EulerGamma)/(9*(1 + beta*Cos[theta])) + 
     (8*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (8*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     52/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     424/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (424*beta^2)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*EulerGamma)/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*Pi^2)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta^2*Pi^2)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*y)/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (424*y)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (424*beta^2*y)/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*EulerGamma*y)/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Pi^2*y)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta^2*Pi^2*y)/(9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (80*ArcTanh[beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) - 
     (16*EulerGamma*ArcTanh[beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
     (80*ArcTanh[beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*EulerGamma*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (80*y*ArcTanh[beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*EulerGamma*y*ArcTanh[beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (52*beta*Cos[theta])/
      (9*(1 + beta*Cos[theta])) - (424*beta*Cos[theta])/
      (27*(-1 + beta^2)*(1 + beta*Cos[theta])) + (424*beta^3*Cos[theta])/
      (27*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta*EulerGamma*Cos[theta])/(9*(1 + beta*Cos[theta])) + 
     (8*beta*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (8*beta^3*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta*Cos[theta])/(9*(1 - y)*(1 + beta*Cos[theta])) + 
     (424*beta*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (424*beta^3*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (52*beta*EulerGamma*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (8*beta*Pi^2*Cos[theta])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta^3*Pi^2*Cos[theta])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (52*beta*y*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (424*beta*y*Cos[theta])/
      (27*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (424*beta^3*y*Cos[theta])/(27*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (52*beta*EulerGamma*y*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (8*beta*Pi^2*y*Cos[theta])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta^3*Pi^2*y*Cos[theta])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (80*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 + beta*Cos[theta])) - (16*beta*EulerGamma*
       ArcTanh[beta*Cos[theta]]*Cos[theta])/(3*(1 + beta*Cos[theta])) - 
     (80*beta*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta*EulerGamma*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (80*beta*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta*EulerGamma*y*ArcTanh[beta*Cos[theta]]*Cos[theta])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - (40*Log[1 - beta^2])/
      (9*(1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 - beta^2])/
      (3*(1 + beta*Cos[theta])) - (40*beta*Cos[theta]*Log[1 - beta^2])/
      (9*(1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
       Log[1 - beta^2])/(3*(1 + beta*Cos[theta])) + 
     (64*Log[1 - y])/(9*(-1 + y)) - (88*y*Log[1 - y])/(9*(-1 + y)) + 
     (8*y^2*Log[1 - y])/(3*(-1 + y)) + (16*ArcTanh[beta*Cos[theta]]*
       Log[1 - y])/(3*(-1 + y)) - (16*y*ArcTanh[beta*Cos[theta]]*Log[1 - y])/
      (3*(-1 + y)) - (32*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (32*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (32*beta^2*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (32*y*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (32*y*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (32*beta^2*y*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (32*beta*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (32*beta*Cos[theta]*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (32*beta^3*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (32*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (32*beta*y*Cos[theta]*Log[1 + y/(1 - y)])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (32*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*Log[1 - beta*Cos[theta]])/3 + (4*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)) - (4*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) + 
     (40*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
     (52*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (40*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (52*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (40*y*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (52*y*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta^2*y*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (8*EulerGamma*y*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 + beta*Cos[theta])) + (52*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta^3*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (40*beta*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (52*beta^3*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (52*beta^3*y*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (8*beta*EulerGamma*y*Cos[theta]*
       Log[1 - beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Log[1 - y]*Log[1 - beta*Cos[theta]])/(3*(-1 + y)) - 
     (8*y*Log[1 - y]*Log[1 - beta*Cos[theta]])/(3*(-1 + y)) + 
     (8*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Log[1 - beta*Cos[theta]]^2)/(3*(1 + beta*Cos[theta])) - 
     (8*Log[1 - beta*Cos[theta]]^2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*y*Log[1 - beta*Cos[theta]]^2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(1 + beta*Cos[theta])) - (8*beta*Cos[theta]*Log[1 - beta*Cos[theta]]^
        2)/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[1 - beta*Cos[theta]]^2)/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*Log[1 - beta^2]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (4*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (4*Log[1 + beta*Cos[theta]])/3 + 
     (4*Log[1 + beta*Cos[theta]])/(3*(1 - y)) - 
     (4*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (40*Log[1 + beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
     (52*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (40*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - (52*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*beta^2*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (40*y*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + (52*y*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta^2*y*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (8*EulerGamma*y*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 + beta*Cos[theta])) + (52*beta*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (52*beta^3*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (3*(1 + beta*Cos[theta])) - (40*beta*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (52*beta^3*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (52*beta^3*y*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (8*beta*EulerGamma*y*Cos[theta]*
       Log[1 + beta*Cos[theta]])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Log[1 - y]*Log[1 + beta*Cos[theta]])/(3*(-1 + y)) - 
     (8*y*Log[1 - y]*Log[1 + beta*Cos[theta]])/(3*(-1 + y)) + 
     (16*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^2*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^2*y*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 + beta*Cos[theta]])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*Log[1 + beta*Cos[theta]]^2)/(3*(1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[1 + beta*Cos[theta]]^2)/
      (3*(1 + beta*Cos[theta])) + (8*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*y*Log[1 + beta*Cos[theta]]*Log[(1 + y/(1 - y))*
         (1 + beta*Cos[theta])])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[1 + beta*Cos[theta]]*
       Log[(1 + y/(1 - y))*(1 + beta*Cos[theta])])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*Log[1 - beta^2]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) - (8*beta*Cos[theta]*Log[1 - beta^2]*
       Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])])/
      (3*(1 + beta*Cos[theta])) + 
     (4*Log[1 - beta^2]*Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(1 + beta*Cos[theta])) + (4*beta*Cos[theta]*Log[1 - beta^2]*
       Log[-((1 + beta*Cos[theta])^2/(-1 + Cos[theta]^2))])/
      (3*(1 + beta*Cos[theta])) + (4*Log[1 - beta^2*Cos[theta]^2])/3 - 
     (4*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (4*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (52*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*
       (1 + beta*Cos[theta])) + (52*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (52*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) - (52*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*y*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)*(1 - y)*
       (1 + beta*Cos[theta])) + (52*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (52*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
     (52*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta^3*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (52*beta*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (52*beta^3*y*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
      (9*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^2*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^2*y*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta^3*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (16*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) - 
     (16*beta^3*y*Cos[theta]*Log[1 + y/(1 - y)]*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) - 
     (8*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*EulerGamma*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*EulerGamma*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (40*beta*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*EulerGamma*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (40*beta*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (9*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*EulerGamma*y*Cos[theta]*Log[1 + y/(1 - y) - 
         beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)) + 
     (8*y*Log[1 - y]*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/
            (1 - y))])/(3*(-1 + y)) - 
     (4*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*y*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*y*Cos[theta]*Log[-(((1 + y/(1 - y))*(1 + beta*Cos[theta])^2*
           (1 + (y*Cos[theta]^2)/(1 - y)))/(-1 + Cos[theta]^2))]*
       Log[(1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*y*Log[1 + y/(1 - y)]*Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
          (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*y*Cos[theta]*Log[1 + y/(1 - y)]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*y*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*y*Cos[theta]*Log[(1 - beta*Cos[theta])/(1 + beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*y*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*Log[(1 + beta*Cos[theta])/(1 - beta*Cos[theta])]*
       Log[1 - (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + (4*PolyLog[2, beta^2])/
      (3*(1 + beta*Cos[theta])) + (4*beta*Cos[theta]*PolyLog[2, beta^2])/
      (3*(1 + beta*Cos[theta])) - 
     (4*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) + 
     (4*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
     (4*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*y*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*y*Cos[theta]*PolyLog[2, ((1 + y/(1 - y))*Cos[theta]^2)/
         (-1 + Cos[theta]^2)])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
      (3*(1 + beta*Cos[theta])) - 
     (8*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 + beta^2))])/(3*(1 + beta*Cos[theta])) - 
     (4*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
      (3*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
     (4*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*y*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/((1 + y/(1 - y))*
          (-1 + beta^2*Cos[theta]^2))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*y*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
         ((1 + y/(1 - y))*(-1 + beta^2*Cos[theta]^2))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/(1 + y/(1 - y))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*y*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*y*Cos[theta]*PolyLog[2, (beta^2*(1 + (y*Cos[theta]^2)/(1 - y)))/
         (1 + y/(1 - y))])/(3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 + beta*Cos[theta])) - 
     (4*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*y*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*y*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*y*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (4*beta*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (4*beta*y*Cos[theta]*PolyLog[2, (Cos[theta]^2*(1 + y/(1 - y) - 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))/(-1 + Cos[theta]^2)])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*y*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 - y/(1 - y) + 
           beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) + 
     (8*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])) - 
     (8*beta*y*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
          (-1 - y/(1 - y) + beta^2*(1 + (y*Cos[theta]^2)/(1 - y))))])/
      (3*(1 - y)*(1 + beta*Cos[theta])))/y, {y, 0, 1}, AccuracyGoal -> 5] - 
  (8*beta*Cos[theta]*NNIntegrate[
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
  (8*beta^2*Cos[theta]^2*NNIntegrate[
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
  (4*NNIntegrate[(2*(-2*Log[1 - be*Cos[theta]]^2 + 2*be^2*Cos[theta]^2*
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
  (4*beta^2*Cos[theta]^2*NNIntegrate[
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
  (4*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 2*be^2*Cos[theta]^2*
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
  (4*beta^2*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 
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
  (4*beta*Cos[theta]*NNIntegrate[(-2*(2*Log[1 - be*Cos[theta]]^2 - 
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
  (4*beta^3*Cos[theta]*NNIntegrate[
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
   (3*(1 + beta*Cos[theta])) + (8*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (8*beta^2*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (8*beta*Cos[theta]*PolyGamma[2, 1])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) - (8*beta^3*Cos[theta]*PolyGamma[2, 1])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - (32*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (32*beta^2*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (32*beta*Cos[theta]*PolyGamma[2, 2])/(3*(-1 + beta^2)*
    (1 + beta*Cos[theta])) + (32*beta^3*Cos[theta]*PolyGamma[2, 2])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + (20*PolyLog[2, beta^2])/
   (9*(1 + beta*Cos[theta])) - (4*EulerGamma*PolyLog[2, beta^2])/
   (3*(1 + beta*Cos[theta])) + (20*beta*Cos[theta]*PolyLog[2, beta^2])/
   (9*(1 + beta*Cos[theta])) - (4*beta*EulerGamma*Cos[theta]*
    PolyLog[2, beta^2])/(3*(1 + beta*Cos[theta])) - 
  (20*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + 
  (4*EulerGamma*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (3*(1 + beta*Cos[theta])) - 
  (20*beta*Cos[theta]*PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + (4*beta*EulerGamma*Cos[theta]*
    PolyLog[2, Cos[theta]^2/(-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
  (20*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) - 
  (4*EulerGamma*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/(-1 + Cos[theta]^2)])/
   (3*(1 + beta*Cos[theta])) + 
  (20*beta*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(9*(1 + beta*Cos[theta])) - 
  (4*beta*EulerGamma*Cos[theta]*PolyLog[2, ((1 - beta^2)*Cos[theta]^2)/
      (-1 + Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) - 
  (40*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (9*(1 + beta*Cos[theta])) + 
  (8*EulerGamma*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])) - 
  (40*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(9*(1 + beta*Cos[theta])) + 
  (8*beta*EulerGamma*Cos[theta]*PolyLog[2, 
     -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])) - 
  (20*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2*Cos[theta]^2)])/
   (9*(1 + beta*Cos[theta])) + 
  (4*EulerGamma*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) - 
  (20*beta*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(9*(1 + beta*Cos[theta])) + 
  (4*beta*EulerGamma*Cos[theta]*PolyLog[2, (beta^2*(-1 + Cos[theta]^2))/
      (-1 + beta^2*Cos[theta]^2)])/(3*(1 + beta*Cos[theta])) + 
  (20*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(1 + beta*Cos[theta])) - 
  (4*EulerGamma*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(1 + beta*Cos[theta])) + 
  (20*beta*Cos[theta]*PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (9*(1 + beta*Cos[theta])) - (4*beta*EulerGamma*Cos[theta]*
    PolyLog[2, 1 + (-1 + beta^2*Cos[theta]^2)^(-1)])/
   (3*(1 + beta*Cos[theta])) - 
  (8*beta*Cos[theta]*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) - 
  (8*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (8*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2) - 
  (8*beta^2*Cos[theta]^2*PolyLog[3, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])*(1 + beta*Cos[theta])^2))

resM[3,3][-1,1] := 0

resM[3,3][0,1] := Pi^(1 + d/2)*(-448/(27*(-1 + beta^2)) + (448*beta^2)/(27*(-1 + beta^2)) + 
  (80*EulerGamma)/(9*(-1 + beta^2)) - (80*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - (8*EulerGamma^2)/(3*(-1 + beta^2)) + 
  (8*beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + (4*Pi^2)/(3*(-1 + beta^2)) - 
  (4*beta^2*Pi^2)/(3*(-1 + beta^2)) - 680/(27*(-1 + beta*Cos[theta])) + 
  (88*EulerGamma)/(9*(-1 + beta*Cos[theta])) - 
  (4*EulerGamma^2)/(3*(-1 + beta*Cos[theta])) + 
  (2*Pi^2)/(3*(-1 + beta*Cos[theta])) + (680*beta*Cos[theta])/
   (27*(-1 + beta*Cos[theta])) - (88*beta*EulerGamma*Cos[theta])/
   (9*(-1 + beta*Cos[theta])) + (4*beta*EulerGamma^2*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) - (2*beta*Pi^2*Cos[theta])/
   (3*(-1 + beta*Cos[theta])) + (80*Log[1 - beta^2])/(9*(-1 + beta^2)) - 
  (80*beta^2*Log[1 - beta^2])/(9*(-1 + beta^2)) - 
  (16*EulerGamma*Log[1 - beta^2])/(3*(-1 + beta^2)) + 
  (16*beta^2*EulerGamma*Log[1 - beta^2])/(3*(-1 + beta^2)) + 
  (8*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^3) - 
  (8*beta*Cos[theta]*Log[1 - beta^2])/(-1 + beta*Cos[theta])^3 + 
  (8*beta^2*Cos[theta]^2*Log[1 - beta^2])/(-1 + beta*Cos[theta])^3 - 
  (8*beta^3*Cos[theta]^3*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^3) + 
  (8*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (16*beta*Cos[theta]*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (8*beta^2*Cos[theta]^2*Log[1 - beta^2])/(3*(-1 + beta*Cos[theta])^2) - 
  (8*Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])^3) + 
  (8*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 - 
  (8*beta^2*Cos[theta]^2*Log[1 - beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 + 
  (8*beta^3*Cos[theta]^3*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])^3) + (88*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 - beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) - (88*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
    Log[1 - beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (8*Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])^3) + 
  (8*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 - 
  (8*beta^2*Cos[theta]^2*Log[1 + beta*Cos[theta]])/(-1 + beta*Cos[theta])^3 + 
  (8*beta^3*Cos[theta]^3*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])^3) + (88*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) - (8*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta*Cos[theta])) - (88*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta*Cos[theta])) + (8*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(-1 + beta*Cos[theta])) - 
  (80*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (80*beta^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (16*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (16*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (8*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])^2) + 
  (16*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (8*beta^2*Cos[theta]^2*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])^2) - (88*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) + (8*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/
   (3*(-1 + beta*Cos[theta])) + 
  (88*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(-1 + beta*Cos[theta])) - (8*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta*Cos[theta])) + 
  NNIntegrate[((-8/3 + 16/(3*(-1 + beta^2)) - (16*beta^2)/(3*(-1 + beta^2)) + 
      8/(3*(1 - y)) - (16*y)/(3*(1 - y)) + (8*y^2)/(3*(1 - y)) - 
      16/(3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
      (16*beta^2)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
         beta^2*y*Cos[theta]^2)) + (16*y)/(3*(1 - y)*(-1 + beta^2 - 
         beta^2*y + beta^2*y*Cos[theta]^2)) - (16*beta^2*y)/
       (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))*Log[y])/
    y, {y, 0, 1}, AccuracyGoal -> 5] + 
  NNIntegrate[(88/9 - 80/(9*(-1 + beta^2)) + (80*beta^2)/(9*(-1 + beta^2)) - 
     (8*EulerGamma)/3 + (16*EulerGamma)/(3*(-1 + beta^2)) - 
     (16*beta^2*EulerGamma)/(3*(-1 + beta^2)) - 88/(9*(1 - y)) + 
     (8*EulerGamma)/(3*(1 - y)) + (176*y)/(9*(1 - y)) - 
     (16*EulerGamma*y)/(3*(1 - y)) - (88*y^2)/(9*(1 - y)) + 
     (8*EulerGamma*y^2)/(3*(1 - y)) + 
     80/(9*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (80*beta^2)/(9*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (16*EulerGamma)/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*beta^2*EulerGamma)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (80*y)/(9*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (80*beta^2*y)/
      (9*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*EulerGamma*y)/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (16*beta^2*EulerGamma*y)/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*Log[1 - beta^2])/(3*(-1 + beta^2)) - (16*beta^2*Log[1 - beta^2])/
      (3*(-1 + beta^2)) + (8*Log[1 - y])/(3*(-1 + y)) - 
     (16*y*Log[1 - y])/(3*(-1 + y)) + (8*y^2*Log[1 - y])/(3*(-1 + y)) - 
     (16*Log[1 - y])/(3*(-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (16*beta^2*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*y*Log[1 - y])/(3*(-1 + y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (16*beta^2*y*Log[1 - y])/
      (3*(-1 + y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*Log[1 + y/(1 - y)])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (16*beta^2*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (16*y*Log[1 + y/(1 - y)])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (16*beta^2*y*Log[1 + y/(1 - y)])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (8*Log[1 - beta*Cos[theta]])/3 + (8*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)) - (16*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) + 
     (8*y^2*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
     (8*Log[1 + beta*Cos[theta]])/3 + (8*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)) - (16*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (8*y^2*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (8*Log[1 - beta^2*Cos[theta]^2])/3 - (16*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)) + (16*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (3*(-1 + beta^2)) - (8*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (16*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (8*y^2*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) + 
     (16*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) - (16*beta^2*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (16*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)*(-1 + beta^2 - beta^2*y + 
        beta^2*y*Cos[theta]^2)) + (16*beta^2*y*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (16*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*beta^2*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) + 
     (16*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)) - 
     (16*beta^2*y*Log[1 + y/(1 - y) - beta^2*(1 + (y*Cos[theta]^2)/(1 - y))])/
      (3*(1 - y)*(-1 + beta^2 - beta^2*y + beta^2*y*Cos[theta]^2)))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (16*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)) - 
  (16*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)) + 
  (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta*Cos[theta])^2) - 
  (16*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) + 
  (8*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta*Cos[theta])^2) - 
  (8*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (8*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(-1 + beta*Cos[theta])) + 
  (8*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(-1 + beta*Cos[theta])) - 
  (8*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(-1 + beta*Cos[theta])))

resM[3,4][-1,1] := 0

resM[3,4][0,1] := Pi^(1 + d/2)*(-340/(27*(-1 + beta^2)) + (340*beta^2)/(27*(-1 + beta^2)) + 
  (44*EulerGamma)/(9*(-1 + beta^2)) - (44*beta^2*EulerGamma)/
   (9*(-1 + beta^2)) - (2*EulerGamma^2)/(3*(-1 + beta^2)) + 
  (2*beta^2*EulerGamma^2)/(3*(-1 + beta^2)) + Pi^2/(3*(-1 + beta^2)) - 
  (beta^2*Pi^2)/(3*(-1 + beta^2)) + (448*ArcTanh[beta])/(27*beta) + 
  (448*beta*ArcTanh[beta])/27 - (80*EulerGamma*ArcTanh[beta])/(9*beta) - 
  (80*beta*EulerGamma*ArcTanh[beta])/9 + (8*EulerGamma^2*ArcTanh[beta])/
   (3*beta) + (8*beta*EulerGamma^2*ArcTanh[beta])/3 - 
  (4*Pi^2*ArcTanh[beta])/(3*beta) - (4*beta*Pi^2*ArcTanh[beta])/3 + 
  340/(27*(1 + beta*Cos[theta])) - (44*EulerGamma)/
   (9*(1 + beta*Cos[theta])) + (2*EulerGamma^2)/(3*(1 + beta*Cos[theta])) - 
  Pi^2/(3*(1 + beta*Cos[theta])) + (340*beta*Cos[theta])/
   (27*(1 + beta*Cos[theta])) - (44*beta*EulerGamma*Cos[theta])/
   (9*(1 + beta*Cos[theta])) + (2*beta*EulerGamma^2*Cos[theta])/
   (3*(1 + beta*Cos[theta])) - (beta*Pi^2*Cos[theta])/
   (3*(1 + beta*Cos[theta])) + (80*Log[2]*Log[1 - beta])/(9*beta) + 
  (80*beta*Log[2]*Log[1 - beta])/9 - (16*EulerGamma*Log[2]*Log[1 - beta])/
   (3*beta) - (16*beta*EulerGamma*Log[2]*Log[1 - beta])/3 - 
  (80*Log[2]*Log[1 + beta])/(9*beta) - (80*beta*Log[2]*Log[1 + beta])/9 + 
  (16*EulerGamma*Log[2]*Log[1 + beta])/(3*beta) + 
  (16*beta*EulerGamma*Log[2]*Log[1 + beta])/3 - 
  (80*Log[1 - beta]*Log[1 + Cos[theta]])/(9*beta) - 
  (80*beta*Log[1 - beta]*Log[1 + Cos[theta]])/9 + 
  (16*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]])/(3*beta) + 
  (16*beta*EulerGamma*Log[1 - beta]*Log[1 + Cos[theta]])/3 + 
  (80*Log[1 + beta]*Log[1 + Cos[theta]])/(9*beta) + 
  (80*beta*Log[1 + beta]*Log[1 + Cos[theta]])/9 - 
  (16*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]])/(3*beta) - 
  (16*beta*EulerGamma*Log[1 + beta]*Log[1 + Cos[theta]])/3 + 
  (44*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)) - 
  (44*beta^2*Log[1 - beta*Cos[theta]])/(9*(-1 + beta^2)) - 
  (4*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)) + 
  (4*beta^2*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(-1 + beta^2)) - 
  (44*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (4*EulerGamma*Log[1 - beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (44*beta*Cos[theta]*Log[1 - beta*Cos[theta]])/(9*(1 + beta*Cos[theta])) + 
  (4*beta*EulerGamma*Cos[theta]*Log[1 - beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) + (44*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (44*beta^2*Log[1 + beta*Cos[theta]])/
   (9*(-1 + beta^2)) - (4*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) + (4*beta^2*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(-1 + beta^2)) - (44*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) + (4*EulerGamma*Log[1 + beta*Cos[theta]])/
   (3*(1 + beta*Cos[theta])) - (44*beta*Cos[theta]*Log[1 + beta*Cos[theta]])/
   (9*(1 + beta*Cos[theta])) + (4*beta*EulerGamma*Cos[theta]*
    Log[1 + beta*Cos[theta]])/(3*(1 + beta*Cos[theta])) - 
  (44*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (44*beta^2*Log[1 - beta^2*Cos[theta]^2])/(9*(-1 + beta^2)) + 
  (4*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) - 
  (4*beta^2*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(-1 + beta^2)) + 
  (44*Log[1 - beta^2*Cos[theta]^2])/(9*(1 + beta*Cos[theta])) - 
  (4*EulerGamma*Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  (44*beta*Cos[theta]*Log[1 - beta^2*Cos[theta]^2])/
   (9*(1 + beta*Cos[theta])) - (4*beta*EulerGamma*Cos[theta]*
    Log[1 - beta^2*Cos[theta]^2])/(3*(1 + beta*Cos[theta])) + 
  NNIntegrate[((-8/3 + 8/(3*(1 - y)) - (16*y)/(3*(1 - y)) + 
      (8*y^2)/(3*(1 - y)) - (16*ArcTanh[beta])/(3*beta) - 
      (16*beta*ArcTanh[beta])/3 - (16*Sqrt[-(-1 + y)^(-1)]*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*beta*(-1 + y - y*Cos[theta]^2)) - 
      (16*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
         (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
        Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*(-1 + y - y*Cos[theta]^2)) + (16*Sqrt[-(-1 + y)^(-1)]*y*
        ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]]*Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*beta*(-1 + y - y*Cos[theta]^2)) + 
      (16*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
         (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
        Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
       (3*(-1 + y - y*Cos[theta]^2)))*Log[y])/y, {y, 0, 1}, 
   AccuracyGoal -> 5] + NNIntegrate[
   (88/9 - (8*EulerGamma)/3 - 88/(9*(1 - y)) + (8*EulerGamma)/(3*(1 - y)) + 
     (176*y)/(9*(1 - y)) - (16*EulerGamma*y)/(3*(1 - y)) - 
     (88*y^2)/(9*(1 - y)) + (8*EulerGamma*y^2)/(3*(1 - y)) + 
     (80*ArcTanh[beta])/(9*beta) + (80*beta*ArcTanh[beta])/9 - 
     (16*EulerGamma*ArcTanh[beta])/(3*beta) - 
     (16*beta*EulerGamma*ArcTanh[beta])/3 + 
     (80*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*beta*(-1 + y - y*Cos[theta]^2)) + 
     (80*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*(-1 + y - y*Cos[theta]^2)) - (16*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) - 
     (16*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*(-1 + y - y*Cos[theta]^2)) - (80*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*beta*(-1 + y - y*Cos[theta]^2)) - 
     (80*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (9*(-1 + y - y*Cos[theta]^2)) + (16*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) + 
     (16*beta*EulerGamma*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)])/
      (3*(-1 + y - y*Cos[theta]^2)) + (16*Log[2]*Log[1 - beta])/(3*beta) + 
     (16*beta*Log[2]*Log[1 - beta])/3 - (16*Log[2]*Log[1 + beta])/(3*beta) - 
     (16*beta*Log[2]*Log[1 + beta])/3 + (8*Log[1 - y])/(3*(-1 + y)) - 
     (16*y*Log[1 - y])/(3*(-1 + y)) + (8*y^2*Log[1 - y])/(3*(-1 + y)) + 
     (16*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) + 
     (16*beta*Sqrt[-(-1 + y)^(-1)]*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*(-1 + y - y*Cos[theta]^2)) - (16*Sqrt[-(-1 + y)^(-1)]*y*
       ArcTanh[(beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*beta*(-1 + y - y*Cos[theta]^2)) - 
     (16*beta*Sqrt[-(-1 + y)^(-1)]*y*ArcTanh[
        (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/Sqrt[1 + y/(1 - y)]]*
       Sqrt[(-1 + y - y*Cos[theta]^2)/(-1 + y)]*Log[1 - y])/
      (3*(-1 + y - y*Cos[theta]^2)) - (16*Log[1 - beta]*Log[1 + Cos[theta]])/
      (3*beta) - (16*beta*Log[1 - beta]*Log[1 + Cos[theta]])/3 + 
     (16*Log[1 + beta]*Log[1 + Cos[theta]])/(3*beta) + 
     (16*beta*Log[1 + beta]*Log[1 + Cos[theta]])/3 - 
     (8*Log[1 - beta*Cos[theta]])/3 + (8*Log[1 - beta*Cos[theta]])/
      (3*(1 - y)) - (8*y*Log[1 - beta*Cos[theta]])/(3*(1 - y)) - 
     (8*Log[1 + beta*Cos[theta]])/3 + (8*Log[1 + beta*Cos[theta]])/
      (3*(1 - y)) - (8*y*Log[1 + beta*Cos[theta]])/(3*(1 - y)) + 
     (8*Log[1 - beta^2*Cos[theta]^2])/3 - (8*Log[1 - beta^2*Cos[theta]^2])/
      (3*(1 - y)) + (8*y*Log[1 - beta^2*Cos[theta]^2])/(3*(1 - y)) - 
     (16*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (16*beta*Log[2]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*Log[1 + y/(1 - y)]*Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*beta*Log[1 + y/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (8*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (8*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (16*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (16*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 - (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (16*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (16*beta*Log[2]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (8*Log[1 + y/(1 - y)]*Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (8*beta*Log[1 + y/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*beta*Log[1 + (y*Cos[theta]^2)/(1 - y)]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (16*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*beta*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (16*beta*Log[Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
          Sqrt[1 + y/(1 - y)]]*
       Log[1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)])/
          Sqrt[1 + y/(1 - y)]])/(3*(1 - y)*Sqrt[1 + y/(1 - y)]*
       Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/((1 + beta)*
          (1 + Cos[theta]))])/(3*beta) + 
     (8*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
         ((1 + beta)*(1 + Cos[theta]))])/3 - 
     (8*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
          (1 + Cos[theta]))])/(3*beta) - 
     (8*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
         ((-1 + beta)*(1 + Cos[theta]))])/3 - 
     (8*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/(3*beta*(1 - y)*
       Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) - 
     (8*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (3*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/(3*beta*(1 - y)*
       Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]) + 
     (8*beta*PolyLog[2, ((-Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))/
         ((Cos[theta] + Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]/
            Sqrt[1 + y/(1 - y)])*(-1 + (beta*Sqrt[1 + (y*Cos[theta]^2)/
                (1 - y)])/Sqrt[1 + y/(1 - y)]))])/
      (3*(1 - y)*Sqrt[1 + y/(1 - y)]*Sqrt[1 + (y*Cos[theta]^2)/(1 - y)]))/y, 
   {y, 0, 1}, AccuracyGoal -> 5] + 
  (8*NNIntegrate[(2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
      ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6])/3 + 
  (8*beta^2*NNIntegrate[
     (2*PolyLog[2, -((be^2*(-1 + Cos[theta]^2))/(-1 + be^2))])/
      ((-1 + be^2)*beta), {be, 0, beta}, {x2, 0, 1}, AccuracyGoal -> 6])/3 + 
  (40*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/(9*beta) + 
  (40*beta*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/9 - 
  (8*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/(3*beta) - 
  (8*beta*EulerGamma*PolyLog[2, ((-1 + beta)*(1 - Cos[theta]))/
      ((1 + beta)*(1 + Cos[theta]))])/3 - 
  (40*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/((-1 + beta)*
       (1 + Cos[theta]))])/(9*beta) - 
  (40*beta*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/9 + 
  (8*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/(3*beta) + 
  (8*beta*EulerGamma*PolyLog[2, ((1 + beta)*(1 - Cos[theta]))/
      ((-1 + beta)*(1 + Cos[theta]))])/3 + 
  (4*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(1 + beta*Cos[theta])^2) + 
  (8*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (4*beta^2*Cos[theta]^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(1 + beta*Cos[theta])^2) + 
  (4*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (4*beta^2*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/(-1 + beta^2))])/
   (3*(-1 + beta^2)*(1 + beta*Cos[theta])) + 
  (4*beta*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])) - 
  (4*beta^3*Cos[theta]*PolyLog[2, -((beta^2*(-1 + Cos[theta]^2))/
       (-1 + beta^2))])/(3*(-1 + beta^2)*(1 + beta*Cos[theta])))

