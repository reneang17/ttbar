qTpFT[Lp_,p_] := (2^(-2 + 3*ep + p)*(E^(-EulerGamma + Lp/2)/mu)^(-2 + 2*ep + p)*Sqrt[Pi]*
  Gamma[2 - 2*ep - p])/(Gamma[3/2 - ep - p/2]*Gamma[p/2])

qTpFT2d[Lp_,p_] := (2^(-2 + p)*(E^(-EulerGamma + Lp/2)/mu)^(-2 + p)*Sqrt[Pi]*Gamma[2 - p])/
 (Gamma[3/2 - p/2]*Gamma[p/2])

