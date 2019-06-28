(*******************************************************************************
 
  "The singular behavior of one-loop massive QCD amplitudes with one 
			 external soft gluon" 
								 
				  by 

	Isabella Bierenbaum, Michal Czakon and Alexander Mitov 

                    Nucl. Phys. B 856 (2012) 228.
 
********************************************************************************
 
This file contains the results for the normalized functions g_{ij} in 
the kinematical cases Case1 and Case3. Kinematical configurations are 
defined in Sec.2 in the paper. 
 
The functions gijCase1 corresponds to Eq.8 and gijCase3 to Eq.11 from 
the paper. 
 
Also given below is the result for the scalar integral M_3 as given in 
Eq.A11 and evaluated in the kinematics corresponding to Case3. 
 
******* The following function appears in the results (defined in Eq.13) *******

Fc[x1,x2] = Integrate[(x2*Log[1 - t]*Log[1 - (t*x2)/x1])/(1 - t*x2), {t, 0, 1}] 
 
******************* Shorthand notations used in the formulas *******************

ai -> (mi2*pjq)/(pipj*piq); 
aj -> (mj2*piq)/(pipj*pjq); 
RS -> 4*(mi2*pjq - 2*pipj*piq); 
QS -> 16*(mj2*piq^2 - 2*pipj*piq*pjq + mi2*pjq^2); 
x -> Sqrt[(1 - v)/(1 + v)]; 
v -> Sqrt[1 - mi2*mj2/pipj^2]; 
IPi -> I*Pi; 
d = 4-2*e; (space-time dimension) 
 
ALARMgijC1, ALARMgijC3 and ALARMM3 denote unknown higher order terms. 
 
********************** The following invariants appear *************************
 
mi2 -> m_i^2 
mj2 -> m_j^2 
pipj -> (p_i.p_j) 
piq -> (p_i.q) 
pjq -> (p_j.q) 
 
*******************************************************************************)
 
gijCase1 = -1/(2*e^2) + ALARMgijC1*e^3 - IPi/(2*e) +  
     (2*IPi*mi2*pjq*Log[ai/2])/RS + ((-5*Pi^2*(2*pipj*piq - mi2*pjq))/6 +  
       mi2*pjq*Log[ai/2]^2)/RS +  
     e*((IPi*((Pi^2*(-2*pipj*piq + mi2*pjq))/2 + mi2*pjq*Log[ai/2]^2 +  
          4*(pipj*piq - mi2*pjq)*PolyLog[2, 1 - ai/2]))/RS +  
       (2*(pipj*piq - mi2*pjq)*Log[1 - ai/2]*Log[ai/2]^2 +  
         Log[ai/2]*((Pi^2*(-2*pipj*piq - 5*mi2*pjq))/3 +  
           4*(pipj*piq - mi2*pjq)*PolyLog[2, 1 - ai/2]) +  
         4*(pipj*piq - mi2*pjq)*PolyLog[3, ai/2] -  
         (4*(7*pipj*piq - 5*mi2*pjq)*Zeta[3])/3)/RS) +  
     e^2*((IPi*(2*(pipj*piq - mi2*pjq)*Log[1 - ai/2]*Log[ai/2]^2 +  
          (mi2*pjq*Log[ai/2]^3)/3 + Log[ai/2]*((Pi^2*(-4*pipj*piq + mi2*pjq))/ 
             6 + 4*(pipj*piq - mi2*pjq)*PolyLog[2, 1 - ai/2]) +  
          4*(pipj*piq - mi2*pjq)*(PolyLog[3, 1 - ai/2] + PolyLog[3, ai/2]) -  
          (2*(20*pipj*piq - 13*mi2*pjq)*Zeta[3])/3))/RS +  
       ((Pi^4*(458*pipj*piq - 213*mi2*pjq))/720 +  
         (Pi^2*(-4*pipj*piq - mi2*pjq)*Log[ai/2]^2)/12 +  
         (2*(pipj*piq - mi2*pjq)*Log[1 - ai/2]*Log[ai/2]^3)/3 +  
         ((-2*pipj*piq + 3*mi2*pjq)*Log[ai/2]^4)/12 -  
         (14*Pi^2*(pipj*piq - mi2*pjq)*PolyLog[2, 1 - ai/2])/3 -  
         4*(pipj*piq - mi2*pjq)*(PolyLog[4, 1 - 2/ai] +  
           PolyLog[4, 1 - ai/2] - PolyLog[4, ai/2]) +  
         Log[ai/2]*(4*(pipj*piq - mi2*pjq)*PolyLog[3, 1 - ai/2] -  
           2*(2*pipj*piq - mi2*pjq)*Zeta[3]))/RS);
  
