coeffs = {t00 -> (2*b0cut*(2*(-1 + ep)^2 + ap*(-1 + 2*ep)))/
   ((-1 + ep)*(-3 + 2*ap + 2*ep)), 
 tkk -> (-4*b0cut*(-1 + ap + ep))/(-3 + 2*ap + 2*ep), 
 tnn -> (2*ap*b0cut)/((-1 + ep)*(-3 + 2*ap + 2*ep)), 
 tkn -> (-2*ap*b0cut)/((-1 + ep)*(-3 + 2*ap + 2*ep))}

b0cut = (-2*Pi^(d/2)*Gamma[1 - ap - ep]^2*Gamma[ep]*Sin[ep*Pi])/Gamma[2 - 2*ap - 2*ep]

normImPi = -(E^(ep*EulerGamma)*g^2*mu^(2*ep)*Pi^(-4 + ep)*TF)/16

