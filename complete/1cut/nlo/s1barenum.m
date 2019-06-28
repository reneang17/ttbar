s1barenum := (-(Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
     NNIntegrate[(4*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
         (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
           2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
         (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
           2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1)))/
       x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8]) - 
   Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
    NNIntegrate[(-8*(-1 + beta^2)*(-1 + x)*x)/
      (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
          2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, 
     {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] - 
   Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
    NNIntegrate[(-8*(1 + beta^2)*(-1 + x)*x)/
      ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
          2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
       (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
          2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
     {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] - 
   Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
    NNIntegrate[(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
        (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 
           2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))) - 
       (4*(-1 + x)*(1 + beta*Cos[theta]))/(-1 - 2*(-1 + x)*x + 
         beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*
            (1 - 2*Cos[(Pi*xi)/2]^2))))/x, {x, 0, 1}, {xi, 0, 1}, 
     AccuracyGoal -> 6, PrecisionGoal -> 8])/ep + 
 Sqrt[Pi]*(-((Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(-8*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
           (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
             2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
           (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
             2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1))*
          Log[Sin[Pi*xi]])/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
        PrecisionGoal -> 8] + Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(16*(-1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]])/
         (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*
              Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, {x, 0, 1}, 
        {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
      Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
       NNIntegrate[(16*(1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]])/
         ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
          (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
        {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
      Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(-2*(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
            (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 2*
                (-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^
                   2))) - (4*(-1 + x)*(1 + beta*Cos[theta]))/
            (-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*
                Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))))*
          Log[Sin[Pi*xi]])/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
        PrecisionGoal -> 8])/Sqrt[Pi]) + 
   (Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(4*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1)))/
        x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(-8*(-1 + beta^2)*(-1 + x)*x)/
        (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
      NNIntegrate[(-8*(1 + beta^2)*(-1 + x)*x)/
        ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
         (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
          (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))) - 
         (4*(-1 + x)*(1 + beta*Cos[theta]))/(-1 - 2*(-1 + x)*x + 
           beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*
              (1 - 2*Cos[(Pi*xi)/2]^2))))/x, {x, 0, 1}, {xi, 0, 1}, 
       AccuracyGoal -> 6, PrecisionGoal -> 8])*((-2*EulerGamma)/Sqrt[Pi] - 
     (-EulerGamma + Lp)/Sqrt[Pi] - PolyGamma[0, 1/2]/Sqrt[Pi])) + 
 ep*Sqrt[Pi]*(-((Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(8*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
           (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
             2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
           (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
             2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1))*
          Log[Sin[Pi*xi]]^2)/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
        PrecisionGoal -> 8] + Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(-16*(-1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]]^2)/
         (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*
              Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, {x, 0, 1}, 
        {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
      Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
       NNIntegrate[(-16*(1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]]^2)/
         ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
          (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
        {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
      Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
       NNIntegrate[(2*(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
            (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 2*
                (-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^
                   2))) - (4*(-1 + x)*(1 + beta*Cos[theta]))/
            (-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*
                Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))))*
          Log[Sin[Pi*xi]]^2)/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
        PrecisionGoal -> 8])/Sqrt[Pi]) + 
   (Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(-8*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1))*
         Log[Sin[Pi*xi]])/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
       PrecisionGoal -> 8] + Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(16*(-1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]])/
        (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
      NNIntegrate[(16*(1 + beta^2)*(-1 + x)*x*Log[Sin[Pi*xi]])/
        ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
         (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(-2*(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
           (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 
              2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^
                  2))) - (4*(-1 + x)*(1 + beta*Cos[theta]))/
           (-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
              2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))))*
         Log[Sin[Pi*xi]])/x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, 
       PrecisionGoal -> 8])*((-2*EulerGamma)/Sqrt[Pi] - 
     (-EulerGamma + Lp)/Sqrt[Pi] - PolyGamma[0, 1/2]/Sqrt[Pi]) + 
   (Subscript[T, 1] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(4*(-1 + beta*Cos[theta])*(2/(-1 + beta*Cos[theta]) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) - 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1) + 
          (-2*x - 2*beta*Cos[theta] + (1 + beta*Cos[theta])/(1 - x) + 
            2*beta*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))^(-1)))/
        x, {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 3] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(-8*(-1 + beta^2)*(-1 + x)*x)/
        (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))^2, 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 3] \[CenterDot] Subscript[T, 4]*
      NNIntegrate[(-8*(1 + beta^2)*(-1 + x)*x)/
        ((-1 - 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))*
         (1 + 2*(-1 + x)*x + beta*((-1 + 2*x)*Cos[theta] + 
            2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2)))), 
       {x, 0, 1}, {xi, 0, 1}, AccuracyGoal -> 6, PrecisionGoal -> 8] + 
     Subscript[T, 2] \[CenterDot] Subscript[T, 3]*
      NNIntegrate[(8 + (4*(-1 + x)*(1 + beta*Cos[theta]))/
          (1 + 2*(-1 + x)*x + beta*(Cos[theta] - 2*x*Cos[theta] + 
             2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*(1 - 2*Cos[(Pi*xi)/2]^2))) - 
         (4*(-1 + x)*(1 + beta*Cos[theta]))/(-1 - 2*(-1 + x)*x + 
           beta*((-1 + 2*x)*Cos[theta] + 2*(-1 + x)*x*Sqrt[1 - Cos[theta]^2]*
              (1 - 2*Cos[(Pi*xi)/2]^2))))/x, {x, 0, 1}, {xi, 0, 1}, 
       AccuracyGoal -> 6, PrecisionGoal -> 8])*
    (-((EulerGamma^2/2 - EulerGamma*Lp + Lp^2/2)/Sqrt[Pi]) + 
     (-EulerGamma^2 - Pi^2/6)/(2*Sqrt[Pi]) - (EulerGamma^2 + Pi^2/6)/
      (2*Sqrt[Pi]) - ((-EulerGamma + Lp)*PolyGamma[0, 1/2])/Sqrt[Pi] - 
     EulerGamma*((-EulerGamma + Lp)/Sqrt[Pi] + PolyGamma[0, 1/2]/Sqrt[Pi]) - 
     EulerGamma*(EulerGamma/Sqrt[Pi] + (-EulerGamma + Lp)/Sqrt[Pi] + 
       PolyGamma[0, 1/2]/Sqrt[Pi]) - (-Pi^2 + 2*PolyGamma[0, 1/2]^2)/
      (4*Sqrt[Pi])))