gijCase3 = -1/(2*e^2) + ALARMgijC3*e^2 + Pi^2*(19/24 - 7/(12*v)) + 
     ((mj2*piq^2 + mi2*pjq^2)*Log[ai/aj]^2 - 
       (4*(mj2*piq^2 - mi2*pjq^2)*Log[ai/aj]*Log[x])/v + 
       4*(mj2*piq^2 + mi2*pjq^2)*Log[x]^2)/QS + 
     (IPi*(-1 + 1/(2*v)) + (-1/2 + 1/(2*v))*Log[x] + Log[1 + x^2]/2)/e - 
     Log[1 + x^2]^2/4 + Log[x]*(Log[v]/v + (1/2 + 1/(2*v))*Log[1 + x^2]) + 
     IPi*(Log[v]/v + Log[x]/(2*v) + ((-4*(mj2*piq^2 - mi2*pjq^2)*Log[ai/aj])/
          v + 16*pipj*piq*pjq*Log[x])/QS + (1 + 1/(2*v))*Log[1 + x^2]) + 
     PolyLog[2, x^2]/(2*v) + e*(-((Pi^2*Log[v])/v) + (Log[ai/aj]^2*Log[x])/
        (16*v) + Log[x]^3/(12*v) + Log[1 + x^2]*((-5*Pi^2)/(12*v) - 
         PolyLog[2, x^2]/(2*v)) + Log[x]*((-5*Pi^2)/(24*v) - 
         (Log[v]*Log[1 + x^2])/v - (3*Log[1 + x^2]^2)/(4*v) + 
         PolyLog[2, x^2]/(2*v)) + IPi*(-Pi^2/(8*v) + Log[ai/aj]^2/(16*v) + 
         Log[v]^2/v + Log[x]^2/(4*v) + (Log[v]*Log[1 + x^2])/v + 
         Log[1 + x^2]^2/(4*v) + Log[x]*(Log[v]/v + Log[1 + x^2]/(2*v)) + 
         ((-4*Pi^2*(mj2*piq^2 + 2*pipj*piq*pjq + mi2*pjq^2))/3 + 
           2*(2*mj2*piq^2 - pipj*piq*pjq + 2*mi2*pjq^2)*Log[ai/aj]^2 - 
           8*(2*mj2*piq^2 - 3*pipj*piq*pjq + 2*mi2*pjq^2)*Log[x]^2 - 
           16*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(4*Log[2] - 
             Log[1 + ai + v] - Log[1 + aj + v])*Log[1 + x^2] + 
           8*(mj2*piq^2 + mi2*pjq^2)*Log[1 + x^2]^2 + 
           Log[x]*(-16*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
              (2*Log[2] - Log[1 - aj + v] - Log[-1 + aj + v]) + 
             16*(2*mj2*piq^2 - 3*pipj*piq*pjq + 2*mi2*pjq^2)*Log[1 + x^2]) + 
           Log[ai/aj]*((-8*(mj2*piq^2 - mi2*pjq^2)*Log[v])/v - 
             8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(Log[1 - aj + v] - Log[
                -1 + aj + v]) - (4*(mj2*piq^2 - mi2*pjq^2)*Log[x])/v - 
             (4*(mj2*piq^2 - mi2*pjq^2)*Log[1 + x^2])/v) + 
           16*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(4*Log[2]^2 - 
             2*Log[2]*Log[1 + ai + v] - 2*Log[2]*Log[1 + aj + v] + 
             Log[1 + ai + v]*Log[1 + aj + v] + PolyLog[2, 2 - (2*aj)/
                (1 + aj - v)] + PolyLog[2, (1 + aj - v)/(2*aj)] + 
             PolyLog[2, (2*aj)/(1 + aj + v)] - PolyLog[2, (1 + aj - v)/(1 + 
                aj + v)] - PolyLog[2, -(((-1 + v)*(1 + aj + v))/((1 + aj - v)*
                 (1 + v)))] + PolyLog[2, (1 + aj + v)/(2 + 2*v)]))/QS + 
         PolyLog[2, x^2]/v) + (-PolyLog[3, x^2] - 2*PolyLog[3, 1 - x^2])/
        (2*v) + Zeta[3]/(2*v) + (8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
          Fc[aj/(1 + aj - v), aj/(1 + aj + v)] + 
         (mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[ai/aj]^3 + 
         (4*Pi^2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
           (7*Log[2] - 3*Log[1 + ai + v] - 4*Log[1 + aj + v]))/3 - 
         4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v]^2*
          (Log[1 + ai + v] - Log[1 + aj + v]) - 
         (4*(7*mj2*piq^2 - 8*pipj*piq*pjq + 7*mi2*pjq^2)*Log[x]^3)/3 - 
         40*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(2*Log[2] - 
           Log[1 + ai + v] - Log[1 + aj + v])*Log[1 + x^2]^2 + 
         (4*(21*mj2*piq^2 - 22*pipj*piq*pjq + 21*mi2*pjq^2)*Log[1 + x^2]^3)/
          3 + Log[ai/aj]^2*(-2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
            Log[v] - 2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
            (3*Log[2] - Log[1 + ai + v] - Log[1 - aj + v] - 
             Log[-1 + aj + v]) + (mj2*piq^2 + mi2*pjq^2)*Log[x] + 
           (3*mj2*piq^2 - 4*pipj*piq*pjq + 3*mi2*pjq^2)*Log[1 + x^2]) + 
         Log[x]^2*(-8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v] - 
           8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(5*Log[2] - 
             3*Log[1 + ai + v] - Log[1 - aj + v] - Log[-1 + aj + v]) + 
           4*(7*mj2*piq^2 - 8*pipj*piq*pjq + 7*mi2*pjq^2)*Log[1 + x^2]) + 
         Log[1 + x^2]*((-2*Pi^2*(35*mj2*piq^2 - 54*pipj*piq*pjq + 
              35*mi2*pjq^2))/3 + 16*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
            (5*Log[2]^2 - 5*Log[2]*Log[1 + ai + v] + 2*Log[1 + ai + v]^2 - 
             5*Log[2]*Log[1 + aj + v] + Log[1 + ai + v]*Log[1 + aj + v] + 
             2*Log[1 + aj + v]^2 + PolyLog[2, aj/(1 + aj - v)] - 
             PolyLog[2, (-1 + v)/aj] - PolyLog[2, -((1 + v)/aj)] + 
             PolyLog[2, aj/(1 + aj + v)])) + 
         Log[v]*((-4*Pi^2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2))/3 + 
           8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
            (Log[1 + ai + v]*Log[(1 + aj + v)/2] + Log[2]*Log[1 + aj + v] - 
             Log[1 + aj + v]^2 + PolyLog[2, -(((-1 + v)*(1 + aj + v))/
                ((1 + aj - v)*(1 + v)))])) + Log[ai/aj]*
          (Pi^2*((-2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2))/3 + 
             (14*(mj2*piq^2 - mi2*pjq^2))/(3*v)) + 
           2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v]^2 + 
           4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v]*
            (Log[2] + Log[1 + ai + v] - 2*Log[1 + aj + v]) - 
           4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[x]^2 + 
           24*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(Log[2] - 
             Log[1 + ai + v])*Log[1 + x^2] - 12*(mj2*piq^2 - pipj*piq*pjq + 
             mi2*pjq^2)*Log[1 + x^2]^2 + Log[x]*
            ((-8*(mj2*piq^2 - mi2*pjq^2)*Log[v])/v - 8*(mj2*piq^2 - pipj*piq*
                pjq + mi2*pjq^2)*(3*Log[2] - 2*Log[1 + ai + v] + Log[
                1 - aj + v] - Log[-1 + aj + v] - Log[1 + aj + v]) + 
             (24*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2) - (4*(mj2*piq^2 - 
                  mi2*pjq^2))/v)*Log[1 + x^2]) - 
           2*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(5*Log[2]^2 - 
             14*Log[2]*Log[1 + ai + v] + 6*Log[1 + ai + v]^2 + 
             4*Log[2]*Log[1 + aj + v] + 2*Log[1 + ai + v]*Log[1 + aj + v] - 
             3*Log[1 + aj + v]^2 - 4*PolyLog[2, (1 - v)/aj] + 
             2*PolyLog[2, aj/(1 + aj - v)] - 2*PolyLog[2, (-1 + v)/aj] + 
             4*PolyLog[2, aj/(1 + v)] - 2*PolyLog[2, -((1 + v)/aj)] + 
             2*PolyLog[2, aj/(1 + aj + v)]) - (4*(mj2*piq^2 - mi2*pjq^2)*
             PolyLog[2, x^2])/v) + Log[x]*
          ((2*Pi^2*(mj2*piq^2 - 20*pipj*piq*pjq + mi2*pjq^2))/3 + 
           4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v]^2 + 
           8*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*Log[v]*
            (Log[2] - Log[1 + ai + v]) + 16*(mj2*piq^2 - pipj*piq*pjq + 
             mi2*pjq^2)*(5*Log[2] - 4*Log[1 + ai + v] - Log[1 + aj + v])*
            Log[1 + x^2] - 4*(11*mj2*piq^2 - 12*pipj*piq*pjq + 11*mi2*pjq^2)*
            Log[1 + x^2]^2 - 4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*
            (9*Log[2]^2 - 14*Log[2]*Log[1 + ai + v] + 6*Log[1 + ai + v]^2 - 
             4*Log[2]*Log[1 + aj + v] + 2*Log[1 + ai + v]*Log[1 + aj + v] + 
             Log[1 + aj + v]^2 - 4*PolyLog[2, (1 - v)/aj] + 
             6*PolyLog[2, aj/(1 + aj - v)] - 6*PolyLog[2, (-1 + v)/aj] - 
             4*PolyLog[2, aj/(1 + v)] + 2*PolyLog[2, -((1 + v)/aj)] - 
             2*PolyLog[2, aj/(1 + aj + v)] + 4*PolyLog[2, x^2])) - 
         (4*(mj2*piq^2 - pipj*piq*pjq + mi2*pjq^2)*(20*Log[2]^3 - 
            27*Log[2]^2*Log[1 + ai + v] + 24*Log[2]*Log[1 + ai + v]^2 - 
            8*Log[1 + ai + v]^3 - 33*Log[2]^2*Log[1 + aj + v] + 
            6*Log[2]*Log[1 + ai + v]*Log[1 + aj + v] + 30*Log[2]*
             Log[1 + aj + v]^2 - 3*Log[1 + ai + v]*Log[1 + aj + v]^2 - 
            9*Log[1 + aj + v]^3 + 12*Log[2]*PolyLog[2, aj/(1 + aj - v)] - 
            6*Log[1 + ai + v]*PolyLog[2, aj/(1 + aj - v)] - 
            6*Log[1 + aj + v]*PolyLog[2, aj/(1 + aj - v)] - 
            12*Log[2]*PolyLog[2, (-1 + v)/aj] + 6*Log[1 + ai + v]*
             PolyLog[2, (-1 + v)/aj] + 6*Log[1 + aj + v]*PolyLog[2, 
              (-1 + v)/aj] - 12*Log[2]*PolyLog[2, -((1 + v)/aj)] + 
            6*Log[1 + ai + v]*PolyLog[2, -((1 + v)/aj)] + 6*Log[1 + aj + v]*
             PolyLog[2, -((1 + v)/aj)] + 12*Log[2]*PolyLog[2, 
              aj/(1 + aj + v)] - 6*Log[1 + ai + v]*PolyLog[2, 
              aj/(1 + aj + v)] - 6*Log[1 + aj + v]*PolyLog[2, 
              aj/(1 + aj + v)] - 6*Log[2]*PolyLog[2, -(((-1 + v)*(1 + aj + 
                  v))/((1 + aj - v)*(1 + v)))] + 6*Log[1 + aj + v]*
             PolyLog[2, -(((-1 + v)*(1 + aj + v))/((1 + aj - v)*(1 + v)))] + 
            12*PolyLog[3, (1 - v)/aj] + 12*PolyLog[3, aj/(1 + aj - v)] - 
            6*PolyLog[3, aj/(-1 + v)] + 12*PolyLog[3, (-1 + v)/aj] + 
            6*PolyLog[3, (-2*v)/(1 + aj - v)] - 6*PolyLog[3, -(aj/(1 + v))] + 
            12*PolyLog[3, aj/(1 + v)] + 12*PolyLog[3, -((1 + v)/aj)] + 
            12*PolyLog[3, (-1 + v)/(-1 - aj + v)] + 
            12*PolyLog[3, aj/(1 + aj + v)] + 6*PolyLog[3, (2*v)/(1 + aj + 
                v)] + 6*PolyLog[3, (2*aj*v)/((-1 + v)*(1 + aj + v))] + 
            12*PolyLog[3, (1 + v)/(1 + aj + v)] - 6*PolyLog[3, x^2]))/3 + 
         (56*(4*mj2*piq^2 - 5*pipj*piq*pjq + 4*mi2*pjq^2)*Zeta[3])/3)/QS);

