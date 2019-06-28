Eqq[z_] := -2*CF^2 + (CF^2*Pi^2)/3 - 8*CF*TF + (8*CF*TF)/(3*z) + 2*CF^2*z + 
 (CF^2*Pi^2*z)/3 + (16*CF*TF*z^2)/3 - (CF^2*Pi^2*DiracDelta[-1 + z])/2 + 
 8*CF^2*Log[1 - z] - 8*CF^2*z*Log[1 - z] - 4*CF^2*Log[z] + 4*CF^2*z*Log[z] - 
 8*CF*TF*z*Log[z] - (2*CF^2*Pi^2*plus[(1 - z)^(-1)])/3

Egg[z_] := (4*CA^2*Pi^2)/3 - (2*CA^2*Pi^2)/(3*z) - (2*CA^2*Pi^2*z)/3 + 
 (2*CA^2*Pi^2*z^2)/3 - (11*CA^2*Pi^2*DiracDelta[-1 + z])/18 + 
 (2*CA*nf*Pi^2*TF*DiracDelta[-1 + z])/9 + 
 2*nf*(4*CF*TF + 4*CF*TF*z - 8*CF*TF*z^2 + 8*CF*TF*z*Log[z]) - 
 (2*CA^2*Pi^2*plus[(1 - z)^(-1)])/3

Eqg[z_] := -8*CA*TF - 8*CF*TF - (CF*Pi^2*TF)/3 + (8*CA*TF)/(3*z) - (76*CA*TF*z)/3 + 
 4*CF*TF*z + (2*CF*Pi^2*TF*z)/3 - (16*nf*TF^2*z)/3 + (92*CA*TF*z^2)/3 + 
 4*CF*TF*z^2 - (2*CF*Pi^2*TF*z^2)/3 + (16*nf*TF^2*z^2)/3 + 
 16*CA*TF*z*Log[1 - z] - 16*CA*TF*z^2*Log[1 - z] - 4*CF*TF*Log[z] - 
 32*CA*TF*z*Log[z] - 8*CF*TF*z*Log[z]

Egq[z_] := 4*CF^2 + (2*CA*CF*Pi^2)/3 - (2*CA*CF*Pi^2)/(3*z) + 2*CF^2*z - 
 (CA*CF*Pi^2*z)/3 + 8*CF^2*z*Log[1 - z] - 4*CF^2*z*Log[z]

