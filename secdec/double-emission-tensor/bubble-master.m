gaugemaster := {{2*"gbub34"*Nc*(1/2 - Nc^2/2), ((2*"gbub14" + 2*"gbub23")*(-1 + Nc^2))/4 - 
   ((2*"gbub13" + 2*"gbub24")*(-1 + Nc^2))/4}, 
 {((2*"gbub14" + 2*"gbub23")*(-1 + Nc^2))/4 - 
   ((2*"gbub13" + 2*"gbub24")*(-1 + Nc^2))/4, ("gbub34"*(1 - Nc^(-2))*Nc)/4 + 
   ((2*"gbub14" + 2*"gbub23")*(-1 + Nc^(-2))*Nc)/4 - 
   ((2*"gbub13" + 2*"gbub24")*(2 - 3*Nc^2 + Nc^4))/(8*Nc)}}

tadpolemaster := {{-("gtad34"*Nc*(1/2 - Nc^2/2)), -((2*"gtad14" + 2*"gtad23")*(-1 + Nc^2))/8 + 
   ((2*"gtad13" + 2*"gtad24")*(-1 + Nc^2))/8}, 
 {-((2*"gtad14" + 2*"gtad23")*(-1 + Nc^2))/8 + 
   ((2*"gtad13" + 2*"gtad24")*(-1 + Nc^2))/8, 
  -("gtad34"*(1 - Nc^(-2))*Nc)/8 - ((2*"gtad14" + 2*"gtad23")*(-1 + Nc^(-2))*
     Nc)/8 + ((2*"gtad13" + 2*"gtad24")*(2 - 3*Nc^2 + Nc^4))/(16*Nc)}}

quarkmaster := {{2*"qbub34"*(1/2 - Nc^2/2)*nf*TF, 
  ((2*"qbub14" + 2*"qbub23")*(-1 + Nc^2)*nf*TF)/(4*Nc) - 
   ((2*"qbub13" + 2*"qbub24")*(-1 + Nc^2)*nf*TF)/(4*Nc)}, 
 {((2*"qbub14" + 2*"qbub23")*(-1 + Nc^2)*nf*TF)/(4*Nc) - 
   ((2*"qbub13" + 2*"qbub24")*(-1 + Nc^2)*nf*TF)/(4*Nc), 
  ("qbub34"*(1 - Nc^(-2))*nf*TF)/4 + 
   ((2*"qbub14" + 2*"qbub23")*(-1 + Nc^(-2))*nf*TF)/4 - 
   ((2*"qbub13" + 2*"qbub24")*(2 - 3*Nc^2 + Nc^4)*nf*TF)/(8*Nc^2)}}

