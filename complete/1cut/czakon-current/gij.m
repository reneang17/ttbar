gTL := ep^(-2) + lvp^2/2 + (lvp - ((lni + lnj)*vm)/v)/ep + 
 (-li2x + (lni + lnj)*(-lv + lvp*vp) + 
   (lni^2*(-(aj*vm) + ai*vp) + lnj^2*(-(ai*vm) + aj*vp))/dij)/v + 
 (-19/2 + 7/v)*zeta2 + IPi*((2 - v^(-1))/ep + 
   (2*(-lv + lvp*(1/2 + v) + (lni*(ai - vm) + lnj*(aj - vm))/dij))/v + 
   ep*(lvp^2 - ((-2*lv + lvp)^2/2 + 4*li2x*vm)/v - (1 - 3/(2*v))*zeta2 + 
     (2*(1 - dij)*(li2i + li2j + lni*lnip + lnj*lnjp) + (lni + lnj)*lvp + 
       ((di*lni + dj*lnj)*(-2*lv + lvp) + lni^2*(ai - vm) + lnj^2*(aj - vm))/
        v - 2*(li2x + zeta2))/dij)) + 
 ep*(lvp^3/6 + (li3x + 2*li3xp + ((-lni^3 - lnj^3)*vm)/6 + 12*lv*zeta2 - 
     lvp*(li2x + (5 + (19*v)/2)*zeta2) + (lni + lnj)*
      (lvp*(-lv + (lvp*(3 + v))/4) - (9*vm*zeta2)/2))/v - 
   (7/3 + v^(-1))*zeta3 + 
   (((ai - aj)*(lni^2 - lnj^2)*lv + lvp*(lnj^2*(-(aj*vm) + ai*vp) + 
         lni^2*(-(ai*vm) + aj*vp)) - (di*lni + dj*lnj)*(li2x - 7*zeta2))/v - 
     7*(lni + lnj)*zeta2 + (1 - dij)*(lni^2*lnip - li2x*(lni + lnj) + 
       2*(li2i*lni + li2j*lnj) + lnj^2*lnjp + 
       2*(-li3i - li3j + li3x + zeta3)))/dij)

gSL := ep^(-2) + lvp^2/2 + (lvp - ((lni + lnj)*vm)/v)/ep + 
 (-li2x + (lni + lnj)*(-lv + lvp*vp) + 
   (lni^2*(-(aj*vm) + ai*vp) + lnj^2*(-(ai*vm) + aj*vp))/dij)/v + 
 (-19/2 + 7/v)*zeta2 - (12*vm*zeta2)/v + 
 (12*ep*(-lv + lvp*vp + (2*lnj*(-(ai*vm) + aj*vp))/dij)*zeta2)/v + 
 IPi*(ep^(-1) + lvp + (2*(lni*(ai - vm) - lnj*(aj*v + di*vm)))/(dij*v) + 
   ep*(lvp^2/2 - (3/2 - 2/v)*zeta2 + 
     ((1 - dij)*(2*li2i - 2*li2j + 2*lni*lnip - lnj*(2*lnjp + lvp)) + 
       (-2*di*li2x + di*lnj*(-2*lv + lvp) + lni^2*(ai - vm) + 
         lnj^2*(aj*v + di*vm) + 2*lni*(-(di*lv) + lvp*(-ai + vp)) - 
         2*dj*zeta2)/v)/dij)) + 
 ep*(lvp^3/6 + (li3x + 2*li3xp + ((-lni^3 - lnj^3)*vm)/6 + 12*lv*zeta2 - 
     lvp*(li2x + (5 + (19*v)/2)*zeta2) + (lni + lnj)*
      (lvp*(-lv + (lvp*(3 + v))/4) - (9*vm*zeta2)/2))/v - 
   (7/3 + v^(-1))*zeta3 + 
   (((ai - aj)*(lni^2 - lnj^2)*lv + lvp*(lnj^2*(-(aj*vm) + ai*vp) + 
         lni^2*(-(ai*vm) + aj*vp)) - (di*lni + dj*lnj)*(li2x - 7*zeta2))/v - 
     7*(lni + lnj)*zeta2 + (1 - dij)*(lni^2*lnip - li2x*(lni + lnj) + 
       2*(li2i*lni + li2j*lnj) + lnj^2*lnjp + 
       2*(-li3i - li3j + li3x + zeta3)))/dij)

definitions := {ai -> (mi^2*pjq)/(2*pipj*piq), aj -> (mj^2*piq)/(2*pipj*pjq), 
 di -> 1 - 2*ai, dj -> 1 - 2*aj, dij -> di + dj, v -> Sqrt[1 - 4*ai*aj], 
 vm -> (1 - v)/2, vp -> (1 + v)/2, x -> vm/vp, lv -> Log[v], lvp -> Log[vp], 
 lni -> Log[ai/vp], lnip -> Log[1 - ai/vp], lnj -> Log[aj/vp], 
 lnjp -> Log[1 - aj/vp], li2i -> PolyLog[2, ai/vp], 
 li2j -> PolyLog[2, aj/vp], li2x -> PolyLog[2, x], li3i -> PolyLog[3, ai/vp], 
 li3j -> PolyLog[3, aj/vp], li3x -> PolyLog[3, x], 
 li3xp -> PolyLog[3, 1 - x], zeta2 -> Pi^2/6, zeta3 -> Zeta[3]}

