ReMichal := (-5*Pi^2)/6 + Log[(1 - v)/(1 + v)]^2/4 + 
 (20*Pi^2 - 6*Log[(1 - v)/(1 + v)]^2 + Log[(1 - v)/(1 + v)]^3 + 
   Log[(1 - v)/(1 + v)]*(-10*Pi^2 + 24*Log[(2*v)/(1 + v)]) + 
   24*PolyLog[2, (1 - v)/(1 + v)])/(24*v) + 
 ((5*Pi^2*Log[(1 - v)/(1 + v)])/12 - Log[(1 - v)/(1 + v)]^3/24 - 
   (Log[(1 - v)/(1 + v)]*PolyLog[2, (1 - v)/(1 + v)])/2 + 
   PolyLog[3, (1 - v)/(1 + v)] - Zeta[3])/v^2 + Zeta[3]

ImMichal := Log[(1 - v)/(1 + v)] + (-Pi^2/6 - Log[(1 - v)/(1 + v)] + 
   Log[(1 - v)/(1 + v)]^2/4 + 2*Log[(2*v)/(1 + v)])/v + 
 (Pi^2/6 - Log[(1 - v)/(1 + v)]^2/4 - PolyLog[2, (1 - v)/(1 + v)])/v^2

