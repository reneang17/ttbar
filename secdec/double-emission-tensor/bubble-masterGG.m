gaugemasterGG := {{2*"gbub34"*Nc*(1/2 - Nc^2/2), ((2*"gbub14" + 2*"gbub23")*Nc^2)/2 - 
   ((2*"gbub13" + 2*"gbub24")*Nc^2)/2, 0}, 
 {((2*"gbub14" + 2*"gbub23")*Nc^2)/2 - ((2*"gbub13" + 2*"gbub24")*Nc^2)/2, 
  ("gbub34"*Nc)/2 - ((2*"gbub14" + 2*"gbub23")*Nc^3)/8 - 
   ((2*"gbub13" + 2*"gbub24")*Nc^3)/8, 
  ((2*"gbub13" + 2*"gbub24")*Nc*(4 - Nc^2))/8 + 
   ((2*"gbub14" + 2*"gbub23")*Nc*(-4 + Nc^2))/8}, 
 {0, ((2*"gbub13" + 2*"gbub24")*Nc*(4 - Nc^2))/8 + 
   ((2*"gbub14" + 2*"gbub23")*Nc*(-4 + Nc^2))/8, 
  ((2*"gbub14" + 2*"gbub23")*Nc*(4 - Nc^2))/8 + 
   ((2*"gbub13" + 2*"gbub24")*Nc*(4 - Nc^2))/8 + 
   ("gbub34"*(-4 + Nc^2))/(2*Nc)}}

tadpolemasterGG := {{-("gtad34"*Nc*(1/2 - Nc^2/2)), -((2*"gtad14" + 2*"gtad23")*Nc^2)/4 + 
   ((2*"gtad13" + 2*"gtad24")*Nc^2)/4, 0}, 
 {-((2*"gtad14" + 2*"gtad23")*Nc^2)/4 + ((2*"gtad13" + 2*"gtad24")*Nc^2)/4, 
  -("gtad34"*Nc)/4 + ((2*"gtad14" + 2*"gtad23")*Nc^3)/16 + 
   ((2*"gtad13" + 2*"gtad24")*Nc^3)/16, 
  -((2*"gtad13" + 2*"gtad24")*Nc*(4 - Nc^2))/16 - 
   ((2*"gtad14" + 2*"gtad23")*Nc*(-4 + Nc^2))/16}, 
 {0, -((2*"gtad13" + 2*"gtad24")*Nc*(4 - Nc^2))/16 - 
   ((2*"gtad14" + 2*"gtad23")*Nc*(-4 + Nc^2))/16, 
  -((2*"gtad14" + 2*"gtad23")*Nc*(4 - Nc^2))/16 - 
   ((2*"gtad13" + 2*"gtad24")*Nc*(4 - Nc^2))/16 - 
   ("gtad34"*(-4 + Nc^2))/(4*Nc)}}

quarkmasterGG := {{2*"qbub34"*(1/2 - Nc^2/2)*nf*TF, ((2*"qbub14" + 2*"qbub23")*Nc*nf*TF)/2 - 
   ((2*"qbub13" + 2*"qbub24")*Nc*nf*TF)/2, 0}, 
 {((2*"qbub14" + 2*"qbub23")*Nc*nf*TF)/2 - 
   ((2*"qbub13" + 2*"qbub24")*Nc*nf*TF)/2, ("qbub34"*nf*TF)/2 - 
   ((2*"qbub14" + 2*"qbub23")*Nc^2*nf*TF)/8 - 
   ((2*"qbub13" + 2*"qbub24")*Nc^2*nf*TF)/8, 
  ((2*"qbub13" + 2*"qbub24")*(4 - Nc^2)*nf*TF)/8 + 
   ((2*"qbub14" + 2*"qbub23")*(-4 + Nc^2)*nf*TF)/8}, 
 {0, ((2*"qbub13" + 2*"qbub24")*(4 - Nc^2)*nf*TF)/8 + 
   ((2*"qbub14" + 2*"qbub23")*(-4 + Nc^2)*nf*TF)/8, 
  ((2*"qbub14" + 2*"qbub23")*(4 - Nc^2)*nf*TF)/8 + 
   ((2*"qbub13" + 2*"qbub24")*(4 - Nc^2)*nf*TF)/8 + 
   ("qbub34"*(-4 + Nc^2)*nf*TF)/(2*Nc^2)}}