M3Case3 = ALARMM3*e^2 + 1/(2*e^2*piq*pjq) - (19*Pi^2)/(24*piq*pjq) +  
     Log[2]^2/(4*piq*pjq) - Log[ai/aj]^2/(16*piq*pjq) +  
     Log[pipj]^2/(4*piq*pjq) + Log[piq]^2/(4*piq*pjq) +  
     Log[pjq]^2/(4*piq*pjq) - Log[x]^2/(4*piq*pjq) +  
     (Log[pjq]*Log[1 + x^2])/(2*piq*pjq) + Log[1 + x^2]^2/(4*piq*pjq) +  
     IPi*(-(Log[2]/(piq*pjq)) + Log[pipj]/(piq*pjq) - Log[piq]/(piq*pjq) -  
       Log[pjq]/(piq*pjq) - Log[1 + x^2]/(piq*pjq)) +  
     Log[pipj]*(-Log[piq]/(2*piq*pjq) - Log[pjq]/(2*piq*pjq) -  
       Log[1 + x^2]/(2*piq*pjq)) + Log[x]*(-Log[2]/(2*piq*pjq) +  
       Log[pipj]/(2*piq*pjq) - Log[piq]/(2*piq*pjq) - Log[pjq]/(2*piq*pjq) -  
       Log[1 + x^2]/(2*piq*pjq)) + (IPi/(piq*pjq) - Log[2]/(2*piq*pjq) +  
       Log[pipj]/(2*piq*pjq) - Log[piq]/(2*piq*pjq) - Log[pjq]/(2*piq*pjq) +  
       Log[x]/(2*piq*pjq) - Log[1 + x^2]/(2*piq*pjq))/e +  
     Log[piq]*(Log[pjq]/(2*piq*pjq) + Log[1 + x^2]/(2*piq*pjq)) +  
     Log[2]*(-Log[pipj]/(2*piq*pjq) + Log[piq]/(2*piq*pjq) +  
       Log[pjq]/(2*piq*pjq) + Log[1 + x^2]/(2*piq*pjq)) +  
     e*(-Fc[aj/(1 + aj - v), aj/(1 + aj + v)]/(2*piq*pjq) +  
       (19*Log[2]^3)/(12*piq*pjq) - Log[ai/aj]^3/(16*piq*pjq) +  
       Log[pipj]^3/(12*piq*pjq) - Log[piq]^3/(12*piq*pjq) -  
       Log[pjq]^3/(12*piq*pjq) - (2*Log[1 + ai + v]^3)/(3*piq*pjq) -  
       (3*Log[1 + aj + v]^3)/(4*piq*pjq) +  
       Log[v]^2*(Log[1 + ai + v]/(4*piq*pjq) - Log[1 + aj + v]/(4*piq*pjq)) +  
       Log[v]*(Pi^2/(12*piq*pjq) - (Log[1 + ai + v]*Log[1 + aj + v])/ 
          (2*piq*pjq) + Log[1 + aj + v]^2/(2*piq*pjq) +  
         Log[2]*(Log[1 + ai + v]/(2*piq*pjq) - Log[1 + aj + v]/ 
            (2*piq*pjq))) + (7*Log[x]^3)/(12*piq*pjq) +  
       (35*Pi^2*Log[1 + x^2])/(24*piq*pjq) - (Log[pjq]^2*Log[1 + x^2])/ 
        (4*piq*pjq) - (2*Log[1 + ai + v]^2*Log[1 + x^2])/(piq*pjq) -  
       (2*Log[1 + aj + v]^2*Log[1 + x^2])/(piq*pjq) -  
       (7*Log[1 + x^2]^3)/(4*piq*pjq) + Log[2]^2*(Log[pipj]/(4*piq*pjq) -  
         Log[piq]/(4*piq*pjq) - Log[pjq]/(4*piq*pjq) - (9*Log[1 + ai + v])/ 
          (4*piq*pjq) - (11*Log[1 + aj + v])/(4*piq*pjq) -  
         (21*Log[1 + x^2])/(4*piq*pjq)) + Log[x]^2*((11*Log[2])/(4*piq*pjq) +  
         Log[ai/aj]/(4*piq*pjq) - Log[pipj]/(4*piq*pjq) +  
         Log[piq]/(4*piq*pjq) + Log[pjq]/(4*piq*pjq) + Log[v]/(2*piq*pjq) -  
         (3*Log[1 + ai + v])/(2*piq*pjq) - Log[1 - aj + v]/(2*piq*pjq) -  
         Log[-1 + aj + v]/(2*piq*pjq) - (7*Log[1 + x^2])/(4*piq*pjq)) +  
       Log[piq]^2*(-Log[pjq]/(4*piq*pjq) - Log[1 + x^2]/(4*piq*pjq)) +  
       Log[pipj]^2*(-Log[piq]/(4*piq*pjq) - Log[pjq]/(4*piq*pjq) -  
         Log[1 + x^2]/(4*piq*pjq)) + Log[ai/aj]^2*((7*Log[2])/(16*piq*pjq) -  
         Log[pipj]/(16*piq*pjq) + Log[piq]/(16*piq*pjq) +  
         Log[pjq]/(16*piq*pjq) + Log[v]/(8*piq*pjq) - Log[1 + ai + v]/ 
          (8*piq*pjq) - Log[1 - aj + v]/(8*piq*pjq) - Log[-1 + aj + v]/ 
          (8*piq*pjq) - (3*Log[1 + x^2])/(16*piq*pjq)) +  
       Log[1 + aj + v]*(Pi^2/(3*piq*pjq) - (5*Log[1 + x^2]^2)/(2*piq*pjq)) +  
       Log[1 + ai + v]*(Pi^2/(4*piq*pjq) - Log[1 + aj + v]^2/(4*piq*pjq) -  
         (Log[1 + aj + v]*Log[1 + x^2])/(piq*pjq) - (5*Log[1 + x^2]^2)/ 
          (2*piq*pjq)) + Log[pjq]*((19*Pi^2)/(24*piq*pjq) -  
         Log[1 + x^2]^2/(4*piq*pjq)) + Log[piq]*((19*Pi^2)/(24*piq*pjq) -  
         Log[pjq]^2/(4*piq*pjq) - (Log[pjq]*Log[1 + x^2])/(2*piq*pjq) -  
         Log[1 + x^2]^2/(4*piq*pjq)) + Log[pipj]*((-19*Pi^2)/(24*piq*pjq) +  
         Log[piq]^2/(4*piq*pjq) + Log[pjq]^2/(4*piq*pjq) +  
         (Log[pjq]*Log[1 + x^2])/(2*piq*pjq) + Log[1 + x^2]^2/(4*piq*pjq) +  
         Log[piq]*(Log[pjq]/(2*piq*pjq) + Log[1 + x^2]/(2*piq*pjq))) +  
       Log[ai/aj]*(Pi^2/(24*piq*pjq) + (5*Log[2]^2)/(8*piq*pjq) -  
         Log[v]^2/(8*piq*pjq) + (3*Log[1 + ai + v]^2)/(4*piq*pjq) -  
         (3*Log[1 + aj + v]^2)/(8*piq*pjq) + Log[v]*(-Log[2]/(4*piq*pjq) -  
           Log[1 + ai + v]/(4*piq*pjq) + Log[1 + aj + v]/(2*piq*pjq)) +  
         (3*Log[1 + x^2]^2)/(4*piq*pjq) +  
         Log[2]*((-7*Log[1 + ai + v])/(4*piq*pjq) + Log[1 + aj + v]/ 
            (2*piq*pjq) - (3*Log[1 + x^2])/(2*piq*pjq)) +  
         Log[1 + ai + v]*(Log[1 + aj + v]/(4*piq*pjq) + (3*Log[1 + x^2])/ 
            (2*piq*pjq))) + Log[2]*((5*Pi^2)/(24*piq*pjq) -  
         Log[pipj]^2/(4*piq*pjq) - Log[piq]^2/(4*piq*pjq) -  
         Log[pjq]^2/(4*piq*pjq) + (2*Log[1 + ai + v]^2)/(piq*pjq) +  
         (5*Log[1 + aj + v]^2)/(2*piq*pjq) - (Log[pjq]*Log[1 + x^2])/ 
          (2*piq*pjq) + (5*Log[1 + aj + v]*Log[1 + x^2])/(piq*pjq) +  
         (19*Log[1 + x^2]^2)/(4*piq*pjq) + Log[piq]*(-Log[pjq]/(2*piq*pjq) -  
           Log[1 + x^2]/(2*piq*pjq)) + Log[pipj]*(Log[piq]/(2*piq*pjq) +  
           Log[pjq]/(2*piq*pjq) + Log[1 + x^2]/(2*piq*pjq)) +  
         Log[1 + ai + v]*(Log[1 + aj + v]/(2*piq*pjq) + (5*Log[1 + x^2])/ 
            (piq*pjq))) - (Log[ai/aj]*PolyLog[2, (1 - v)/aj])/(2*piq*pjq) +  
       (Log[2]/(piq*pjq) + Log[ai/aj]/(4*piq*pjq) - Log[1 + ai + v]/ 
          (2*piq*pjq) - Log[1 + aj + v]/(2*piq*pjq) - Log[1 + x^2]/(piq*pjq))* 
        PolyLog[2, aj/(1 + aj - v)] + (-(Log[2]/(piq*pjq)) -  
         Log[ai/aj]/(4*piq*pjq) + Log[1 + ai + v]/(2*piq*pjq) +  
         Log[1 + aj + v]/(2*piq*pjq) + Log[1 + x^2]/(piq*pjq))* 
        PolyLog[2, (-1 + v)/aj] + (Log[ai/aj]*PolyLog[2, aj/(1 + v)])/ 
        (2*piq*pjq) + (-(Log[2]/(piq*pjq)) - Log[ai/aj]/(4*piq*pjq) +  
         Log[1 + ai + v]/(2*piq*pjq) + Log[1 + aj + v]/(2*piq*pjq) +  
         Log[1 + x^2]/(piq*pjq))*PolyLog[2, -((1 + v)/aj)] +  
       (Log[2]/(piq*pjq) + Log[ai/aj]/(4*piq*pjq) - Log[1 + ai + v]/ 
          (2*piq*pjq) - Log[1 + aj + v]/(2*piq*pjq) - Log[1 + x^2]/(piq*pjq))* 
        PolyLog[2, aj/(1 + aj + v)] + (-Log[2]/(2*piq*pjq) -  
         Log[v]/(2*piq*pjq) + Log[1 + aj + v]/(2*piq*pjq))* 
        PolyLog[2, -(((-1 + v)*(1 + aj + v))/((1 + aj - v)*(1 + v)))] +  
       IPi*(Pi^2/(12*piq*pjq) - (7*Log[2]^2)/(2*piq*pjq) -  
         Log[ai/aj]^2/(4*piq*pjq) + Log[pipj]^2/(2*piq*pjq) +  
         Log[piq]^2/(2*piq*pjq) + Log[pjq]^2/(2*piq*pjq) +  
         Log[ai/aj]*(Log[1 - aj + v]/(2*piq*pjq) - Log[-1 + aj + v]/ 
            (2*piq*pjq)) + Log[x]^2/(piq*pjq) + (Log[pjq]*Log[1 + x^2])/ 
          (piq*pjq) - (Log[1 + aj + v]*Log[1 + x^2])/(piq*pjq) -  
         Log[1 + x^2]^2/(2*piq*pjq) + Log[x]*((2*Log[2])/(piq*pjq) -  
           Log[1 - aj + v]/(piq*pjq) - Log[-1 + aj + v]/(piq*pjq) -  
           (2*Log[1 + x^2])/(piq*pjq)) + Log[pipj]*(-(Log[piq]/(piq*pjq)) -  
           Log[pjq]/(piq*pjq) - Log[1 + x^2]/(piq*pjq)) +  
         Log[1 + ai + v]*(-(Log[1 + aj + v]/(piq*pjq)) -  
           Log[1 + x^2]/(piq*pjq)) + Log[piq]*(Log[pjq]/(piq*pjq) +  
           Log[1 + x^2]/(piq*pjq)) + Log[2]*(-(Log[pipj]/(piq*pjq)) +  
           Log[piq]/(piq*pjq) + Log[pjq]/(piq*pjq) + (2*Log[1 + ai + v])/ 
            (piq*pjq) + (2*Log[1 + aj + v])/(piq*pjq) + (5*Log[1 + x^2])/ 
            (piq*pjq)) - PolyLog[2, 2 - (2*aj)/(1 + aj - v)]/(piq*pjq) -  
         PolyLog[2, (1 + aj - v)/(2*aj)]/(piq*pjq) -  
         PolyLog[2, (2*aj)/(1 + aj + v)]/(piq*pjq) +  
         PolyLog[2, (1 + aj - v)/(1 + aj + v)]/(piq*pjq) +  
         PolyLog[2, -(((-1 + v)*(1 + aj + v))/((1 + aj - v)*(1 + v)))]/ 
          (piq*pjq) - PolyLog[2, (1 + aj + v)/(2 + 2*v)]/(piq*pjq)) +  
       Log[x]*(-Pi^2/(24*piq*pjq) + (5*Log[2]^2)/(2*piq*pjq) -  
         Log[ai/aj]^2/(16*piq*pjq) + Log[pipj]^2/(4*piq*pjq) +  
         Log[piq]^2/(4*piq*pjq) + Log[pjq]^2/(4*piq*pjq) -  
         Log[v]^2/(4*piq*pjq) + (3*Log[1 + ai + v]^2)/(2*piq*pjq) +  
         Log[v]*(-Log[2]/(2*piq*pjq) + Log[1 + ai + v]/(2*piq*pjq)) +  
         Log[1 + aj + v]^2/(4*piq*pjq) + (Log[pjq]*Log[1 + x^2])/ 
          (2*piq*pjq) + (Log[1 + aj + v]*Log[1 + x^2])/(piq*pjq) +  
         (11*Log[1 + x^2]^2)/(4*piq*pjq) + Log[2]*(-Log[pipj]/(2*piq*pjq) +  
           Log[piq]/(2*piq*pjq) + Log[pjq]/(2*piq*pjq) - (7*Log[1 + ai + v])/ 
            (2*piq*pjq) - Log[1 + aj + v]/(piq*pjq) - (9*Log[1 + x^2])/ 
            (2*piq*pjq)) + Log[ai/aj]*((3*Log[2])/(2*piq*pjq) -  
           Log[1 + ai + v]/(piq*pjq) + Log[1 - aj + v]/(2*piq*pjq) -  
           Log[-1 + aj + v]/(2*piq*pjq) - Log[1 + aj + v]/(2*piq*pjq) -  
           (3*Log[1 + x^2])/(2*piq*pjq)) + Log[pipj]*(-Log[piq]/(2*piq*pjq) -  
           Log[pjq]/(2*piq*pjq) - Log[1 + x^2]/(2*piq*pjq)) +  
         Log[piq]*(Log[pjq]/(2*piq*pjq) + Log[1 + x^2]/(2*piq*pjq)) +  
         Log[1 + ai + v]*(Log[1 + aj + v]/(2*piq*pjq) + (4*Log[1 + x^2])/ 
            (piq*pjq)) - PolyLog[2, (1 - v)/aj]/(piq*pjq) +  
         (3*PolyLog[2, aj/(1 + aj - v)])/(2*piq*pjq) -  
         (3*PolyLog[2, (-1 + v)/aj])/(2*piq*pjq) - PolyLog[2, aj/(1 + v)]/ 
          (piq*pjq) + PolyLog[2, -((1 + v)/aj)]/(2*piq*pjq) -  
         PolyLog[2, aj/(1 + aj + v)]/(2*piq*pjq) + PolyLog[2, x^2]/ 
          (piq*pjq)) + PolyLog[3, (1 - v)/aj]/(piq*pjq) +  
       PolyLog[3, aj/(1 + aj - v)]/(piq*pjq) - PolyLog[3, aj/(-1 + v)]/ 
        (2*piq*pjq) + PolyLog[3, (-1 + v)/aj]/(piq*pjq) +  
       PolyLog[3, (-2*v)/(1 + aj - v)]/(2*piq*pjq) -  
       PolyLog[3, -(aj/(1 + v))]/(2*piq*pjq) + PolyLog[3, aj/(1 + v)]/ 
        (piq*pjq) + PolyLog[3, -((1 + v)/aj)]/(piq*pjq) +  
       PolyLog[3, (-1 + v)/(-1 - aj + v)]/(piq*pjq) +  
       PolyLog[3, aj/(1 + aj + v)]/(piq*pjq) + PolyLog[3, (2*v)/(1 + aj + v)]/ 
        (2*piq*pjq) + PolyLog[3, (2*aj*v)/((-1 + v)*(1 + aj + v))]/ 
        (2*piq*pjq) + PolyLog[3, (1 + v)/(1 + aj + v)]/(piq*pjq) -  
       PolyLog[3, x^2]/(2*piq*pjq) - (14*Zeta[3])/(3*piq*pjq));
