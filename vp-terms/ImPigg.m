coeffs = {t00 -> (b0cut*(-5 + 3*ap + 3*ep))/(-3 + 2*ap + 2*ep), 
 tkk -> (b0cut*(5 - 4*ap - 3*ep))/(-3 + 2*ap + 2*ep), 
 tnn -> -((ap*b0cut)/(-3 + 2*ap + 2*ep)), 
 tkn -> (ap*b0cut)/(-3 + 2*ap + 2*ep)}

b0cut = (-2*Pi^(d/2)*Gamma[1 - ap - ep]^2*Gamma[ep]*Sin[ep*Pi])/Gamma[2 - 2*ap - 2*ep]

normImPi = (CA*E^(ep*EulerGamma)*g^2*mu^(2*ep)*Pi^(-4 + ep))/16

