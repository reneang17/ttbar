(*
 * NLO integrals
 *)

I13 = 2 Xi + 2/ap (1/12 ep (Pi^2 - 6 Lp^2) - (1/ep + Lp)) - 
      2 Log[-t1/(mt M)] (1/12 ep (Pi^2 - 6 Lp^2) - (1/ep + Lp)) + 
      ep PolyLog[2, 1 - (t1 u1)/(mt^2 M^2)] (-(1/ep + Lp));
I23 = -2 Xi - 2/ap (1/12 ep (Pi^2 - 6 Lp^2) - (1/ep + Lp)) - 
      2 Log[-u1/(mt M)] (1/12 ep (Pi^2 - 6 Lp^2) - (1/ep + Lp)) + 
      ep PolyLog[2, 1 - (t1 u1)/(mt^2 M^2)] (-(1/ep + Lp));
I14 = I13 /. t1 -> x1 /. u1 -> t1 /. x1 -> u1;
I24 = I23 /. u1 -> x1 /. t1 -> u1 /. x1 -> t1;
I34 = (1 + beta^2)/beta Log[xs] (1/12 ep (Pi^2 - 6 Lp^2) - (Lp + 1/ep)) - 
      (1 + beta^2)/beta ep f34 (Lp + 1/ep);
I33 = -2 (1/12 ep (Pi^2 - 6 Lp^2) - (Lp + 1/ep)) + 
      2 ep Log[(t1 u1)/(mt^2 M^2)] (Lp + 1/ep);
I44 = I33;
f34 = -PolyLog[2, -xs Tan[theta/2]^2] + 
      PolyLog[2, -(1/xs) Tan[theta/2]^2] + 
      4 Log[xs] Log[Cos[theta/2]];
Xi = 1/(2 ep^2) + 1/24 ep ((Pi^2 - 6 Lp^2) Log[nu^2/mu^2] - 
     4 (Lp^3 + 5 Zeta[3])) - 1/(2 ep) Log[nu^2/mu^2] + 
     1/24 (-6 Lp^2 - 12 Lp Log[nu^2/mu^2] - Pi^2);
