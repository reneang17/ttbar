inttheta := ((-I)*2^(-1 - ep)*Pi*(1 - b^2*Cos[\[Theta]]^2)^(-1/2 - ep/2)*Csc[ep*Pi]*
  ((I*Sqrt[b^2*Cos[\[Theta]]^2] + Sqrt[1 - b^2*Cos[\[Theta]]^2])^ep*
    Hypergeometric2F1[-ep, 1 + ep, 1 - ep, 
     1/2 - (I/2)/Sqrt[-1 + Sec[\[Theta]]^2/b^2]] - 
   ((-I)*Sqrt[b^2*Cos[\[Theta]]^2] + Sqrt[1 - b^2*Cos[\[Theta]]^2])^ep*
    Hypergeometric2F1[-ep, 1 + ep, 1 - ep, 
     1/2 + (I/2)/Sqrt[-1 + Sec[\[Theta]]^2/b^2]]))/
 (ep*Sqrt[b^2*Cos[\[Theta]]^2]*Sin[\[Theta]]^(2*ep))

