masters34 := {(sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*
   (sp[k, p3] + sp[l, p3])^2), (sp[k, p1]*sp[l, p1]*sp[p4, p4])/
  (sp[k, l]*(sp[k, p1] + sp[l, p1])^2*(sp[k, p4] + sp[l, p4])^2), 
 (2*sp[k, p1]*sp[l, p1]*sp[p3, p4])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*
   (sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4])), 
 (2*sp[k, p1]^2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p3] + sp[l, p3])^2), (2*sp[k, p1]^2*sp[p1, p4]^2)/
  ((sp[k, p1] + sp[l, p1])^4*(sp[k, p4] + sp[l, p4])^2), 
 (4*sp[k, p1]^2*sp[p1, p3]*sp[p1, p4])/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4])), 
 (4*sp[k, p1]^2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p3] + sp[l, p3])^2), (4*sp[k, p1]^2*sp[p1, p4]^2)/
  ((sp[k, p1] + sp[l, p1])^4*(sp[k, p4] + sp[l, p4])^2), 
 (4*sp[k, p1]^2*sp[p1, p3]*sp[p1, p4])/((sp[k, p1] + sp[l, p1])^4*
    (sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4])) + 
  (16*sp[k, p1]*sp[l, p1]*sp[p1, p3]*sp[p1, p4])/((sp[k, p1] + sp[l, p1])^4*
    (sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4])) + 
  (4*sp[l, p1]^2*sp[p1, p3]*sp[p1, p4])/((sp[k, p1] + sp[l, p1])^4*
    (sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4])), 
 (2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])^2), 
 (2*sp[p1, p4]^2)/((sp[k, p1] + sp[l, p1])^2*(sp[k, p4] + sp[l, p4])^2), 
 (4*sp[p1, p3]*sp[p1, p4])/((sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])*
   (sp[k, p4] + sp[l, p4])), 
 -(sp[p3, p4]/(sp[k, l]*(sp[k, p3] + sp[l, p3])*(sp[k, p4] + sp[l, p4]))), 
 -sp[p3, p3]/(2*sp[k, l]*(sp[k, p3] + sp[l, p3])^2), 
 -sp[p4, p4]/(2*sp[k, l]*(sp[k, p4] + sp[l, p4])^2)}

cofs34 := {(-1 + ep)^(-1), (-1 + ep)^(-1), (1 - ep)^(-1), 1, 1, -1, 
 (-2 + ep)/(2*(-1 + ep)), (-2 + ep)/(2*(-1 + ep)), (-2 + ep)/(2*(-1 + ep)), 
 -(-2 + ep)/(2*(-1 + ep)), -(-2 + ep)/(2*(-1 + ep)), 
 -(-2 + ep)/(2*(-1 + ep)), 1, -1, -1}

masters13 := {(sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*
   (sp[k, p3] + sp[l, p3])^2), (2*sp[k, p1]*sp[l, p1]*sp[p1, p3])/
  (sp[k, l]*(sp[k, p1] + sp[l, p1])^3*(sp[k, p3] + sp[l, p3])), 
 (2*sp[k, p1]^2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p3] + sp[l, p3])^2), (4*sp[k, p1]^2*sp[p1, p3]^2)/
  ((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2), 
 (2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])^2), 
 -(sp[p1, p3]/(sp[k, l]*(sp[k, p1] + sp[l, p1])*(sp[k, p3] + sp[l, p3]))), 
 -sp[p3, p3]/(2*sp[k, l]*(sp[k, p3] + sp[l, p3])^2)}

cofs13 := {(-1 + ep)^(-1), (1 - ep)^(-1), 1, (-2 + ep)/(2*(-1 + ep)), 
 -(-2 + ep)/(2*(-1 + ep)), 1, -1}

masters23 := {(sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*
   (sp[k, p3] + sp[l, p3])^2), (2*sp[k, p1]*sp[l, p1]*sp[p2, p3])/
  (sp[k, l]*(sp[k, p1] + sp[l, p1])^2*(sp[k, p2] + sp[l, p2])*
   (sp[k, p3] + sp[l, p3])), (2*sp[k, p1]^2*sp[p1, p3]^2)/
  ((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2), 
 (4*sp[k, p1]^2*sp[p1, p2]*sp[p1, p3])/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p2] + sp[l, p2])*(sp[k, p3] + sp[l, p3])), 
 (4*sp[k, p1]^2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*
   (sp[k, p3] + sp[l, p3])^2), 
 (4*(sp[k, p1]^2 + 4*sp[k, p1]*sp[l, p1] + sp[l, p1]^2)*sp[p1, p2]*
   sp[p1, p3])/((sp[k, p1] + sp[l, p1])^4*(sp[k, p2] + sp[l, p2])*
   (sp[k, p3] + sp[l, p3])), (2*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^2*
   (sp[k, p3] + sp[l, p3])^2), (4*sp[p1, p2]*sp[p1, p3])/
  ((sp[k, p1] + sp[l, p1])^2*(sp[k, p2] + sp[l, p2])*
   (sp[k, p3] + sp[l, p3])), 
 -(sp[p2, p3]/(sp[k, l]*(sp[k, p2] + sp[l, p2])*(sp[k, p3] + sp[l, p3]))), 
 -sp[p3, p3]/(2*sp[k, l]*(sp[k, p3] + sp[l, p3])^2)}

cofs23 := {(-1 + ep)^(-1), (1 - ep)^(-1), 1, -1, (-2 + ep)/(2*(-1 + ep)), 
 (-2 + ep)/(2*(-1 + ep)), -(-2 + ep)/(2*(-1 + ep)), -(-2 + ep)/(2*(-1 + ep)), 
 1, -1}

