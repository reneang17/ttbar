hsqq00 := (CF*(2*t1^2*xs^2 + 2*mt^2*t1*xs*(1 + xs)^2 + 
   mt^4*(1 + xs)^2*(1 + 4*xs + xs^2)))/(mt^4*(1 + xs)^4)

hsgg00 := -(t1^2*xs*(18*Nc^2*t1^4*xs^2 + 18*mt^2*Nc^2*t1^3*xs*(1 + xs)^2 + 
     8*mt^8*(-9 + 5*Nc^2)*(1 + xs)^4 + mt^4*t1^2*(1 + xs)^2*
      (-18*(1 + xs)^2 + Nc^2*(19 + 74*xs + 19*xs^2))) + 
   M^4*(18*Nc^2*t1^4*xs^3 + 18*mt^2*Nc^2*t1^3*xs^2*(1 + xs)^2 + 
     4*mt^8*(-9 + 5*Nc^2)*xs*(1 + xs)^4 + mt^4*t1^2*xs*(1 + xs)^2*
      (-18*(1 + xs)^2 + Nc^2*(19 + 74*xs + 19*xs^2)) + 
     mt^6*t1*(1 + xs)^2*(-9*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4) + 
       Nc^2*(5 + 40*xs + 66*xs^2 + 40*xs^3 + 5*xs^4))) + 
   M^2*t1*(36*Nc^2*t1^4*xs^3 + 36*mt^2*Nc^2*t1^3*xs^2*(1 + xs)^2 + 
     8*mt^8*(-9 + 5*Nc^2)*xs*(1 + xs)^4 + 2*mt^4*t1^2*xs*(1 + xs)^2*
      (-18*(1 + xs)^2 + Nc^2*(19 + 74*xs + 19*xs^2)) + 
     mt^6*t1*(1 + xs)^2*(-9*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4) + 
       Nc^2*(5 + 40*xs + 66*xs^2 + 40*xs^3 + 5*xs^4))))/
 (9*mt^4*Nc*t1^2*(M^2 + t1)^2*xs*(1 + xs)^4)

hsqq11 := -((CF*(2*t1^2*xs^2 + 2*mt^2*t1*xs*(1 + xs)^2 + 
    mt^4*(1 + xs)^2*(1 + 4*xs + xs^2))*(-4*beta*CF*Nc + 
    4*beta*(-2 + CA^2)*Log[-(t1/(M*mt))] + 8*beta*Log[-(u1/(M*mt))] + 
    Log[xs] + beta^2*Log[xs]))/(beta*mt^4*Nc*(1 + xs)^4))

hsgg11 := (48*beta*mt^2*Nc^3*(1 + xs)^2*(2*t1^3*(2*t1^2*xs^2 + mt^2*t1*xs*(1 + xs)^2 + 
      mt^4*(1 + xs)^2*(1 + 6*xs + xs^2)) + 
    M^4*(4*t1^3*xs^2 + 4*mt^6*xs*(1 + xs)^2 + 2*mt^2*t1^2*xs*(1 + xs)^2 + 
      mt^4*t1*(1 + xs)^2*(1 + 6*xs + xs^2)) + 
    M^2*t1*(8*t1^3*xs^2 + 8*mt^6*xs*(1 + xs)^2 + 4*mt^2*t1^2*xs*(1 + xs)^2 + 
      3*mt^4*t1*(1 + xs)^2*(1 + 6*xs + xs^2)))*(Log[-(t1/(M*mt))] - 
    Log[-(u1/(M*mt))]) - 36*beta*mt^2*Nc^2*(4 - Nc^2)*(1 + xs)^2*
   (2*t1^3*(2*t1^2*xs^2 + mt^2*t1*xs*(1 + xs)^2 + mt^4*(1 + xs)^2*
       (1 + 6*xs + xs^2)) + M^4*(4*t1^3*xs^2 + 4*mt^6*xs*(1 + xs)^2 + 
      2*mt^2*t1^2*xs*(1 + xs)^2 + mt^4*t1*(1 + xs)^2*(1 + 6*xs + xs^2)) + 
    M^2*t1*(8*t1^3*xs^2 + 8*mt^6*xs*(1 + xs)^2 + 4*mt^2*t1^2*xs*(1 + xs)^2 + 
      3*mt^4*t1*(1 + xs)^2*(1 + 6*xs + xs^2)))*(Log[-(t1/(M*mt))] - 
    Log[-(u1/(M*mt))]) - 9*mt^4*(4 - Nc^2)*(1 + xs)^2*
   (-2*t1^2*(4*mt^4 + t1^2)*xs*(1 + xs)^2 - 
    M^4*(4*mt^4*xs*(1 + xs)^2 + 2*t1^2*xs*(1 + xs)^2 + 
      mt^2*t1*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4)) - 
    M^2*t1*(8*mt^4*xs*(1 + xs)^2 + 4*t1^2*xs*(1 + xs)^2 + 
      mt^2*t1*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4)))*
   (4*beta*CF*Nc - 2*beta*Nc^2*Log[-(t1/(M*mt))] - 
    2*beta*Nc^2*Log[-(u1/(M*mt))] - Log[xs] - beta^2*Log[xs]) - 
  9*Nc^2*(2*t1^2*xs*(4*t1^4*xs^2 + 4*mt^2*t1^3*xs*(1 + xs)^2 + 
      4*mt^8*(1 + xs)^4 + mt^4*t1^2*(1 + xs)^2*(3 + 14*xs + 3*xs^2)) + 
    M^4*(8*t1^4*xs^3 + 8*mt^2*t1^3*xs^2*(1 + xs)^2 + 4*mt^8*xs*(1 + xs)^4 + 
      2*mt^4*t1^2*xs*(1 + xs)^2*(3 + 14*xs + 3*xs^2) + 
      mt^6*t1*(1 + xs)^2*(1 + 8*xs + 22*xs^2 + 8*xs^3 + xs^4)) + 
    M^2*t1*(16*t1^4*xs^3 + 16*mt^2*t1^3*xs^2*(1 + xs)^2 + 
      8*mt^8*xs*(1 + xs)^4 + 4*mt^4*t1^2*xs*(1 + xs)^2*(3 + 14*xs + 3*xs^2) + 
      mt^6*t1*(1 + xs)^2*(1 + 8*xs + 22*xs^2 + 8*xs^3 + xs^4)))*
   (4*beta*CF*Nc - 2*beta*Nc^2*Log[-(t1/(M*mt))] - 
    2*beta*Nc^2*Log[-(u1/(M*mt))] - Log[xs] - beta^2*Log[xs]) + 
  4*CF*mt^4*Nc^3*(1 + xs)^2*(-2*t1^2*(4*mt^4 + t1^2)*xs*(1 + xs)^2 - 
    M^4*(4*mt^4*xs*(1 + xs)^2 + 2*t1^2*xs*(1 + xs)^2 + 
      mt^2*t1*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4)) - 
    M^2*t1*(8*mt^4*xs*(1 + xs)^2 + 4*t1^2*xs*(1 + xs)^2 + 
      mt^2*t1*(1 + 8*xs + 6*xs^2 + 8*xs^3 + xs^4)))*
   (2*beta + (1 + beta^2)*Log[xs]))/(36*beta*mt^4*Nc^2*t1^2*(M^2 + t1)^2*xs*
  (1 + xs)^4)

hsqq10 := (34*CF)/3 - (4*CF*Pi^2)/9 + (12*CF*Pi^2)/(1 - xs)^5 + 
 (12*CF*Pi^2*t1)/(mt^2*(1 - xs)^5) + (3*CF*Pi^2*t1^2)/(mt^4*(1 - xs)^5) - 
 (30*CF*Pi^2)/(1 - xs)^4 - (30*CF*Pi^2*t1)/(mt^2*(1 - xs)^4) - 
 (15*CF*Pi^2*t1^2)/(2*mt^4*(1 - xs)^4) + (226*CF*Pi^2)/(9*(1 - xs)^3) + 
 (203*CF*Pi^2*t1)/(9*mt^2*(1 - xs)^3) + (19*CF*Pi^2*t1^2)/
  (4*mt^4*(1 - xs)^3) + (12*CF)/(1 - xs)^2 - (23*CF*Pi^2)/(3*(1 - xs)^2) + 
 (12*CF*t1)/(mt^2*(1 - xs)^2) - (23*CF*Pi^2*t1)/(6*mt^2*(1 - xs)^2) + 
 (3*CF*t1^2)/(mt^4*(1 - xs)^2) + (3*CF*Pi^2*t1^2)/(8*mt^4*(1 - xs)^2) - 
 (12*CF)/(1 - xs) + (19*CF*Pi^2)/(9*(1 - xs)) - (12*CF*t1)/(mt^2*(1 - xs)) + 
 (5*CF*Pi^2*t1)/(18*mt^2*(1 - xs)) - (3*CF*t1^2)/(mt^4*(1 - xs)) + 
 (CF*Pi^2*t1^2)/(144*mt^4*(1 - xs)) + (32*CF*t1^2)/(3*mt^4*(1 + xs)^6) - 
 (32*CF*t1^2)/(mt^4*(1 + xs)^5) - (8*CF*Pi^2*t1^2)/(9*mt^4*(1 + xs)^5) - 
 (32*CF)/(3*(1 + xs)^4) - (32*CF*t1)/(3*mt^2*(1 + xs)^4) + 
 (128*CF*t1^2)/(3*mt^4*(1 + xs)^4) + (22*CF*Pi^2*t1^2)/(9*mt^4*(1 + xs)^4) + 
 (64*CF)/(3*(1 + xs)^3) + (8*CF*Pi^2)/(9*(1 + xs)^3) + 
 (64*CF*t1)/(3*mt^2*(1 + xs)^3) + (13*CF*Pi^2*t1)/(9*mt^2*(1 + xs)^3) - 
 (32*CF*t1^2)/(mt^4*(1 + xs)^3) - (17*CF*Pi^2*t1^2)/(18*mt^4*(1 + xs)^3) - 
 (16*CF)/(1 + xs)^2 - (5*CF*Pi^2)/(9*(1 + xs)^2) - 
 (64*CF*t1)/(3*mt^2*(1 + xs)^2) - (11*CF*Pi^2*t1)/(6*mt^2*(1 + xs)^2) + 
 (41*CF*t1^2)/(3*mt^4*(1 + xs)^2) - (5*CF*Pi^2*t1^2)/(4*mt^4*(1 + xs)^2) + 
 (16*CF)/(3*(1 + xs)) - (4*CF*Pi^2)/(3*(1 + xs)) + 
 (32*CF*t1)/(3*mt^2*(1 + xs)) - (11*CF*Pi^2*t1)/(18*mt^2*(1 + xs)) - 
 (3*CF*t1^2)/(mt^4*(1 + xs)) + (CF*Pi^2*t1^2)/(144*mt^4*(1 + xs)) + 
 2*CF*Log[mu^2/mt^2] + (4*CF*t1^2*Log[mu^2/mt^2])/(mt^4*(1 + xs)^4) - 
 (8*CF*t1^2*Log[mu^2/mt^2])/(mt^4*(1 + xs)^3) - 
 (4*CF*Log[mu^2/mt^2])/(1 + xs)^2 - (4*CF*t1*Log[mu^2/mt^2])/
  (mt^2*(1 + xs)^2) + (4*CF*t1^2*Log[mu^2/mt^2])/(mt^4*(1 + xs)^2) + 
 (4*CF*Log[mu^2/mt^2])/(1 + xs) + (4*CF*t1*Log[mu^2/mt^2])/(mt^2*(1 + xs)) - 
 (8*CF*Log[mu^2/mt^2]^2)/3 - (16*CF*t1^2*Log[mu^2/mt^2]^2)/
  (3*mt^4*(1 + xs)^4) + (32*CF*t1^2*Log[mu^2/mt^2]^2)/(3*mt^4*(1 + xs)^3) + 
 (16*CF*Log[mu^2/mt^2]^2)/(3*(1 + xs)^2) + (16*CF*t1*Log[mu^2/mt^2]^2)/
  (3*mt^2*(1 + xs)^2) - (16*CF*t1^2*Log[mu^2/mt^2]^2)/(3*mt^4*(1 + xs)^2) - 
 (16*CF*Log[mu^2/mt^2]^2)/(3*(1 + xs)) - (16*CF*t1*Log[mu^2/mt^2]^2)/
  (3*mt^2*(1 + xs)) + (14*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
 (14*CF*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
 (14*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*(1 + xs)^2) - 
 (14*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*mt^2*(1 + xs)^2) + 
 (14*CF*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) - 
 (14*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*(1 + xs)) + 
 (14*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*mt^2*(1 + xs)) - 
 (14*CF*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) + 
 (28*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
 (56*CF*t1^2*Log[mu^2/mt^2]*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*mt^4*(1 + xs)^4) - (112*CF*t1^2*Log[mu^2/mt^2]*
   Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*mt^4*(1 + xs)^3) - 
 (56*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*(1 + xs)^2) - (56*CF*t1*Log[mu^2/mt^2]*
   Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*mt^2*(1 + xs)^2) + 
 (56*CF*t1^2*Log[mu^2/mt^2]*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*mt^4*(1 + xs)^2) + 
 (56*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
  (3*(1 + xs)) + (56*CF*t1*Log[mu^2/mt^2]*
   Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/(3*mt^2*(1 + xs)) - 
 (14*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
 (28*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/(3*(1 + xs)^2) + 
 (28*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/
  (3*mt^2*(1 + xs)^2) - (28*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/
  (3*(1 + xs)) - (28*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/
  (3*mt^2*(1 + xs)) - (4*CF*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*M^2*(1 - mt^2/M^2 + t1/M^2)) + 
 (4*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*(1 + xs)^2) + 
 (4*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*mt^2*(1 + xs)^2) + 
 (4*CF*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) - 
 (4*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*(1 + xs)) - 
 (4*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*mt^2*(1 + xs)) - 
 (4*CF*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
 (8*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
 (16*CF*t1^2*Log[mu^2/mt^2]*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*mt^4*(1 + xs)^4) - (32*CF*t1^2*Log[mu^2/mt^2]*
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*mt^4*(1 + xs)^3) - 
 (16*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*(1 + xs)^2) - (16*CF*t1*Log[mu^2/mt^2]*
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*mt^2*(1 + xs)^2) + 
 (16*CF*t1^2*Log[mu^2/mt^2]*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*mt^4*(1 + xs)^2) + 
 (16*CF*Log[mu^2/mt^2]*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
  (3*(1 + xs)) + (16*CF*t1*Log[mu^2/mt^2]*
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/(3*mt^2*(1 + xs)) + 
 (4*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
 (8*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/(3*(1 + xs)^2) - 
 (8*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/
  (3*mt^2*(1 + xs)^2) - (8*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/
  (3*(1 + xs)) + (8*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/
  (3*mt^2*(1 + xs)) + (4*CF^2*Log[(t1*u1)/(M^2*mt^2)])/(1 + xs)^4 + 
 (24*CF^2*xs*Log[(t1*u1)/(M^2*mt^2)])/(1 + xs)^4 + 
 (8*CF^2*t1*xs*Log[(t1*u1)/(M^2*mt^2)])/(mt^2*(1 + xs)^4) + 
 (40*CF^2*xs^2*Log[(t1*u1)/(M^2*mt^2)])/(1 + xs)^4 + 
 (16*CF^2*t1*xs^2*Log[(t1*u1)/(M^2*mt^2)])/(mt^2*(1 + xs)^4) + 
 (8*CF^2*t1^2*xs^2*Log[(t1*u1)/(M^2*mt^2)])/(mt^4*(1 + xs)^4) + 
 (24*CF^2*xs^3*Log[(t1*u1)/(M^2*mt^2)])/(1 + xs)^4 + 
 (8*CF^2*t1*xs^3*Log[(t1*u1)/(M^2*mt^2)])/(mt^2*(1 + xs)^4) + 
 (4*CF^2*xs^4*Log[(t1*u1)/(M^2*mt^2)])/(1 + xs)^4 + (10*CF*Log[xs])/3 + 
 (72*CF*Log[xs])/(1 - xs)^4 + (72*CF*t1*Log[xs])/(mt^2*(1 - xs)^4) + 
 (18*CF*t1^2*Log[xs])/(mt^4*(1 - xs)^4) - (144*CF*Log[xs])/(1 - xs)^3 - 
 (144*CF*t1*Log[xs])/(mt^2*(1 - xs)^3) - (36*CF*t1^2*Log[xs])/
  (mt^4*(1 - xs)^3) + (254*CF*Log[xs])/(3*(1 - xs)^2) + 
 (208*CF*t1*Log[xs])/(3*mt^2*(1 - xs)^2) + (12*CF*t1^2*Log[xs])/
  (mt^4*(1 - xs)^2) - (37*CF*Log[xs])/(3*(1 - xs)) + 
 (3*CF*t1*Log[xs])/(mt^2*(1 - xs)) + (73*CF*t1^2*Log[xs])/
  (12*mt^4*(1 - xs)) + (32*CF*t1^2*Log[xs])/(3*mt^4*(1 + xs)^7) - 
 (112*CF*t1^2*Log[xs])/(3*mt^4*(1 + xs)^6) - (32*CF*Log[xs])/(3*(1 + xs)^5) - 
 (32*CF*t1*Log[xs])/(3*mt^2*(1 + xs)^5) + (136*CF*t1^2*Log[xs])/
  (3*mt^4*(1 + xs)^5) + (80*CF*Log[xs])/(3*(1 + xs)^4) + 
 (80*CF*t1*Log[xs])/(3*mt^2*(1 + xs)^4) - (52*CF*t1^2*Log[xs])/
  (3*mt^4*(1 + xs)^4) - (40*CF*Log[xs])/(3*(1 + xs)^3) - 
 (56*CF*t1*Log[xs])/(3*mt^2*(1 + xs)^3) - (5*CF*t1^2*Log[xs])/
  (mt^4*(1 + xs)^3) - (28*CF*Log[xs])/(3*(1 + xs)^2) - 
 (4*CF*t1*Log[xs])/(3*mt^2*(1 + xs)^2) - (5*CF*t1^2*Log[xs])/
  (2*mt^4*(1 + xs)^2) + (17*CF*Log[xs])/(3*(1 + xs)) + 
 (11*CF*t1*Log[xs])/(3*mt^2*(1 + xs)) + (73*CF*t1^2*Log[xs])/
  (12*mt^4*(1 + xs)) + (CF*Log[mu^2/mt^2]*Log[xs])/(1 - xs) + 
 (CF*t1*Log[mu^2/mt^2]*Log[xs])/(3*mt^2*(1 - xs)) + 
 (CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(12*mt^4*(1 - xs)) + 
 (4*CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(3*mt^4*(1 + xs)^5) - 
 (2*CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(mt^4*(1 + xs)^4) - 
 (4*CF*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^3) - 
 (4*CF*t1*Log[mu^2/mt^2]*Log[xs])/(3*mt^2*(1 + xs)^3) + 
 (CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(3*mt^4*(1 + xs)^3) + 
 (2*CF*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^2) + 
 (2*CF*t1*Log[mu^2/mt^2]*Log[xs])/(3*mt^2*(1 + xs)^2) + 
 (CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(6*mt^4*(1 + xs)^2) + 
 (CF*Log[mu^2/mt^2]*Log[xs])/(1 + xs) + (CF*t1*Log[mu^2/mt^2]*Log[xs])/
  (3*mt^2*(1 + xs)) + (CF*t1^2*Log[mu^2/mt^2]*Log[xs])/(12*mt^4*(1 + xs)) + 
 (14*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
 (56*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
  (3*mt^4*(1 + xs)^4) - 
 (112*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
  (3*mt^4*(1 + xs)^3) - (28*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
   Log[xs])/(3*(1 + xs)^2) - 
 (28*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
  (3*mt^2*(1 + xs)^2) + 
 (56*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
  (3*mt^4*(1 + xs)^2) + (28*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
   Log[xs])/(3*(1 + xs)) + 
 (28*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
  (3*mt^2*(1 + xs)) + 4*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
  Log[xs] + (16*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
  (3*mt^4*(1 + xs)^4) - 
 (32*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
  (3*mt^4*(1 + xs)^3) - (8*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[xs])/(3*(1 + xs)^2) - 
 (8*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
  (mt^2*(1 + xs)^2) + (16*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[xs])/(3*mt^4*(1 + xs)^2) + 
 (8*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/(3*(1 + xs)) + 
 (8*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
  (mt^2*(1 + xs)) + (4*CF*Log[1 - xs]*Log[xs])/3 - 
 (2*CF*Log[1 - xs]*Log[xs])/(1 - xs) - (2*CF*t1*Log[1 - xs]*Log[xs])/
  (3*mt^2*(1 - xs)) - (CF*t1^2*Log[1 - xs]*Log[xs])/(6*mt^4*(1 - xs)) - 
 (8*CF*t1^2*Log[1 - xs]*Log[xs])/(3*mt^4*(1 + xs)^5) + 
 (20*CF*t1^2*Log[1 - xs]*Log[xs])/(3*mt^4*(1 + xs)^4) + 
 (8*CF*Log[1 - xs]*Log[xs])/(3*(1 + xs)^3) + (8*CF*t1*Log[1 - xs]*Log[xs])/
  (3*mt^2*(1 + xs)^3) - (6*CF*t1^2*Log[1 - xs]*Log[xs])/(mt^4*(1 + xs)^3) - 
 (4*CF*Log[1 - xs]*Log[xs])/(1 + xs)^2 - (4*CF*t1*Log[1 - xs]*Log[xs])/
  (mt^2*(1 + xs)^2) + (7*CF*t1^2*Log[1 - xs]*Log[xs])/(3*mt^4*(1 + xs)^2) + 
 (2*CF*Log[1 - xs]*Log[xs])/(3*(1 + xs)) + (2*CF*t1*Log[1 - xs]*Log[xs])/
  (mt^2*(1 + xs)) - (CF*t1^2*Log[1 - xs]*Log[xs])/(6*mt^4*(1 + xs)) + 
 (36*CF*Log[xs]^2)/(1 - xs)^5 + (36*CF*t1*Log[xs]^2)/(mt^2*(1 - xs)^5) + 
 (9*CF*t1^2*Log[xs]^2)/(mt^4*(1 - xs)^5) - (90*CF*Log[xs]^2)/(1 - xs)^4 - 
 (90*CF*t1*Log[xs]^2)/(mt^2*(1 - xs)^4) - (45*CF*t1^2*Log[xs]^2)/
  (2*mt^4*(1 - xs)^4) + (226*CF*Log[xs]^2)/(3*(1 - xs)^3) + 
 (203*CF*t1*Log[xs]^2)/(3*mt^2*(1 - xs)^3) + 
 (57*CF*t1^2*Log[xs]^2)/(4*mt^4*(1 - xs)^3) - (23*CF*Log[xs]^2)/(1 - xs)^2 - 
 (23*CF*t1*Log[xs]^2)/(2*mt^2*(1 - xs)^2) + (9*CF*t1^2*Log[xs]^2)/
  (8*mt^4*(1 - xs)^2) + (53*CF*Log[xs]^2)/(6*(1 - xs)) + 
 (5*CF*t1*Log[xs]^2)/(3*mt^2*(1 - xs)) + (11*CF*t1^2*Log[xs]^2)/
  (48*mt^4*(1 - xs)) + (2*CF*t1^2*Log[xs]^2)/(3*mt^4*(1 + xs)^5) + 
 (5*CF*t1^2*Log[xs]^2)/(mt^4*(1 + xs)^4) - (2*CF*Log[xs]^2)/(3*(1 + xs)^3) + 
 (CF*t1*Log[xs]^2)/(mt^2*(1 + xs)^3) - (22*CF*t1^2*Log[xs]^2)/
  (3*mt^4*(1 + xs)^3) - (8*CF*Log[xs]^2)/(3*(1 + xs)^2) - 
 (13*CF*t1*Log[xs]^2)/(2*mt^2*(1 + xs)^2) - (2*CF*t1^2*Log[xs]^2)/
  (3*mt^4*(1 + xs)^2) + (7*CF*Log[xs]^2)/(6*(1 + xs)) + 
 (5*CF*t1*Log[xs]^2)/(3*mt^2*(1 + xs)) + (11*CF*t1^2*Log[xs]^2)/
  (48*mt^4*(1 + xs)) - 6*CF*Log[1 + xs] - (144*CF*Log[1 + xs])/(1 - xs)^4 - 
 (144*CF*t1*Log[1 + xs])/(mt^2*(1 - xs)^4) - (36*CF*t1^2*Log[1 + xs])/
  (mt^4*(1 - xs)^4) + (288*CF*Log[1 + xs])/(1 - xs)^3 + 
 (288*CF*t1*Log[1 + xs])/(mt^2*(1 - xs)^3) + (72*CF*t1^2*Log[1 + xs])/
  (mt^4*(1 - xs)^3) - (508*CF*Log[1 + xs])/(3*(1 - xs)^2) - 
 (416*CF*t1*Log[1 + xs])/(3*mt^2*(1 - xs)^2) - 
 (24*CF*t1^2*Log[1 + xs])/(mt^4*(1 - xs)^2) + 
 (76*CF*Log[1 + xs])/(3*(1 - xs)) - (16*CF*t1*Log[1 + xs])/
  (3*mt^2*(1 - xs)) - (12*CF*t1^2*Log[1 + xs])/(mt^4*(1 - xs)) - 
 (16*CF*t1^2*Log[1 + xs])/(3*mt^4*(1 + xs)^4) + 
 (32*CF*t1^2*Log[1 + xs])/(3*mt^4*(1 + xs)^3) + 
 (16*CF*Log[1 + xs])/(3*(1 + xs)^2) + (16*CF*t1*Log[1 + xs])/
  (3*mt^2*(1 + xs)^2) + (20*CF*t1^2*Log[1 + xs])/(3*mt^4*(1 + xs)^2) - 
 (16*CF*Log[1 + xs])/(3*(1 + xs)) - (16*CF*t1*Log[1 + xs])/
  (3*mt^2*(1 + xs)) - (12*CF*t1^2*Log[1 + xs])/(mt^4*(1 + xs)) - 
 (4*CF*Log[mu^2/mt^2]*Log[1 + xs])/3 - (8*CF*t1^2*Log[mu^2/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^4) + (16*CF*t1^2*Log[mu^2/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^3) + (8*CF*Log[mu^2/mt^2]*Log[1 + xs])/(3*(1 + xs)^2) + 
 (8*CF*t1*Log[mu^2/mt^2]*Log[1 + xs])/(3*mt^2*(1 + xs)^2) - 
 (8*CF*t1^2*Log[mu^2/mt^2]*Log[1 + xs])/(3*mt^4*(1 + xs)^2) - 
 (8*CF*Log[mu^2/mt^2]*Log[1 + xs])/(3*(1 + xs)) - 
 (8*CF*t1*Log[mu^2/mt^2]*Log[1 + xs])/(3*mt^2*(1 + xs)) - 
 (28*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
 (112*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^4) + 
 (224*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^3) + (56*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
   Log[1 + xs])/(3*(1 + xs)^2) + 
 (56*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^2*(1 + xs)^2) - 
 (112*CF*t1^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^2) - (56*CF*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
   Log[1 + xs])/(3*(1 + xs)) - 
 (56*CF*t1*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^2*(1 + xs)) - 8*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
  Log[1 + xs] - (32*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[1 + xs])/(3*mt^4*(1 + xs)^4) + 
 (64*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/
  (3*mt^4*(1 + xs)^3) + (16*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[1 + xs])/(3*(1 + xs)^2) + 
 (16*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/
  (mt^2*(1 + xs)^2) - (32*CF*t1^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[1 + xs])/(3*mt^4*(1 + xs)^2) - 
 (16*CF*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/
  (3*(1 + xs)) - (16*CF*t1*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
   Log[1 + xs])/(mt^2*(1 + xs)) - 10*CF*Log[xs]*Log[1 + xs] - 
 (80*CF*t1^2*Log[xs]*Log[1 + xs])/(3*mt^4*(1 + xs)^4) + 
 (160*CF*t1^2*Log[xs]*Log[1 + xs])/(3*mt^4*(1 + xs)^3) + 
 (44*CF*Log[xs]*Log[1 + xs])/(3*(1 + xs)^2) + (20*CF*t1*Log[xs]*Log[1 + xs])/
  (mt^2*(1 + xs)^2) - (80*CF*t1^2*Log[xs]*Log[1 + xs])/(3*mt^4*(1 + xs)^2) - 
 (44*CF*Log[xs]*Log[1 + xs])/(3*(1 + xs)) - (20*CF*t1*Log[xs]*Log[1 + xs])/
  (mt^2*(1 + xs)) + 10*CF*Log[1 + xs]^2 + (80*CF*t1^2*Log[1 + xs]^2)/
  (3*mt^4*(1 + xs)^4) - (160*CF*t1^2*Log[1 + xs]^2)/(3*mt^4*(1 + xs)^3) - 
 (44*CF*Log[1 + xs]^2)/(3*(1 + xs)^2) - (20*CF*t1*Log[1 + xs]^2)/
  (mt^2*(1 + xs)^2) + (80*CF*t1^2*Log[1 + xs]^2)/(3*mt^4*(1 + xs)^2) + 
 (44*CF*Log[1 + xs]^2)/(3*(1 + xs)) + (20*CF*t1*Log[1 + xs]^2)/
  (mt^2*(1 + xs)) - (4*CF*Log[xs]*Log[Cos[theta/2]])/(beta*Nc*(1 + xs)^4) - 
 (4*beta*CF*Log[xs]*Log[Cos[theta/2]])/(Nc*(1 + xs)^4) - 
 (24*CF*xs*Log[xs]*Log[Cos[theta/2]])/(beta*Nc*(1 + xs)^4) - 
 (24*beta*CF*xs*Log[xs]*Log[Cos[theta/2]])/(Nc*(1 + xs)^4) - 
 (8*CF*t1*xs*Log[xs]*Log[Cos[theta/2]])/(beta*mt^2*Nc*(1 + xs)^4) - 
 (8*beta*CF*t1*xs*Log[xs]*Log[Cos[theta/2]])/(mt^2*Nc*(1 + xs)^4) - 
 (40*CF*xs^2*Log[xs]*Log[Cos[theta/2]])/(beta*Nc*(1 + xs)^4) - 
 (40*beta*CF*xs^2*Log[xs]*Log[Cos[theta/2]])/(Nc*(1 + xs)^4) - 
 (16*CF*t1*xs^2*Log[xs]*Log[Cos[theta/2]])/(beta*mt^2*Nc*(1 + xs)^4) - 
 (16*beta*CF*t1*xs^2*Log[xs]*Log[Cos[theta/2]])/(mt^2*Nc*(1 + xs)^4) - 
 (8*CF*t1^2*xs^2*Log[xs]*Log[Cos[theta/2]])/(beta*mt^4*Nc*(1 + xs)^4) - 
 (8*beta*CF*t1^2*xs^2*Log[xs]*Log[Cos[theta/2]])/(mt^4*Nc*(1 + xs)^4) - 
 (24*CF*xs^3*Log[xs]*Log[Cos[theta/2]])/(beta*Nc*(1 + xs)^4) - 
 (24*beta*CF*xs^3*Log[xs]*Log[Cos[theta/2]])/(Nc*(1 + xs)^4) - 
 (8*CF*t1*xs^3*Log[xs]*Log[Cos[theta/2]])/(beta*mt^2*Nc*(1 + xs)^4) - 
 (8*beta*CF*t1*xs^3*Log[xs]*Log[Cos[theta/2]])/(mt^2*Nc*(1 + xs)^4) - 
 (4*CF*xs^4*Log[xs]*Log[Cos[theta/2]])/(beta*Nc*(1 + xs)^4) - 
 (4*beta*CF*xs^4*Log[xs]*Log[Cos[theta/2]])/(Nc*(1 + xs)^4) - 
 (14*CF*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
 (28*CF*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/(3*(1 + xs)^2) + 
 (28*CF*t1*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
  (3*mt^2*(1 + xs)^2) - 
 (28*CF*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/(3*(1 + xs)) - 
 (28*CF*t1*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
  (3*mt^2*(1 + xs)) + 
 (4*CF*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
 (8*CF*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/(3*(1 + xs)^2) - 
 (8*CF*t1*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
  (3*mt^2*(1 + xs)^2) - 
 (8*CF*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/(3*(1 + xs)) + 
 (8*CF*t1*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
  (3*mt^2*(1 + xs)) + (2*CA^2*CF*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (Nc*(1 + xs)^4) + (12*CA^2*CF*xs*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (Nc*(1 + xs)^4) + (4*CA^2*CF*t1*xs*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (mt^2*Nc*(1 + xs)^4) + (20*CA^2*CF*xs^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (Nc*(1 + xs)^4) + (8*CA^2*CF*t1*xs^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (mt^2*Nc*(1 + xs)^4) + 
 (4*CA^2*CF*t1^2*xs^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (mt^4*Nc*(1 + xs)^4) + (12*CA^2*CF*xs^3*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (Nc*(1 + xs)^4) + (4*CA^2*CF*t1*xs^3*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (mt^2*Nc*(1 + xs)^4) + (2*CA^2*CF*xs^4*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)])/
  (Nc*(1 + xs)^4) - (26*CF*PolyLog[2, -xs])/3 + 
 (144*CF*PolyLog[2, -xs])/(1 - xs)^5 + (144*CF*t1*PolyLog[2, -xs])/
  (mt^2*(1 - xs)^5) + (36*CF*t1^2*PolyLog[2, -xs])/(mt^4*(1 - xs)^5) - 
 (360*CF*PolyLog[2, -xs])/(1 - xs)^4 - (360*CF*t1*PolyLog[2, -xs])/
  (mt^2*(1 - xs)^4) - (90*CF*t1^2*PolyLog[2, -xs])/(mt^4*(1 - xs)^4) + 
 (904*CF*PolyLog[2, -xs])/(3*(1 - xs)^3) + (812*CF*t1*PolyLog[2, -xs])/
  (3*mt^2*(1 - xs)^3) + (57*CF*t1^2*PolyLog[2, -xs])/(mt^4*(1 - xs)^3) - 
 (92*CF*PolyLog[2, -xs])/(1 - xs)^2 - (46*CF*t1*PolyLog[2, -xs])/
  (mt^2*(1 - xs)^2) + (9*CF*t1^2*PolyLog[2, -xs])/(2*mt^4*(1 - xs)^2) + 
 (100*CF*PolyLog[2, -xs])/(3*(1 - xs)) + (6*CF*t1*PolyLog[2, -xs])/
  (mt^2*(1 - xs)) + (3*CF*t1^2*PolyLog[2, -xs])/(4*mt^4*(1 - xs)) + 
 (20*CF*t1*PolyLog[2, -xs])/(3*mt^2*(1 + xs)^3) + 
 (18*CF*t1^2*PolyLog[2, -xs])/(mt^4*(1 + xs)^3) - 
 (10*CF*t1*PolyLog[2, -xs])/(mt^2*(1 + xs)^2) - 
 (27*CF*t1^2*PolyLog[2, -xs])/(mt^4*(1 + xs)^2) - 
 (28*CF*PolyLog[2, -xs])/(3*(1 + xs)) - (34*CF*t1*PolyLog[2, -xs])/
  (3*mt^2*(1 + xs)) + (3*CF*t1^2*PolyLog[2, -xs])/(4*mt^4*(1 + xs)) + 
 (4*CF*PolyLog[2, xs])/3 - (2*CF*PolyLog[2, xs])/(1 - xs) - 
 (2*CF*t1*PolyLog[2, xs])/(3*mt^2*(1 - xs)) - 
 (CF*t1^2*PolyLog[2, xs])/(6*mt^4*(1 - xs)) - 
 (8*CF*t1^2*PolyLog[2, xs])/(3*mt^4*(1 + xs)^5) + 
 (20*CF*t1^2*PolyLog[2, xs])/(3*mt^4*(1 + xs)^4) + 
 (8*CF*PolyLog[2, xs])/(3*(1 + xs)^3) + (8*CF*t1*PolyLog[2, xs])/
  (3*mt^2*(1 + xs)^3) - (6*CF*t1^2*PolyLog[2, xs])/(mt^4*(1 + xs)^3) - 
 (4*CF*PolyLog[2, xs])/(1 + xs)^2 - (4*CF*t1*PolyLog[2, xs])/
  (mt^2*(1 + xs)^2) + (7*CF*t1^2*PolyLog[2, xs])/(3*mt^4*(1 + xs)^2) + 
 (2*CF*PolyLog[2, xs])/(3*(1 + xs)) + (2*CF*t1*PolyLog[2, xs])/
  (mt^2*(1 + xs)) - (CF*t1^2*PolyLog[2, xs])/(6*mt^4*(1 + xs)) - 
 (CF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc*(1 + xs)^4) - 
 (beta*CF*PolyLog[2, -(Tan[theta/2]^2/xs)])/(Nc*(1 + xs)^4) - 
 (6*CF*xs*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc*(1 + xs)^4) - 
 (6*beta*CF*xs*PolyLog[2, -(Tan[theta/2]^2/xs)])/(Nc*(1 + xs)^4) - 
 (2*CF*t1*xs*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*mt^2*Nc*(1 + xs)^4) - 
 (2*beta*CF*t1*xs*PolyLog[2, -(Tan[theta/2]^2/xs)])/(mt^2*Nc*(1 + xs)^4) - 
 (10*CF*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc*(1 + xs)^4) - 
 (10*beta*CF*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/(Nc*(1 + xs)^4) - 
 (4*CF*t1*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*mt^2*Nc*(1 + xs)^4) - 
 (4*beta*CF*t1*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/(mt^2*Nc*(1 + xs)^4) - 
 (2*CF*t1^2*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/
  (beta*mt^4*Nc*(1 + xs)^4) - 
 (2*beta*CF*t1^2*xs^2*PolyLog[2, -(Tan[theta/2]^2/xs)])/
  (mt^4*Nc*(1 + xs)^4) - (6*CF*xs^3*PolyLog[2, -(Tan[theta/2]^2/xs)])/
  (beta*Nc*(1 + xs)^4) - (6*beta*CF*xs^3*PolyLog[2, -(Tan[theta/2]^2/xs)])/
  (Nc*(1 + xs)^4) - (2*CF*t1*xs^3*PolyLog[2, -(Tan[theta/2]^2/xs)])/
  (beta*mt^2*Nc*(1 + xs)^4) - 
 (2*beta*CF*t1*xs^3*PolyLog[2, -(Tan[theta/2]^2/xs)])/(mt^2*Nc*(1 + xs)^4) - 
 (CF*xs^4*PolyLog[2, -(Tan[theta/2]^2/xs)])/(beta*Nc*(1 + xs)^4) - 
 (beta*CF*xs^4*PolyLog[2, -(Tan[theta/2]^2/xs)])/(Nc*(1 + xs)^4) + 
 (CF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc*(1 + xs)^4) + 
 (beta*CF*PolyLog[2, -(xs*Tan[theta/2]^2)])/(Nc*(1 + xs)^4) + 
 (6*CF*xs*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc*(1 + xs)^4) + 
 (6*beta*CF*xs*PolyLog[2, -(xs*Tan[theta/2]^2)])/(Nc*(1 + xs)^4) + 
 (2*CF*t1*xs*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*mt^2*Nc*(1 + xs)^4) + 
 (2*beta*CF*t1*xs*PolyLog[2, -(xs*Tan[theta/2]^2)])/(mt^2*Nc*(1 + xs)^4) + 
 (10*CF*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc*(1 + xs)^4) + 
 (10*beta*CF*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/(Nc*(1 + xs)^4) + 
 (4*CF*t1*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*mt^2*Nc*(1 + xs)^4) + 
 (4*beta*CF*t1*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/(mt^2*Nc*(1 + xs)^4) + 
 (2*CF*t1^2*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/
  (beta*mt^4*Nc*(1 + xs)^4) + 
 (2*beta*CF*t1^2*xs^2*PolyLog[2, -(xs*Tan[theta/2]^2)])/
  (mt^4*Nc*(1 + xs)^4) + (6*CF*xs^3*PolyLog[2, -(xs*Tan[theta/2]^2)])/
  (beta*Nc*(1 + xs)^4) + (6*beta*CF*xs^3*PolyLog[2, -(xs*Tan[theta/2]^2)])/
  (Nc*(1 + xs)^4) + (2*CF*t1*xs^3*PolyLog[2, -(xs*Tan[theta/2]^2)])/
  (beta*mt^2*Nc*(1 + xs)^4) + 
 (2*beta*CF*t1*xs^3*PolyLog[2, -(xs*Tan[theta/2]^2)])/(mt^2*Nc*(1 + xs)^4) + 
 (CF*xs^4*PolyLog[2, -(xs*Tan[theta/2]^2)])/(beta*Nc*(1 + xs)^4) + 
 (beta*CF*xs^4*PolyLog[2, -(xs*Tan[theta/2]^2)])/(Nc*(1 + xs)^4)

hsgg10 := 2*Nc*(4/9 + (23*Pi^2)/162 + Log[mu^2/mt^2]^2/3 + 
   (2*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) - 
   Log[mu^2/mt^2]^2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (2*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   Log[mu^2/mt^2]^2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   Log[mu^2/mt^2]^2/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   Log[mu^2/mt^2]^2/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (xs*Log[mu^2/mt^2]^2)/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   (xs*Log[mu^2/mt^2]^2)/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
   (4*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 + xs)^2) - (4*Log[mu^2/mt^2]^2)/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (4*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 + xs)) + (4*Log[mu^2/mt^2]^2)/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (1/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/27))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (mt^2*(2/27 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (mt^2*(4/27 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
   (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (27*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (27*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (27*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (27*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/(mt^2*(1 + xs)) + 
   (1/27 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/27 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/27))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (mt^2*(2/27 + (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (mt^2*(4/27 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (27*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (27*(1 - mt^2/M^2 + t1/M^2)) - 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (27*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (Log[mu^2/mt^2]*((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/(1 + xs)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/(mt^2*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (8*Log[xs])/27))/
    (1 + xs) - (26*Log[xs])/27 + (8*Log[mu^2/mt^2]*Log[xs])/(27*(1 - xs)) + 
   (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) - (8*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) - (8*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (32*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 + xs)^3) - (32*Log[mu^2/mt^2]*Log[xs])/
    (27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 + xs)) + (16*Log[mu^2/mt^2]*Log[xs])/
    (27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
   (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
   (5*Log[xs]^2)/27 + (Log[mu^2/mt^2]*(32/27 + (32*Log[xs])/27 - 
      (16*Log[1 + xs])/3))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 + xs)) + (Log[mu^2/mt^2]*(32/27 + (32*Log[xs])/27 - 
      (16*Log[1 + xs])/3))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 + xs)) + (Log[mu^2/mt^2]*(16/27 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (20*Log[xs])/27 - 
      (8*Log[1 + xs])/3))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(16/27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      (20*Log[xs])/27 - (8*Log[1 + xs])/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   Log[mu^2/mt^2]*(8/27 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (10*Log[xs])/27 - 
     (4*Log[1 + xs])/3) + 
   (Log[mu^2/mt^2]*(-4/27 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (13*Log[xs])/27 + 
      (2*Log[1 + xs])/3))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (Log[mu^2/mt^2]*(-4/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (13*Log[xs])/27 + 
      (2*Log[1 + xs])/3))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (xs*Log[mu^2/mt^2]*(-4/27 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (5*Log[xs])/27 + 
      (2*Log[1 + xs])/3))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (xs*Log[mu^2/mt^2]*(-4/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (5*Log[xs])/27 + 
      (2*Log[1 + xs])/3))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (4*Log[1 + xs])/3 - (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
     Log[1 + xs])/3 + (8*Log[1 + xs]^2)/3 + 
   (Log[mu^2/mt^2]*(-8/9 + 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (10*Log[xs])/9 + 
      4*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(-8/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (10*Log[xs])/9 + 
      4*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(-32/27 - (8*Log[xs])/9 + (16*Log[1 + xs])/3))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-32/27 - (8*Log[xs])/9 + (16*Log[1 + xs])/3))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3)/
    (1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*
     ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3))/
    (mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
     ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3))/
    (mt^2*(1 + xs)) + 
   (-Pi^2/162 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/162 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/81 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (22*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 + 
   (-Pi^2/162 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/162 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (-Pi^2/81 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (22*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 + 
   ((-2*Pi^2)/3 + (8*Log[xs])/3 - 2*Log[xs]^2 - (16*Log[1 + xs])/3 - 
     8*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^2) + ((-2*Pi^2)/3 + (8*Log[xs])/3 - 2*Log[xs]^2 - 
     (16*Log[1 + xs])/3 - 8*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
   ((-4*Pi^2)/9 - (4*Log[xs]^2)/3 - (16*PolyLog[2, -xs])/3)/(1 - xs)^3 + 
   (4*PolyLog[2, -xs])/3 - (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
   ((4*Pi^2)/9 + (4*Log[xs]^2)/3 + (16*PolyLog[2, -xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
   ((4*Pi^2)/9 + (4*Log[xs]^2)/3 + (16*PolyLog[2, -xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
   ((2*Pi^2)/3 - (8*Log[xs])/3 + 2*Log[xs]^2 + (16*Log[1 + xs])/3 + 
     8*PolyLog[2, -xs])/(1 - xs)^2 + 
   (64/27 - (34*Pi^2)/81 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - 
     (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
     (5*Log[xs]^2)/27 + (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 + (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
     (4*PolyLog[2, -xs])/3 - (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (80*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (64/27 - (34*Pi^2)/81 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - 
     (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
     (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
     (5*Log[xs]^2)/27 + (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 + (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
     (4*PolyLog[2, -xs])/3 - (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (80*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   ((16*Pi^2)/27 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      27 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
     (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((16*Pi^2)/27 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      27 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
     (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((5*Pi^2)/9 - (88*Log[xs])/27 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     Log[xs]^2/3 + (16*Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 - 
     (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   ((5*Pi^2)/9 - (88*Log[xs])/27 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     Log[xs]^2/3 + (16*Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 - 
     (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (34/27 + (29*Pi^2)/162 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
     (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27 - 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (34/27 + (29*Pi^2)/162 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
     (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27 - 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (-2/9 - Pi^2/324 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/6 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
     (13*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     (5*Log[xs]^2)/27 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 - Log[1 + xs]^2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
     (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
     (4*PolyLog[2, -xs])/3 + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (-2/9 - Pi^2/324 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/6 - 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
     (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     (5*Log[xs]^2)/27 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 - (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 - Log[1 + xs]^2 - 
     (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
     (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
     (4*PolyLog[2, -xs])/3 + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (xs*(-2/9 - (23*Pi^2)/324 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/6 + 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
      (26*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (5*Log[xs]^2)/54 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - Log[1 + xs]^2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
      (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
      (2*PolyLog[2, -xs])/3 + (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       9 + (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (xs*(-2/9 - (23*Pi^2)/324 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/
       2 + (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/6 - 
      (26*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (5*Log[xs]^2)/54 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 - (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - Log[1 + xs]^2 - 
      (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
      (2*PolyLog[2, -xs])/3 + (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       9 + (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   ((-7*Pi^2)/81 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (13*Log[xs]^2)/27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 + (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 + 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/(1 + xs) + 
   ((-7*Pi^2)/27 + (88*Log[xs])/27 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     Log[xs]^2/3 - (16*Log[1 + xs])/3 - (4*PolyLog[2, -xs])/3 + 
     (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/(1 - xs) + 
   ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
      27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
      27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-16/9 + (5*Pi^2)/81 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/3 + (26*Log[xs])/27 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (68*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
     (37*Log[xs]^2)/54 - (4*Log[1 + xs])/3 - 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
     (10*Log[1 + xs]^2)/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/
        mt^2)] - (11*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
     (10*PolyLog[2, -xs])/3 + (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
      27 + (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-16/9 + (5*Pi^2)/81 + (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/3 + 
     (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (26*Log[xs])/27 - 
     (68*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (37*Log[xs]^2)/54 - (4*Log[1 + xs])/3 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     (10*Log[1 + xs]^2)/3 - 
     (11*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     (10*PolyLog[2, -xs])/3 + (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
      27 + (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (-64/27 + Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[xs]^2)/27 - (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (-64/27 + Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[xs]^2)/27 - (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs])/3 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs])/3 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
   (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27) + 
 Nc*(31/3 - (31*Pi^2)/6 + 9*Log[mu^2/mt^2]^2 + (6*Log[mu^2/mt^2]^2)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (6*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (12*Log[mu^2/mt^2]^2)/(1 + xs)^4 + 
   (24*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^4) + 
   (12*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^4) - 
   (24*Log[mu^2/mt^2]^2)/(1 + xs)^3 - 
   (48*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^3) - 
   (24*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^3) + 
   (36*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) + 
   (12*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^2) + 
   (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 + xs)^2) + (12*Log[mu^2/mt^2]^2)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (12*Log[mu^2/mt^2]^2)/(1 + xs) - (12*M^2*(-(mt^2/M^2) - t1/M^2)*
     Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) - (12*Log[mu^2/mt^2]^2)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
   (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 + xs)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) + 
   (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (23*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)) + 
   3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (mt^2*(2/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) + 
   (1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*(1 - mt^2/M^2 + t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) + (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)^2) - 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)) - 
   9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (mt^2*(2/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (5*Log[xs])/6))/
    (1 + xs)^2 + 5*Log[xs] - (17*Log[mu^2/mt^2]*Log[xs])/(12*(1 - xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(6*mt^2*(1 - xs)) - 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/(12*mt^4*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) + (5*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) + (5*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^5) - 
   (8*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/
    (3*mt^2*(1 + xs)^5) - (4*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     Log[xs])/(3*mt^4*(1 + xs)^5) - (4*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) - 
   (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 + xs)^3) - (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/
    (12*mt^4*(1 + xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 + xs)) - (53*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
   (29*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/2 + 5*Log[xs]^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (32 - 42*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (121*Log[xs])/3 - 
      72*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (64/3 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (92*Log[xs])/3 - 
      48*Log[1 + xs]))/(mt^2*(1 + xs)^4) + 
   (Log[mu^2/mt^2]*(32/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (143*Log[xs])/12 - 
      24*Log[1 + xs]))/(1 + xs) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (79*Log[xs])/6 - 
      24*Log[1 + xs]))/(mt^4*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 14*Log[xs] - 
      24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 14*Log[xs] - 
      24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 + xs)^2) + (Log[mu^2/mt^2]*
     (32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (46*Log[xs])/3 - 
      24*Log[1 + xs]))/(1 + xs)^4 + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (46*Log[xs])/3 - 
      24*Log[1 + xs]))/(mt^4*(1 + xs)^4) + 
   Log[mu^2/mt^2]*(8 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 10*Log[xs] - 
     18*Log[1 + xs]) + 
   (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      (20*Log[xs])/3 - 12*Log[1 + xs]))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (20*Log[xs])/3 - 12*Log[1 + xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 9*Log[1 + xs] + 
   18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
   30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
   6*Log[1 + xs]^2 + (xs*Log[mu^2/mt^2]*
     (-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/3 + 
      3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (xs*Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (5*Log[xs])/3 + 3*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + (Log[mu^2/mt^2]*(-4/3 + 
      3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (4*Log[xs])/3 + 
      3*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (4*Log[xs])/3 + 3*Log[1 + xs]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-32/3 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (79*Log[xs])/6 + 
      24*Log[1 + xs]))/(mt^2*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (37*Log[xs])/3 + 
      24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (37*Log[xs])/3 + 
      24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (-64/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 27*Log[xs] + 
      48*Log[1 + xs]))/(mt^4*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(-64/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (77*Log[xs])/3 + 
      48*Log[1 + xs]))/(1 + xs)^3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-128/3 + 48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (166*Log[xs])/3 + 
      96*Log[1 + xs]))/(mt^2*(1 + xs)^3) + 
   (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (19*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
   (-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (-Pi^2/9 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 - 
   (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/2 + 
   (-30*Pi^2 + 72*Log[xs] - 90*Log[xs]^2 - 144*Log[1 + xs] - 
     360*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^4) + (-30*Pi^2 + 72*Log[xs] - 90*Log[xs]^2 - 144*Log[1 + xs] - 
     360*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^4) + ((-119*Pi^2)/4 + 180*Log[xs] - (357*Log[xs]^2)/4 - 
     360*Log[1 + xs] - 357*PolyLog[2, -xs])/(1 - xs)^3 + 
   (-15*Pi^2 - 45*Log[xs]^2 - 180*PolyLog[2, -xs])/(1 - xs)^5 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-15*Pi^2 + 36*Log[xs] - 45*Log[xs]^2 - 
      72*Log[1 + xs] - 180*PolyLog[2, -xs]))/(mt^2*(1 - xs)^4) + 
   (12 - (15*Pi^2)/2 + 84*Log[xs] - (45*Log[xs]^2)/2 - 168*Log[1 + xs] - 
     90*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^2) + (12 - (15*Pi^2)/2 + 84*Log[xs] - (45*Log[xs]^2)/2 - 
     168*Log[1 + xs] - 90*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*((-19*Pi^2)/4 + 36*Log[xs] - 
      (57*Log[xs]^2)/4 - 72*Log[1 + xs] - 57*PolyLog[2, -xs]))/
    (mt^4*(1 - xs)^3) + (M^2*(-(mt^2/M^2) - t1/M^2)*
     (6 - (15*Pi^2)/4 + 42*Log[xs] - (45*Log[xs]^2)/4 - 84*Log[1 + xs] - 
      45*PolyLog[2, -xs]))/(mt^2*(1 - xs)^2) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3*Pi^2 - 9*Log[xs]^2 - 
      36*PolyLog[2, -xs]))/(mt^4*(1 - xs)^5) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3 - (3*Pi^2)/8 - 12*Log[xs] - 
      (9*Log[xs]^2)/8 + 24*Log[1 + xs] - (9*PolyLog[2, -xs])/2))/
    (mt^4*(1 - xs)^2) + 18*PolyLog[2, -xs] + 
   (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(6*Pi^2 + 18*Log[xs]^2 + 72*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^5) + (-15 + (57*Pi^2)/8 - 96*Log[xs] + (171*Log[xs]^2)/8 + 
     192*Log[1 + xs] + (171*PolyLog[2, -xs])/2)/(1 - xs)^2 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*((15*Pi^2)/2 - 18*Log[xs] + 
      (45*Log[xs]^2)/2 + 36*Log[1 + xs] + 90*PolyLog[2, -xs]))/
    (mt^4*(1 - xs)^4) + (12*Pi^2 + 36*Log[xs]^2 + 144*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^5) + 
   (12*Pi^2 + 36*Log[xs]^2 + 144*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^5) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((25*Pi^2)/2 - 72*Log[xs] + (75*Log[xs]^2)/2 + 
      144*Log[1 + xs] + 150*PolyLog[2, -xs]))/(mt^2*(1 - xs)^3) + 
   (25*Pi^2 - 144*Log[xs] + 75*Log[xs]^2 + 288*Log[1 + xs] + 
     300*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^3) + (25*Pi^2 - 144*Log[xs] + 75*Log[xs]^2 + 288*Log[1 + xs] + 
     300*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^3) + ((75*Pi^2)/2 - 90*Log[xs] + (225*Log[xs]^2)/2 + 
     180*Log[1 + xs] + 450*PolyLog[2, -xs])/(1 - xs)^4 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-256/3 + (305*Pi^2)/9 - 62*Log[xs] + 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (38*Log[xs]^2)/3 + 96*Log[1 + xs] - 
      96*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      96*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      36*PolyLog[2, -xs] - (44*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^2*(1 + xs)^3) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (-128/3 + (33*Pi^2)/2 - (89*Log[xs])/3 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 6*Log[xs]^2 + 
      48*Log[1 + xs] - 48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - 18*PolyLog[2, -xs] - 6*(-(Log[1 - xs]*Log[xs]) - 
        PolyLog[2, xs])))/(mt^4*(1 + xs)^3) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((16*Pi^2)/9 - (16*Log[xs])/3 - 
      (4*Log[xs]^2)/3 - (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^2*(1 + xs)^5) + (64/3 + (133*Pi^2)/18 - (281*Log[xs])/3 + 
     (76*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (76*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (10*Log[xs]^2)/3 + 48*Log[1 + xs] - 
     48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     18*PolyLog[2, -xs] - (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^3 + 
   (15 - (377*Pi^2)/144 + (67*Log[xs])/12 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
     (547*Log[xs]^2)/48 - 12*Log[1 + xs] - (171*PolyLog[2, -xs])/4 - 
     (17*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/6)/(1 - xs) + 
   ((8*Pi^2)/9 - (104*Log[xs])/3 - (2*Log[xs]^2)/3 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^5 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*((8*Pi^2)/9 - (8*Log[xs])/3 - 
      (2*Log[xs]^2)/3 - (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^4*(1 + xs)^5) + ((2*Pi^2)/3 - 8*Log[xs] + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((2*Pi^2)/3 - 8*Log[xs] + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
      3 - (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-46/3 + (515*Pi^2)/72 + 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (155*Log[xs])/6 + 
      (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
      (107*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
      (131*Log[xs]^2)/24 + 48*Log[1 + xs] - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      (39*PolyLog[2, -xs])/2 - (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
       3))/(mt^2*(1 + xs)) + (-38/3 + (175*Pi^2)/36 - 
     (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     11*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 5*Log[xs] + 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
     (67*Log[xs]^2)/12 + 9*Log[1 + xs] - 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     3*Log[1 + xs]^2 + 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     21*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (-38/3 + (175*Pi^2)/36 + 11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
     9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 5*Log[xs] + 
     10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (67*Log[xs]^2)/12 + 9*Log[1 + xs] - 
     18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     3*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     21*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-101/3 + (59*Pi^2)/12 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      3 + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (215*Log[xs])/6 - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     20*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 4*Log[xs]^2 - 
     36*Log[1 + xs] + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + xs]^2 - 
     (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     3*PolyLog[2, -xs] + 28*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
     (5*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^2 + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-40/3 + (64*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - (10*Log[xs])/3 + 
     (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (37*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (3*Log[xs]^2)/2 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (-40/3 + (64*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - (10*Log[xs])/3 + 
     (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (3*Log[xs]^2)/2 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-6 + (19*Pi^2)/72 - (35*Log[xs])/6 - 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
      (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
      (29*Log[xs]^2)/24 + 12*Log[1 + xs] + (9*PolyLog[2, -xs])/2 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/(mt^2*(1 - xs)) + 
   (-2 + (49*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (5*Log[xs]^2)/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (3*Log[1 + xs]^2)/2 + 
     (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     6*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (-2 + (49*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
     3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     6*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (34/3 - (77*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (34/3 - (77*Pi^2)/18 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      3 - (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(55/3 - (235*Pi^2)/36 + (119*Log[xs])/6 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (22*Log[xs]^2)/3 - 36*Log[1 + xs] + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      27*PolyLog[2, -xs] + (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^4*(1 + xs)^2) + (-12 + (22*Pi^2)/9 - (35*Log[xs])/3 + 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (67*Log[xs]^2)/6 + 24*Log[1 + xs] + 42*PolyLog[2, -xs] + 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (-12 + (22*Pi^2)/9 - (35*Log[xs])/3 - 
     (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (67*Log[xs]^2)/6 + 
     24*Log[1 + xs] + 42*PolyLog[2, -xs] + 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (40/3 - (73*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 12*Log[xs] - 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (40/3 - (73*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 12*Log[xs] - 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (-32/3 - (56*Pi^2)/9 + (296*Log[xs])/3 - 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
     (7*Log[xs]^2)/3 - 24*Log[1 + xs] + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^4 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(64/3 - (92*Pi^2)/9 + (56*Log[xs])/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (5*Log[xs]^2)/3 - 24*Log[1 + xs] + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^4*(1 + xs)^4) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(58 - (403*Pi^2)/18 - 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (167*Log[xs])/3 - 
      30*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      42*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (47*Log[xs]^2)/3 - 96*Log[1 + xs] + 
      60*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      84*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      54*PolyLog[2, -xs] + (26*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
     (128/3 - (184*Pi^2)/9 + (112*Log[xs])/3 - 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (10*Log[xs]^2)/3 - 48*Log[1 + xs] + 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      (40*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^4) + 
   2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3 - Pi^2/144 - (73*Log[xs])/12 - 
      (11*Log[xs]^2)/48 + 12*Log[1 + xs] - (3*PolyLog[2, -xs])/4 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6))/(mt^4*(1 - xs)) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3 - Pi^2/144 - (73*Log[xs])/12 - 
      (11*Log[xs]^2)/48 + 12*Log[1 + xs] - (3*PolyLog[2, -xs])/4 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6))/(mt^4*(1 + xs)) + 
   (23 - (977*Pi^2)/144 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (27*Log[xs])/4 - 
     (35*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
     (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
     (101*Log[xs]^2)/48 + 12*Log[1 + xs] + 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + xs]^2 + (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
      3 + 25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     (45*PolyLog[2, -xs])/4 - 24*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6)/(1 + xs) + 
   (xs*(-2 + (31*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/6 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (3*Log[1 + xs]^2)/2 + 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      3*PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      3*PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
 ((-4 + Nc^2)*(4 - (31*Pi^2)/18 + 3*Log[mu^2/mt^2]^2 + 
    (6*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
    (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (6*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) - (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)) + (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
    (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
    (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
        mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
    (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
    6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)) + 
    (1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
    (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
    (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*(1 - mt^2/M^2 + t1/M^2)) - 
    (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
        mt^2)) + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    (Log[mu^2/mt^2]*(-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(1 + xs)^2 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)^2) + 
    (Log[mu^2/mt^2]*(6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - Log[xs]/3))/(1 + xs) - 
    (8*Log[xs])/3 - (Log[mu^2/mt^2]*Log[xs])/(3*(1 - xs)) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 - xs)) + (Log[mu^2/mt^2]*Log[xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
      (1 - xs)) + (Log[mu^2/mt^2]*Log[xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^3) + (4*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 + xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) - 
    (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
    (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
    (5*Log[xs]^2)/3 + (Log[mu^2/mt^2]*
      (32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (41*Log[xs])/3 - 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (41*Log[xs])/3 - 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    Log[mu^2/mt^2]*(8/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      (10*Log[xs])/3 - 6*Log[1 + xs]) + 6*Log[1 + xs] - 
    12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
    12*Log[1 + xs]^2 + (xs*Log[mu^2/mt^2]*
      (-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/3 + 
       3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
           mt^2] - (5*Log[xs])/3 + 3*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2) + (Log[mu^2/mt^2]*
      (-8 + 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 10*Log[xs] + 
       18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 14*Log[xs] + 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) + (Log[mu^2/mt^2]*(-32/3 + 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 14*Log[xs] + 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)^2) + (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/
     (1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
     (mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
     (mt^2*(1 + xs)) + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/6 + 
    (-3*Pi^2 + 12*Log[xs] - 9*Log[xs]^2 - 24*Log[1 + xs] - 
      36*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)^2) + (-3*Pi^2 + 12*Log[xs] - 9*Log[xs]^2 - 24*Log[1 + xs] - 
      36*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 - xs)^2) + (-2*Pi^2 - 6*Log[xs]^2 - 24*PolyLog[2, -xs])/(1 - xs)^3 + 
    6*PolyLog[2, -xs] - (35*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
    (2*Pi^2 + 6*Log[xs]^2 + 24*PolyLog[2, -xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
    (2*Pi^2 + 6*Log[xs]^2 + 24*PolyLog[2, -xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
    (3*Pi^2 - 12*Log[xs] + 9*Log[xs]^2 + 24*Log[1 + xs] + 36*PolyLog[2, -xs])/
     (1 - xs)^2 + (-64/3 + 9*Pi^2 + 
      (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2/3 - 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-64/3 + 9*Pi^2 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2/3 - 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-16 + (191*Pi^2)/36 + (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/3 - 
      (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (47*Log[xs]^2)/12 - 6*Log[1 + xs] + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      15*Log[1 + xs]^2 - 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      15*PolyLog[2, -xs] + (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (-16 + (191*Pi^2)/36 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - 9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/3 + 
      10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (47*Log[xs]^2)/12 - 6*Log[1 + xs] - 
      18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      15*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      15*PolyLog[2, -xs] + (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
    ((13*Pi^2)/18 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (4*Log[xs]^2)/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 6*PolyLog[2, -xs] - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs) + 
    (-Pi^2/3 + (34*Log[xs])/3 + (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[xs])/3 + (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       3 - (3*Log[xs]^2)/2 - 24*Log[1 + xs] - 6*PolyLog[2, -xs] - 
      (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 - xs) + 
    (-2 + (17*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      6*PolyLog[2, -xs] + 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (-2 + (17*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
      (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      6*PolyLog[2, -xs] + 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (34/3 - (79*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (34/3 - (79*Pi^2)/18 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    ((-34*Log[xs])/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (3*Log[xs]^2)/2 + 
      24*Log[1 + xs] + 6*PolyLog[2, -xs] + 
      2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
    ((-34*Log[xs])/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (3*Log[xs]^2)/2 + 
      24*Log[1 + xs] + 6*PolyLog[2, -xs] + 
      2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    ((-2*Pi^2)/3 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
    ((-2*Pi^2)/3 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
    (64/3 - (149*Pi^2)/18 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (41*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 6*PolyLog[2, -xs] + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (64/3 - (149*Pi^2)/18 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (41*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 6*PolyLog[2, -xs] + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3 + 
    (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
        3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
       3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
       (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
       (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] + 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*(-2 + (31*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
       (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] + 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)))/Nc - 
 ((-4 + Nc^2)*(-1 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (-4*beta*CF*Nc*Log[(t1*u1)/(M^2*mt^2)] + 4*Log[xs]*Log[Cos[theta/2]] + 
    4*beta^2*Log[xs]*Log[Cos[theta/2]] - 
    2*beta*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
    (1 + beta^2)*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    beta^2*PolyLog[2, -(xs*Tan[theta/2]^2)]))/(2*beta*Nc^2) + 
 ((3 + 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 4/(1 + xs)^4 + 
    (8*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^4) + 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^4) - 8/(1 + xs)^3 - 
    (16*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^3) - 
    (8*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^3) + 
    (12*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^2) + 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^2) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 4/(1 + xs) - 
    (4*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (-4*beta*CF*Nc*Log[(t1*u1)/(M^2*mt^2)] + 4*Log[xs]*Log[Cos[theta/2]] + 
    4*beta^2*Log[xs]*Log[Cos[theta/2]] - 
    2*beta*Nc^2*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
    (1 + beta^2)*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    beta^2*PolyLog[2, -(xs*Tan[theta/2]^2)]))/(2*beta) + 
 (2*CF*Nc*(-1/9 - 2/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    2/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    1/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (2*beta*Log[(t1*u1)/(M^2*mt^2)] + 4*Log[xs]*Log[Cos[theta/2]] + 
    4*beta^2*Log[xs]*Log[Cos[theta/2]] + (1 + beta^2)*
     PolyLog[2, -(Tan[theta/2]^2/xs)] - (1 + beta^2)*
     PolyLog[2, -(xs*Tan[theta/2]^2)]))/beta

hsqq22 := (2*(2*t1^2*xs^2 + 2*mt^2*t1*xs*(1 + xs)^2 + mt^4*(1 + xs)^2*
    (1 + 4*xs + xs^2))*(2352*beta^2 - 96*beta^2*nf - 5460*beta^2*Log[t1/u1] + 
   168*beta^2*nf*Log[t1/u1] + 2736*beta^2*Log[t1/u1]^2 - 
   7020*beta^2*Log[-(u1/(M*mt))] + 216*beta^2*nf*Log[-(u1/(M*mt))] + 
   6048*beta^2*Log[t1/u1]*Log[-(u1/(M*mt))] + 
   3888*beta^2*Log[-(u1/(M*mt))]^2 - 195*beta*Log[xs] - 195*beta^3*Log[xs] + 
   6*beta*nf*Log[xs] + 6*beta^3*nf*Log[xs] + 168*beta*Log[t1/u1]*Log[xs] + 
   168*beta^3*Log[t1/u1]*Log[xs] + 216*beta*Log[-(u1/(M*mt))]*Log[xs] + 
   216*beta^3*Log[-(u1/(M*mt))]*Log[xs] + 3*Log[xs]^2 + 6*beta^2*Log[xs]^2 + 
   3*beta^4*Log[xs]^2))/(81*beta^2*mt^4*(1 + xs)^4)

hsqq21 := (CF*(4*beta*CF*Nc + 8*beta*Log[-(t1/(M*mt))] - 
    4*beta*CA^2*Log[-(t1/(M*mt))] - 8*beta*Log[-(u1/(M*mt))] - Log[xs] - 
    beta^2*Log[xs])*(34/3 - (4*Pi^2)/9 - (8*Log[mu^2/mt^2]^2)/3 - 
    (16*Log[mu^2/mt^2]^2)/(3*(1 + xs)^4) - 
    (32*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(3*mt^2*(1 + xs)^4) - 
    (16*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(3*mt^4*(1 + xs)^4) + 
    (32*Log[mu^2/mt^2]^2)/(3*(1 + xs)^3) + 
    (64*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(3*mt^2*(1 + xs)^3) + 
    (32*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(3*mt^4*(1 + xs)^3) - 
    (16*Log[mu^2/mt^2]^2)/(3*(1 + xs)^2) - 
    (16*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) - 
    (16*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(3*mt^4*(1 + xs)^2) + 
    (16*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(3*mt^2*(1 + xs)) + 
    (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
    (14*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (14*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) - 
    (14*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) - 
    (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
    (4*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^2*(1 - mt^2/M^2 + t1/M^2)) + 
    (4*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) - 
    (4*mt^2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
    (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(64/3 - (224*Log[xs])/3))/(mt^2*(1 + xs)^6) + 
    (32/3 - (112*Log[xs])/3)/(1 + xs)^6 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(32/3 - (112*Log[xs])/3))/
     (mt^4*(1 + xs)^6) + (10*Log[xs])/3 + (32*Log[xs])/(3*(1 + xs)^7) + 
    (64*M^2*(-(mt^2/M^2) - t1/M^2)*Log[xs])/(3*mt^2*(1 + xs)^7) + 
    (32*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[xs])/(3*mt^4*(1 + xs)^7) + 
    (3*Log[mu^2/mt^2]*Log[xs])/(4*(1 - xs)) - 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(6*mt^2*(1 - xs)) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/
     (12*mt^4*(1 - xs)) + (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^5) + 
    (8*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/
     (3*mt^2*(1 + xs)^5) + (4*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      Log[xs])/(3*mt^4*(1 + xs)^5) + (3*Log[mu^2/mt^2]*Log[xs])/
     (4*(1 + xs)) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/
     (12*mt^4*(1 + xs)) + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[xs])/3 + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (12 + 56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - Log[xs]/3 - 
       8*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (8 + (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 4*Log[xs] - 
       (16*Log[1 + xs])/3))/(mt^2*(1 + xs)^4) + 
    (Log[mu^2/mt^2]*(4 + (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 2*Log[xs] - 
       (8*Log[1 + xs])/3))/(1 + xs)^4 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      (4 + (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 2*Log[xs] - 
       (8*Log[1 + xs])/3))/(mt^4*(1 + xs)^4) + 
    (Log[mu^2/mt^2]*(4 + (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + Log[xs]/6 - 
       (8*Log[1 + xs])/3))/(1 + xs)^2 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      (4 + (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + Log[xs]/6 - 
       (8*Log[1 + xs])/3))/(mt^4*(1 + xs)^2) + 
    Log[mu^2/mt^2]*(2 + (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (4*Log[1 + xs])/3) - 6*Log[1 + xs] - 
    (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
    8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
    10*Log[1 + xs]^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (-4 - (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - Log[xs]/6 + 
       (8*Log[1 + xs])/3))/(mt^2*(1 + xs)) + 
    (Log[mu^2/mt^2]*(-8 - (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
        3 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + Log[xs]/3 + 
       (16*Log[1 + xs])/3))/(1 + xs)^3 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      (-8 - (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + Log[xs]/3 + 
       (16*Log[1 + xs])/3))/(mt^4*(1 + xs)^3) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (-16 - (224*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 2*Log[xs] + 
       (32*Log[1 + xs])/3))/(mt^2*(1 + xs)^3) - 
    (14*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
    (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*((-235*Pi^2)/18 + 72*Log[xs] - 
       (235*Log[xs]^2)/6 - 144*Log[1 + xs] - (470*PolyLog[2, -xs])/3))/
     (mt^2*(1 - xs)^3) + ((-15*Pi^2)/2 + 18*Log[xs] - (45*Log[xs]^2)/2 - 
      36*Log[1 + xs] - 90*PolyLog[2, -xs])/(1 - xs)^4 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*((-15*Pi^2)/2 + 18*Log[xs] - 
       (45*Log[xs]^2)/2 - 36*Log[1 + xs] - 90*PolyLog[2, -xs]))/
     (mt^4*(1 - xs)^4) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (-6*Pi^2 - 18*Log[xs]^2 - 72*PolyLog[2, -xs]))/(mt^2*(1 - xs)^5) + 
    (3 - (83*Pi^2)/24 + (82*Log[xs])/3 - (83*Log[xs]^2)/8 - 
      (164*Log[1 + xs])/3 - (83*PolyLog[2, -xs])/2)/(1 - xs)^2 + 
    (4*PolyLog[2, -xs])/3 - 10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3 + (3*Pi^2)/8 + 12*Log[xs] + 
       (9*Log[xs]^2)/8 - 24*Log[1 + xs] + (9*PolyLog[2, -xs])/2))/
     (mt^4*(1 - xs)^2) + (3*Pi^2 + 9*Log[xs]^2 + 36*PolyLog[2, -xs])/
     (1 - xs)^5 + (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3*Pi^2 + 9*Log[xs]^2 + 
       36*PolyLog[2, -xs]))/(mt^4*(1 - xs)^5) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-6 + (55*Pi^2)/12 - (136*Log[xs])/3 + 
       (55*Log[xs]^2)/4 + (272*Log[1 + xs])/3 + 55*PolyLog[2, -xs]))/
     (mt^2*(1 - xs)^2) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
      ((19*Pi^2)/4 - 36*Log[xs] + (57*Log[xs]^2)/4 + 72*Log[1 + xs] + 
       57*PolyLog[2, -xs]))/(mt^4*(1 - xs)^3) + 
    ((263*Pi^2)/36 - 36*Log[xs] + (263*Log[xs]^2)/12 + 72*Log[1 + xs] + 
      (263*PolyLog[2, -xs])/3)/(1 - xs)^3 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(15*Pi^2 - 36*Log[xs] + 45*Log[xs]^2 + 
       72*Log[1 + xs] + 180*PolyLog[2, -xs]))/(mt^2*(1 - xs)^4) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(96 + (44*Pi^2)/9 - (184*Log[xs])/3 + 
       (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
       10*Log[xs]^2 - (32*Log[1 + xs])/3 - 
       (224*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (160*Log[1 + xs]^2)/3 + (160*PolyLog[2, -xs])/3 - 
       (160*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
       (40*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^4) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(146/3 - (2*Pi^2)/3 + 
       (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - (11*Log[xs])/3 + 
       (140*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (56*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
       (31*Log[xs]^2)/6 + 8*Log[1 + xs] - 
       (280*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (112*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (220*Log[1 + xs]^2)/3 - 
       (28*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
       (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
       (88*PolyLog[2, -xs])/3 - (220*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
        3 - (26*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^2*(1 + xs)^2) + (128/3 + (22*Pi^2)/9 - (52*Log[xs])/3 + 
      (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      5*Log[xs]^2 - (16*Log[1 + xs])/3 - 
      (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      (80*Log[1 + xs]^2)/3 + (80*PolyLog[2, -xs])/3 - 
      (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^4 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(128/3 + (22*Pi^2)/9 - (52*Log[xs])/3 + 
       (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
       5*Log[xs]^2 - (16*Log[1 + xs])/3 - 
       (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (80*Log[1 + xs]^2)/3 + (80*PolyLog[2, -xs])/3 - 
       (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
       (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^4*(1 + xs)^4) + 
    (19 + Pi^2/36 + (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - (21*Log[xs])/2 + 
      (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (19*Log[xs]^2)/6 + (20*Log[1 + xs])/3 - 
      (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      32*Log[1 + xs]^2 + (16*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/
           mt^2)])/3 + 15*PolyLog[2, -xs] - 
      32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^2 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(41/3 - (5*Pi^2)/4 - (5*Log[xs])/2 + 
       (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (2*Log[xs]^2)/3 + (20*Log[1 + xs])/3 - 
       (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (80*Log[1 + xs]^2)/3 - PolyLog[2, -xs]/3 - 
       (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
       (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^4*(1 + xs)^2) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3 + Pi^2/144 + (73*Log[xs])/12 + 
       (11*Log[xs]^2)/48 - 12*Log[1 + xs] + (3*PolyLog[2, -xs])/4 + 
       (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/6))/(mt^4*(1 - xs)) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3 + Pi^2/144 + (73*Log[xs])/12 + 
       (11*Log[xs]^2)/48 - 12*Log[1 + xs] + (3*PolyLog[2, -xs])/4 + 
       (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/6))/(mt^4*(1 + xs)) + 
    (-3 + (265*Pi^2)/144 - (37*Log[xs])/4 + (355*Log[xs]^2)/48 + 
      (56*Log[1 + xs])/3 + (337*PolyLog[2, -xs])/12 + 
      (3*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/2)/(1 - xs) + 
    (-25/3 - (103*Pi^2)/144 - (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
      (97*Log[xs])/12 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[xs])/3 - (13*Log[xs]^2)/48 - 12*Log[1 + xs] + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (16*Log[1 + xs]^2)/3 - 
      (16*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      (31*PolyLog[2, -xs])/12 + (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       3 + (3*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/2)/(1 + xs) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-50/3 + (5*Pi^2)/8 - 
       (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + (17*Log[xs])/2 - 
       (28*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
       (29*Log[xs]^2)/24 - (56*Log[1 + xs])/3 + 
       (56*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
       20*Log[1 + xs]^2 + (28*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/
            mt^2)])/3 - (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
        3 - (43*PolyLog[2, -xs])/6 + 20*(Log[xs]*Log[1 + xs] + 
         PolyLog[2, -xs]) + (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^2*(1 + xs)) + (-32 - (8*Pi^2)/9 + (136*Log[xs])/3 + 
      (2*Log[xs]^2)/3 + (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + xs)^5 + (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-32 - (8*Pi^2)/9 + 
       (136*Log[xs])/3 + (2*Log[xs]^2)/3 + 
       (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^4*(1 + xs)^5) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-64 - (16*Pi^2)/9 + (304*Log[xs])/3 + 
       (4*Log[xs]^2)/3 + (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^2*(1 + xs)^5) + (-32 - (3*Pi^2)/2 + Log[xs]/3 - 
      (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      9*Log[xs]^2 + (32*Log[1 + xs])/3 + 
      (224*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (160*Log[1 + xs]^2)/3 - 42*PolyLog[2, -xs] + 
      (160*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      6*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/(1 + xs)^3 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-32 - (17*Pi^2)/18 - 5*Log[xs] - 
       (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (22*Log[xs]^2)/3 + (32*Log[1 + xs])/3 + 
       (224*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (160*Log[1 + xs]^2)/3 - (106*PolyLog[2, -xs])/3 + 
       (160*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
       6*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])))/(mt^4*(1 + xs)^3) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-256/3 - (10*Pi^2)/3 + (26*Log[xs])/3 - 
       (224*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (47*Log[xs]^2)/3 + (64*Log[1 + xs])/3 + 
       (448*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (128*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (320*Log[1 + xs]^2)/3 - (232*PolyLog[2, -xs])/3 + 
       (320*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
       (44*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^3) - 
    (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(6 - (19*Pi^2)/72 + (55*Log[xs])/6 - 
       (29*Log[xs]^2)/24 - (56*Log[1 + xs])/3 - (9*PolyLog[2, -xs])/2 + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/(mt^2*(1 - xs))))/
  (beta*Nc) + (2*(2*t1^2*xs^2 + 2*mt^2*t1*xs*(1 + xs)^2 + 
    mt^4*(1 + xs)^2*(1 + 4*xs + xs^2))*(4704*beta^2 - 320*beta^2*nf + 
    90*beta*Pi^2 - 468*beta^2*Pi^2 + 90*beta^3*Pi^2 - 
    11256*beta^2*Log[t1/u1] + 560*beta^2*nf*Log[t1/u1] + 
    504*beta^2*Pi^2*Log[t1/u1] - 14472*beta^2*Log[-(u1/(M*mt))] + 
    720*beta^2*nf*Log[-(u1/(M*mt))] + 648*beta^2*Pi^2*Log[-(u1/(M*mt))] + 
    4704*beta^2*Log[(t1*u1)/(M^2*mt^2)] - 192*beta^2*nf*
     Log[(t1*u1)/(M^2*mt^2)] - 2688*beta^2*Log[t1/u1]*
     Log[(t1*u1)/(M^2*mt^2)] - 3456*beta^2*Log[-(u1/(M*mt))]*
     Log[(t1*u1)/(M^2*mt^2)] + 108*Log[xs] - 402*beta*Log[xs] + 
    216*beta^2*Log[xs] - 402*beta^3*Log[xs] + 108*beta^4*Log[xs] + 
    20*beta*nf*Log[xs] + 20*beta^3*nf*Log[xs] + 45*Pi^2*Log[xs] - 
    72*beta*Pi^2*Log[xs] + 90*beta^2*Pi^2*Log[xs] - 72*beta^3*Pi^2*Log[xs] + 
    45*beta^4*Pi^2*Log[xs] - 96*beta*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
    96*beta^3*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 108*beta*Log[xs]^2 + 
    216*beta^2*Log[xs]^2 - 108*beta^3*Log[xs]^2 - 18*Log[xs]^3 + 
    36*beta*Log[xs]^3 - 36*beta^2*Log[xs]^3 + 36*beta^3*Log[xs]^3 - 
    18*beta^4*Log[xs]^3 - 1176*beta*Log[xs]*Log[Cos[theta/2]] - 
    1176*beta^3*Log[xs]*Log[Cos[theta/2]] + 48*beta*nf*Log[xs]*
     Log[Cos[theta/2]] + 48*beta^3*nf*Log[xs]*Log[Cos[theta/2]] + 
    672*beta*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    672*beta^3*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta^3*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    24*Log[xs]^2*Log[Cos[theta/2]] + 48*beta^2*Log[xs]^2*Log[Cos[theta/2]] + 
    24*beta^4*Log[xs]^2*Log[Cos[theta/2]] - 54*(1 + beta^2)*
     (-2*beta + (1 + beta^2)*Log[xs])*PolyLog[2, 
      (-1 + beta)^2/(1 + beta)^2] - 108*beta*(-49*beta + 2*beta*nf + 
      28*beta*Log[t1/u1] + 36*beta*Log[-(u1/(M*mt))] + Log[xs] + 
      beta^2*Log[xs])*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
    294*beta*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    294*beta^3*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^3*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    168*beta*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    168*beta^3*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^2*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*beta^4*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    294*beta*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    294*beta^3*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^3*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    168*beta*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    168*beta^3*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^2*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*beta^4*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    54*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    108*beta^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    54*beta^4*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 54*Zeta[3] + 
    1836*beta^2*Zeta[3] - 54*beta^4*Zeta[3]))/(81*beta^2*mt^4*(1 + xs)^4)

hsgg22 := -260*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1] + 
 8*nf*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1] + 
 72*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]^2 + 
 40*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) - 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   4/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   4/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
   4/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
   4/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*Log[t1/u1]^2 + 
 144*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
  Log[-(u1/(M*mt))] - 
 (28*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
    2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
    1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*Log[xs])/
  beta - 28*beta*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*Log[xs] + 
 (5*(-1 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(1 + xs)^2 - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^2) + 2/(1 + xs) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)))*Log[t1/u1]*
   (-195*beta + 6*beta*nf + 108*beta*Log[t1/u1] + 
    216*beta*Log[-(u1/(M*mt))] + 6*Log[xs] + 6*beta^2*Log[xs]))/(9*beta) + 
 (5*(-1 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (2352*beta^2 - 96*beta^2*nf - 3510*beta^2*Log[t1/u1] + 
    108*beta^2*nf*Log[t1/u1] + 1512*beta^2*Log[t1/u1]^2 - 
    7020*beta^2*Log[-(u1/(M*mt))] + 216*beta^2*nf*Log[-(u1/(M*mt))] + 
    3888*beta^2*Log[t1/u1]*Log[-(u1/(M*mt))] + 
    3888*beta^2*Log[-(u1/(M*mt))]^2 - 195*beta*Log[xs] - 195*beta^3*Log[xs] + 
    6*beta*nf*Log[xs] + 6*beta^3*nf*Log[xs] + 108*beta*Log[t1/u1]*Log[xs] + 
    108*beta^3*Log[t1/u1]*Log[xs] + 216*beta*Log[-(u1/(M*mt))]*Log[xs] + 
    216*beta^3*Log[-(u1/(M*mt))]*Log[xs] + 3*Log[xs]^2 + 6*beta^2*Log[xs]^2 + 
    3*beta^4*Log[xs]^2))/(324*beta^2) + 
 ((-3 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 4/(1 + xs)^4 - 
    (8*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^4) - 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^4) + 8/(1 + xs)^3 + 
    (16*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^3) + 
    (8*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^3) - 
    (12*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^2) - 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^2) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 4/(1 + xs) + 
    (4*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (2352*beta^2 - 96*beta^2*nf - 3510*beta^2*Log[t1/u1] + 
    108*beta^2*nf*Log[t1/u1] + 2376*beta^2*Log[t1/u1]^2 - 
    7020*beta^2*Log[-(u1/(M*mt))] + 216*beta^2*nf*Log[-(u1/(M*mt))] + 
    3888*beta^2*Log[t1/u1]*Log[-(u1/(M*mt))] + 
    3888*beta^2*Log[-(u1/(M*mt))]^2 - 195*beta*Log[xs] - 195*beta^3*Log[xs] + 
    6*beta*nf*Log[xs] + 6*beta^3*nf*Log[xs] + 108*beta*Log[t1/u1]*Log[xs] + 
    108*beta^3*Log[t1/u1]*Log[xs] + 216*beta*Log[-(u1/(M*mt))]*Log[xs] + 
    216*beta^3*Log[-(u1/(M*mt))]*Log[xs] + 3*Log[xs]^2 + 6*beta^2*Log[xs]^2 + 
    3*beta^4*Log[xs]^2))/(36*beta^2) + 
 (4*(-1/9 - 2/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    2/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    1/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (294*beta^2 - 12*beta^2*nf + 108*beta^2*Log[t1/u1]^2 + 195*beta*Log[xs] + 
    195*beta^3*Log[xs] - 6*beta*nf*Log[xs] - 6*beta^3*nf*Log[xs] + 
    24*Log[xs]^2 + 48*beta^2*Log[xs]^2 + 24*beta^4*Log[xs]^2))/(9*beta^2)

hsgg21 := -536*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1] + 
 (80*nf*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
    2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
    1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1])/3 + 
 24*Pi^2*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1] - 
 128*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
  Log[(t1*u1)/(M^2*mt^2)] - 
 (112*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
    2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
    1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*Log[xs]*
   Log[Cos[theta/2]])/beta - 
 112*beta*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*Log[xs]*
  Log[Cos[theta/2]] - 
 72*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
  PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
 8*Nc*(-Log[-(t1/(M*mt))] + Log[-(u1/(M*mt))])*
  (4/3 + (23*Pi^2)/54 + Log[mu^2/mt^2]^2 + (2*Log[mu^2/mt^2]^2)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (3*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
   (2*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (3*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   Log[mu^2/mt^2]^2/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   Log[mu^2/mt^2]^2/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (2*Log[mu^2/mt^2]^2)/(1 + xs)^2 + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) - 
   (2*Log[mu^2/mt^2]^2)/(1 + xs) - (2*M^2*(-(mt^2/M^2) - t1/M^2)*
     Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) + 
   (mt^2*(-4/9 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (mt^2*(-4/9 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) + 
   (1/9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (23*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)) + 
   Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (mt^2*(2/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (mt^2*(4/9 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^3) + 
   (mt^2*(-4/9 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
   (mt^2*(-2/9 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (-1/9 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(-1/9 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 + 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2) + 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*(1 - mt^2/M^2 + t1/M^2)) - 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) - (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)^2) + 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)) - 
   2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
    Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
   5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (mt^2*(4/9 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (mt^2*(4/9 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(1 + xs)^4 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^4) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)^4) + 
   (Log[mu^2/mt^2]*(8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (16*Log[xs])/9))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - (26*Log[xs])/9 + 
   (4*Log[mu^2/mt^2]*Log[xs])/(9*(1 - xs)) - 
   (4*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(9*mt^2*(1 - xs)) + 
   (16*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) - (32*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) - 
   (16*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) + (32*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (16*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 + xs)) - (16*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) - 
   (58*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
   (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
   (5*Log[xs]^2)/9 + (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (16*Log[xs])/9))/
    (mt^2*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (16*Log[xs])/9))/
    (1 + xs)^3 + (Log[mu^2/mt^2]*
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (16*Log[xs])/9))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   ((-32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((-32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(8/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (10*Log[xs])/3 - 
      12*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(16/9 + (4*Log[xs])/3 - 8*Log[1 + xs]))/(1 + xs)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (16/9 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (4*Log[xs])/3 - 
      8*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(16/9 - 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (20*Log[xs])/9 - 
      8*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   Log[mu^2/mt^2]*(8/9 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (10*Log[xs])/9 - 
     4*Log[1 + xs]) + (xs*Log[mu^2/mt^2]*
     (4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (5*Log[xs])/9 - 
      2*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (13*Log[xs])/9 - 
      2*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   4*Log[1 + xs] + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
    Log[1 + xs] - 20*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
    Log[1 + xs] + 8*Log[1 + xs]^2 + 
   (Log[mu^2/mt^2]*(-4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (13*Log[xs])/9 + 
      2*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (xs*Log[mu^2/mt^2]*(-4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (5*Log[xs])/9 + 
      2*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-16/9 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (8*Log[xs])/3 + 
      8*Log[1 + xs]))/(mt^2*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-16/9 - 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (20*Log[xs])/9 + 
      8*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(-16/9 - 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (16*Log[xs])/9 + 
      8*Log[1 + xs]))/(1 + xs) + 
   (Log[mu^2/mt^2]*(-8/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (10*Log[xs])/3 + 
      12*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*
     (-16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^2*(1 + xs)^4) + (-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[xs] + 8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/(1 + xs)^4 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^4) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (-8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^2) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^3) + 
   (-Pi^2/54 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/54 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/27 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 - 
   (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
   ((-80*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (8*Log[xs]^2)/9 + 16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 - 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Pi^2/27 - (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (Pi^2/54 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(Pi^2/54 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   ((80*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (8*Log[xs]^2)/9 + 16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (16*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
   (-2*Pi^2 + 8*Log[xs] - 6*Log[xs]^2 - 16*Log[1 + xs] - 24*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^2) + 
   ((-4*Pi^2)/3 - 4*Log[xs]^2 - 16*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-Pi^2 + 4*Log[xs] - 3*Log[xs]^2 - 
      8*Log[1 + xs] - 12*PolyLog[2, -xs]))/(mt^2*(1 - xs)^2) + 
   ((-2*Pi^2)/3 - 2*Log[xs]^2 - 8*PolyLog[2, -xs])/(1 - xs)^3 + 
   4*PolyLog[2, -xs] - (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((2*Pi^2)/3 + 2*Log[xs]^2 + 
      8*PolyLog[2, -xs]))/(mt^2*(1 - xs)^3) + 
   (Pi^2 - 4*Log[xs] + 3*Log[xs]^2 + 8*Log[1 + xs] + 12*PolyLog[2, -xs])/
    (1 - xs)^2 + ((4*Pi^2)/3 + 4*Log[xs]^2 + 16*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
   (2*Pi^2 - 8*Log[xs] + 6*Log[xs]^2 + 16*Log[1 + xs] + 24*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
   ((19*Pi^2)/9 - (88*Log[xs])/9 + 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + Log[xs]^2 + 
     16*Log[1 + xs] + 4*PolyLog[2, -xs] - 
     (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (50/9 - (5*Pi^2)/27 - (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (11*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (26*Log[xs])/9 + 
     (68*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (37*Log[xs]^2)/18 + 4*Log[1 + xs] - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     10*Log[1 + xs]^2 + (11*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
      3 + 3*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     10*PolyLog[2, -xs] - (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(8/3 + (34*Pi^2)/27 - 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
      6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 
      4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 
      20*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      28*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (7*Log[xs]^2)/9 + 40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 56*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 16*Log[1 + xs]^2 + 
      (44*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
      (44*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 + 
      4*PolyLog[2, -xs] - 16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^2) + 
   (8/3 + (34*Pi^2)/27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (20*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (7*Log[xs]^2)/9 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 16*Log[1 + xs]^2 + 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
     (28*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     4*PolyLog[2, -xs] - 16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^2 + 
   ((-17*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (64*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (5*Log[xs]^2)/9 - 16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
     4*PolyLog[2, -xs] - (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   ((8*Pi^2)/9 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   ((8*Pi^2)/9 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (34/9 + (31*Pi^2)/54 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 - 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (xs*(2/3 + (23*Pi^2)/108 + (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^
         2)/2 - (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 
      Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
      (26*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      (5*Log[xs]^2)/18 - 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 3*Log[1 + xs]^2 + 
      (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 + 
      2*PolyLog[2, -xs] - (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((2*Pi^2)/9 - (44*Log[xs])/9 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      8*Log[1 + xs] - (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9))/(mt^2*(1 - xs)) + 
   (-2/3 - Pi^2/108 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
     (13*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (5*Log[xs]^2)/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - 3*Log[1 + xs]^2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
     (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
     4*PolyLog[2, -xs] + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (2/3 + Pi^2/108 + (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (5*Log[xs]^2)/9 - 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 3*Log[1 + xs]^2 + 
     (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
     (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 + 
     4*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   ((-5*Pi^2)/9 + (44*Log[xs])/9 - 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - Log[xs]^2 - 
     8*Log[1 + xs] - 4*PolyLog[2, -xs] + 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/(1 - xs) + 
   (xs*(-2/3 - (23*Pi^2)/108 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
      Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
      (26*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
      (5*Log[xs]^2)/18 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - 3*Log[1 + xs]^2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
      (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
      2*PolyLog[2, -xs] + (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-8/3 - (17*Pi^2)/27 + 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
      6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
      4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/9 + 
      (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
      (112*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
      (10*Log[xs]^2)/9 - 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - 16*Log[1 + xs]^2 - 
      (44*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
      (44*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
      8*PolyLog[2, -xs] + (152*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)) + 
   ((-14*Pi^2)/27 + (112*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      9 - (112*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (26*Log[xs]^2)/9 - 32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 8*PolyLog[2, -xs] + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/(1 + xs)^3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((-14*Pi^2)/27 + 
      32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (26*Log[xs]^2)/9 - 64*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 8*PolyLog[2, -xs] + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9))/(mt^2*(1 + xs)^3) + 
   ((-8*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   ((-8*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-34/9 - (31*Pi^2)/54 + (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      9 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
     (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   ((17*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (64*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (5*Log[xs]^2)/9 - 16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
     4*PolyLog[2, -xs] + (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (-8/3 - (8*Pi^2)/9 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/9 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     Log[xs]^2/3 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     16*Log[1 + xs]^2 - (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
      9 - (28*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     4*PolyLog[2, -xs] + (152*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (40*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/(1 + xs) + 
   (-50/9 + (5*Pi^2)/27 + (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (26*Log[xs])/9 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (68*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (37*Log[xs]^2)/18 - 4*Log[1 + xs] - 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     10*Log[1 + xs]^2 - 3*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     (11*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     10*PolyLog[2, -xs] + (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   ((-19*Pi^2)/9 + (88*Log[xs])/9 - 
     (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - Log[xs]^2 - 
     16*Log[1 + xs] - 4*PolyLog[2, -xs] + 
     (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9) + 
 (4*CF*Nc*(2*beta + Log[xs] + beta^2*Log[xs])*(4/9 + (23*Pi^2)/162 + 
    Log[mu^2/mt^2]^2/3 + (2*Log[mu^2/mt^2]^2)/
     (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) - 
    Log[mu^2/mt^2]^2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (2*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    Log[mu^2/mt^2]^2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
    Log[mu^2/mt^2]^2/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    Log[mu^2/mt^2]^2/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
    (xs*Log[mu^2/mt^2]^2)/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    (xs*Log[mu^2/mt^2]^2)/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
    (4*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) - (4*Log[mu^2/mt^2]^2)/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (4*Log[mu^2/mt^2]^2)/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)) + (4*Log[mu^2/mt^2]^2)/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (1/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/27))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (mt^2*(2/27 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27))/
     (M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (mt^2*(4/27 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
    (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 - 
    (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (27*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (27*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
        mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (27*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
    (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (27*M^2*(-(mt^2/M^2) - t1/M^2)) + 
    Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/(mt^2*(1 + xs)) + 
    (1/27 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/27 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/27))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    (mt^2*(2/27 + (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
    (mt^2*(4/27 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
    (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (27*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
    (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (27*(1 - mt^2/M^2 + t1/M^2)) - 
    (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (27*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
        mt^2)) - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
    Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
    (Log[mu^2/mt^2]*((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/(1 + xs)^2 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (mt^2*(1 + xs)^2) + 
    (Log[mu^2/mt^2]*((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (8*Log[xs])/27))/
     (1 + xs) - (26*Log[xs])/27 + (8*Log[mu^2/mt^2]*Log[xs])/(27*(1 - xs)) + 
    (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 - xs)) - (8*Log[mu^2/mt^2]*Log[xs])/
     (9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
    (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^
       2*(1 - xs)) - (8*Log[mu^2/mt^2]*Log[xs])/
     (9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
    (32*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^3) - (32*Log[mu^2/mt^2]*Log[xs])/
     (27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
    (16*Log[mu^2/mt^2]*Log[xs])/(27*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 + xs)) + (16*Log[mu^2/mt^2]*Log[xs])/
     (27*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
    (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
    (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
    (5*Log[xs]^2)/27 + (Log[mu^2/mt^2]*(32/27 + (32*Log[xs])/27 - 
       (16*Log[1 + xs])/3))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)) + (Log[mu^2/mt^2]*(32/27 + (32*Log[xs])/27 - 
       (16*Log[1 + xs])/3))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)) + (Log[mu^2/mt^2]*(16/27 + 
       (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (20*Log[xs])/27 - 
       (8*Log[1 + xs])/3))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    (Log[mu^2/mt^2]*(16/27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
        3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
       (20*Log[xs])/27 - (8*Log[1 + xs])/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    Log[mu^2/mt^2]*(8/27 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (10*Log[xs])/27 - 
      (4*Log[1 + xs])/3) + 
    (Log[mu^2/mt^2]*(-4/27 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 - 
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (13*Log[xs])/27 + 
       (2*Log[1 + xs])/3))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-4/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3 + 
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (13*Log[xs])/27 + 
       (2*Log[1 + xs])/3))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (xs*Log[mu^2/mt^2]*(-4/27 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/
        3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (5*Log[xs])/27 + 
       (2*Log[1 + xs])/3))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*Log[mu^2/mt^2]*(-4/27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/
        3 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3 - (5*Log[xs])/27 + 
       (2*Log[1 + xs])/3))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (4*Log[1 + xs])/3 - (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs])/3 + (8*Log[1 + xs]^2)/3 + 
    (Log[mu^2/mt^2]*(-8/9 + 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (10*Log[xs])/9 + 
       4*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-8/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (10*Log[xs])/9 + 
       4*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-32/27 - (8*Log[xs])/9 + (16*Log[1 + xs])/3))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    (Log[mu^2/mt^2]*(-32/27 - (8*Log[xs])/9 + (16*Log[1 + xs])/3))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3)/
     (1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*
      ((-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3))/
     (mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3))/
     (mt^2*(1 + xs)) + 
    (-Pi^2/162 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/162 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (-Pi^2/81 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (22*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 + 
    (-Pi^2/162 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/162 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (-Pi^2/81 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (22*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 + 
    ((-2*Pi^2)/3 + (8*Log[xs])/3 - 2*Log[xs]^2 - (16*Log[1 + xs])/3 - 
      8*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)^2) + ((-2*Pi^2)/3 + (8*Log[xs])/3 - 2*Log[xs]^2 - 
      (16*Log[1 + xs])/3 - 8*PolyLog[2, -xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
    ((-4*Pi^2)/9 - (4*Log[xs]^2)/3 - (16*PolyLog[2, -xs])/3)/(1 - xs)^3 + 
    (4*PolyLog[2, -xs])/3 - (80*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
    ((4*Pi^2)/9 + (4*Log[xs]^2)/3 + (16*PolyLog[2, -xs])/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
    ((4*Pi^2)/9 + (4*Log[xs]^2)/3 + (16*PolyLog[2, -xs])/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
    ((2*Pi^2)/3 - (8*Log[xs])/3 + 2*Log[xs]^2 + (16*Log[1 + xs])/3 + 
      8*PolyLog[2, -xs])/(1 - xs)^2 + 
    (64/27 - (34*Pi^2)/81 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - 
      (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
      (5*Log[xs]^2)/27 + (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
      (4*PolyLog[2, -xs])/3 - (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       9 - (80*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (64/27 - (34*Pi^2)/81 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 - 
      (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
      (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
      (5*Log[xs]^2)/27 + (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
      (4*PolyLog[2, -xs])/3 - (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       9 - (80*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    ((16*Pi^2)/27 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
       27 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
      (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
    ((16*Pi^2)/27 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
       27 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (64*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
      (64*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
    ((5*Pi^2)/9 - (88*Log[xs])/27 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      Log[xs]^2/3 + (16*Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 - 
      (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
      (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
    ((5*Pi^2)/9 - (88*Log[xs])/27 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      Log[xs]^2/3 + (16*Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 - 
      (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
      (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    (34/27 + (29*Pi^2)/162 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
      (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/27 - 
      (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (34/27 + (29*Pi^2)/162 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
       27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 + 
      (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/27 - 
      (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 - 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    (-2/9 - Pi^2/324 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 - 
      Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/6 + 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
      (13*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
      (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (5*Log[xs]^2)/27 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - Log[1 + xs]^2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
      (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
      (4*PolyLog[2, -xs])/3 + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (-2/9 - Pi^2/324 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/6 - 
      (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
      (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (5*Log[xs]^2)/27 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 - (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 - Log[1 + xs]^2 - 
      (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
      (4*PolyLog[2, -xs])/3 + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (xs*(-2/9 - (23*Pi^2)/324 + 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 - 
       Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/6 + 
       (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
         Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 + 
       (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
       (26*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
       (5*Log[xs]^2)/54 - (2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
         Log[1 + xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
         Log[1 + xs])/3 - Log[1 + xs]^2 - 
       (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
       (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
       (2*PolyLog[2, -xs])/3 + (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
        9 + (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*(-2/9 - (23*Pi^2)/324 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/
        2 + (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
       (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
         Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/6 - 
       (26*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
       (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
       (5*Log[xs]^2)/54 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
         Log[1 + xs])/3 - (2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
         Log[1 + xs])/3 - Log[1 + xs]^2 - 
       (17*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/27 - 
       (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/27 - 
       (2*PolyLog[2, -xs])/3 + (13*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
        9 + (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    ((-7*Pi^2)/81 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
       3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (13*Log[xs]^2)/27 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 + (4*PolyLog[2, -xs])/3 + 
      (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/(1 + xs) + 
    ((-7*Pi^2)/27 + (88*Log[xs])/27 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      Log[xs]^2/3 - (16*Log[1 + xs])/3 - (4*PolyLog[2, -xs])/3 + 
      (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
      (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/(1 - xs) + 
    ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
       27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
    ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
       27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
    ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
    ((-8*Pi^2)/27 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       27 + (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/27 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
    (-16/9 + (5*Pi^2)/81 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/3 + (26*Log[xs])/27 + 
      (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
      (68*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/27 - 
      (37*Log[xs]^2)/54 - (4*Log[1 + xs])/3 - 
      4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      (10*Log[1 + xs]^2)/3 - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/
         mt^2)] - (11*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
      (10*PolyLog[2, -xs])/3 + (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       27 + (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (-16/9 + (5*Pi^2)/81 + (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       27 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/3 + 
      (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (26*Log[xs])/27 - 
      (68*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/27 + 
      (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
      (37*Log[xs]^2)/54 - (4*Log[1 + xs])/3 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs])/3 - 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      (10*Log[1 + xs]^2)/3 - 
      (11*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      (10*PolyLog[2, -xs])/3 + (146*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       27 + (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (-64/27 + Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[xs]^2)/27 - (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
      (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-64/27 + Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/27 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/27 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/3 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[xs]^2)/27 - (16*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs])/3 - (16*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs])/3 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 + 
      (32*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
      (32*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/27))/beta + 
 8*Nc*(-Log[-(t1/(M*mt))] + Log[-(u1/(M*mt))])*
  (7/9 - (31*Pi^2)/54 + Log[mu^2/mt^2]^2 + (2*Log[mu^2/mt^2]^2)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (3*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
   (2*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (3*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   Log[mu^2/mt^2]^2/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   Log[mu^2/mt^2]^2/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (2*Log[mu^2/mt^2]^2)/(1 + xs)^2 + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) - 
   (2*Log[mu^2/mt^2]^2)/(1 + xs) - (2*M^2*(-(mt^2/M^2) - t1/M^2)*
     Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) + 
   (1/9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (mt^2*(2/9 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) - 
   (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (9*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (mt^2*(4/9 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (Log[mu^2/mt^2]*(4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (mt^2*(-4/9 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (mt^2*(-2/9 - (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (-1/9 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(-1/9 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2) + 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*(1 - mt^2/M^2 + t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (9*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) - 2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (Log[mu^2/mt^2]*(-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (2*Log[xs])/9))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (2*Log[xs])/9))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + (5*Log[xs])/3 - 
   (Log[mu^2/mt^2]*Log[xs])/(18*(1 - xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(18*mt^2*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) + (4*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) - (4*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(9*(1 + xs)^3) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/
    (9*mt^2*(1 + xs)^3) - (2*Log[mu^2/mt^2]*Log[xs])/
    (9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (2*Log[mu^2/mt^2]*Log[xs])/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 + xs)) - (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/18 - 
   (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/18 + 
   (5*Log[xs]^2)/9 + ((-8*Log[xs])/3 - 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((8*Log[xs])/3 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      9 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(8/3 - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (10*Log[xs])/3 - 6*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + (Log[mu^2/mt^2]*(16/9 - 
      4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + (20*Log[xs])/9 - 
      4*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(16/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (7*Log[xs])/3 - 
      4*Log[1 + xs]))/(1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (16/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (7*Log[xs])/3 - 
      4*Log[1 + xs]))/(mt^2*(1 + xs)^2) + Log[mu^2/mt^2]*
    (8/9 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + (10*Log[xs])/9 - 
     2*Log[1 + xs]) + 
   (Log[mu^2/mt^2]*(4/9 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (4*Log[xs])/9 - Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     xs) + (xs*Log[mu^2/mt^2]*
     (4/9 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (5*Log[xs])/9 - 
      Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   3*Log[1 + xs] + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
    Log[1 + xs] + (xs*Log[mu^2/mt^2]*
     (-4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/9 + 
      Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(-4/9 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      (4*Log[xs])/9 + Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     xs) + (Log[mu^2/mt^2]*(-16/9 + 
      2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (41*Log[xs])/18 + 
      4*Log[1 + xs]))/(1 + xs) + 
   (Log[mu^2/mt^2]*(-16/9 + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (20*Log[xs])/9 + 4*Log[1 + xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-16/9 + 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (13*Log[xs])/6 + 
      4*Log[1 + xs]))/(mt^2*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-8/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      (10*Log[xs])/3 + 6*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
      mt^2) + (-Pi^2/54 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/54 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/27 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/18 + 
   (-8/3 + Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 4*Log[xs] + 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     Log[xs]^2/3 - 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (8/3 - Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - 4*Log[xs] + 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     Log[xs]^2/3 - 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Pi^2/27 - (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (Pi^2/54 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(Pi^2/54 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 - 
   (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/18 + 
   (-10*Pi^2 + 24*Log[xs] - 30*Log[xs]^2 - 48*Log[1 + xs] - 
     120*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^4) + ((-25*Pi^2)/3 + 48*Log[xs] - 25*Log[xs]^2 - 
     96*Log[1 + xs] - 100*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-5*Pi^2 + 12*Log[xs] - 15*Log[xs]^2 - 
      24*Log[1 + xs] - 60*PolyLog[2, -xs]))/(mt^2*(1 - xs)^4) + 
   ((-14*Pi^2)/3 + 24*Log[xs] - 14*Log[xs]^2 - 48*Log[1 + xs] - 
     56*PolyLog[2, -xs])/(1 - xs)^3 + 
   (-4*Pi^2 - 12*Log[xs]^2 - 48*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^5) + 
   (4 - (5*Pi^2)/2 + 28*Log[xs] - (15*Log[xs]^2)/2 - 56*Log[1 + xs] - 
     30*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^2) + (-2*Pi^2 - 6*Log[xs]^2 - 24*PolyLog[2, -xs])/(1 - xs)^5 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(2 - Pi^2/2 + 11*Log[xs] - (3*Log[xs]^2)/2 - 
      22*Log[1 + xs] - 6*PolyLog[2, -xs]))/(mt^2*(1 - xs)^2) + 
   2*PolyLog[2, -xs] + (M^2*(-(mt^2/M^2) - t1/M^2)*(2*Pi^2 + 6*Log[xs]^2 + 
      24*PolyLog[2, -xs]))/(mt^2*(1 - xs)^5) + 
   (-2 + 2*Pi^2 - 17*Log[xs] + 6*Log[xs]^2 + 34*Log[1 + xs] + 
     24*PolyLog[2, -xs])/(1 - xs)^2 + 
   (-4 + (5*Pi^2)/2 - 28*Log[xs] + (15*Log[xs]^2)/2 + 56*Log[1 + xs] + 
     30*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*((11*Pi^2)/3 - 24*Log[xs] + 
      11*Log[xs]^2 + 48*Log[1 + xs] + 44*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^3) + (4*Pi^2 + 12*Log[xs]^2 + 48*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^5) + 
   (5*Pi^2 - 12*Log[xs] + 15*Log[xs]^2 + 24*Log[1 + xs] + 60*PolyLog[2, -xs])/
    (1 - xs)^4 + ((25*Pi^2)/3 - 48*Log[xs] + 25*Log[xs]^2 + 96*Log[1 + xs] + 
     100*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^3) + (10*Pi^2 - 24*Log[xs] + 30*Log[xs]^2 + 48*Log[1 + xs] + 
     120*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^4) + (4 - (47*Pi^2)/54 + (35*Log[xs])/9 - 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (67*Log[xs]^2)/18 - 8*Log[1 + xs] - 14*PolyLog[2, -xs] - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (-4 + (175*Pi^2)/108 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (5*Log[xs])/3 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (67*Log[xs]^2)/36 + 3*Log[1 + xs] - 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     Log[1 + xs]^2 - 3*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     7*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-32/9 + (137*Pi^2)/108 - (5*Log[xs])/2 + 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
     (8*Log[xs]^2)/9 + 4*Log[1 + xs] - 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     3*PolyLog[2, -xs] - (5*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + xs) + ((4*Pi^2)/27 - (4*Log[xs])/9 - Log[xs]^2/9 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/(1 + xs)^3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((4*Pi^2)/27 - (4*Log[xs])/9 - Log[xs]^2/9 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9))/(mt^2*(1 + xs)^3) + 
   (Pi^2/9 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   (Pi^2/9 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-34/9 + (79*Pi^2)/54 + (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      9 + (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/9 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (-8/3 + Pi^2/2 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + (10*Log[xs])/9 - 
     (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (41*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     Log[xs]^2/2 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-2 + (5*Pi^2)/108 + (19*Log[xs])/18 + 
      (5*Log[xs]^2)/18 - 2*Log[1 + xs] + PolyLog[2, -xs] + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/9))/(mt^2*(1 - xs)) + 
   (-2/3 + (49*Pi^2)/108 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (5*Log[xs]^2)/9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + Log[1 + xs]^2/2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
     (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 + 
     2*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (xs*(2/3 - (31*Pi^2)/108 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
      (5*Log[xs]^2)/18 + 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - Log[1 + xs]^2/2 - 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 + 
      PolyLog[2, -xs] + (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/9))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (8/3 - Pi^2/2 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 - (10*Log[xs])/9 - 
     (41*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     Log[xs]^2/2 + 8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 - 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   (-Pi^2/9 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   (-Pi^2/9 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (34/9 - (79*Pi^2)/54 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/9 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (32/9 - (14*Pi^2)/9 + (8*Log[xs])/3 - 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2/6 - 
     4*Log[1 + xs] + 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*(32/9 - (14*Pi^2)/9 + 
      (8*Log[xs])/3 - 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2/6 - 
      4*Log[1 + xs] + 4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
    (mt^2*(1 + xs)^2) + (4 - (175*Pi^2)/108 + 
     (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/9 - 
     2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (5*Log[xs])/3 - 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (67*Log[xs]^2)/36 - 3*Log[1 + xs] + 
     4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     Log[1 + xs]^2 - (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     3*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     7*PolyLog[2, -xs] - (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (-4 + (47*Pi^2)/54 - (35*Log[xs])/9 - 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (67*Log[xs]^2)/18 + 8*Log[1 + xs] + 14*PolyLog[2, -xs] + 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/9 + 
   (2 - (41*Pi^2)/108 + (89*Log[xs])/18 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (23*Log[xs]^2)/18 - 10*Log[1 + xs] - 5*PolyLog[2, -xs] + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/9)/(1 - xs) + 
   (xs*(-2/3 + (31*Pi^2)/108 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       9 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2/2 + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
      (5*Log[xs]^2)/18 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + Log[1 + xs]^2/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/9 + 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
      PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/9))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (2/3 - (49*Pi^2)/108 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/9 + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2/2 - 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/9 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/9 - 
     (5*Log[xs]^2)/9 + 2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     Log[1 + xs]^2/2 - (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
      9 + (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/9 - 
     2*PolyLog[2, -xs] + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/9 + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/9)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-32/9 + (43*Pi^2)/36 - (41*Log[xs])/18 + 
      2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      2*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (5*Log[xs]^2)/6 + 4*Log[1 + xs] - 
      4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      3*PolyLog[2, -xs] + (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
    (mt^2*(1 + xs))) - ((-4*beta*CF*Nc + 2*beta*Nc^2*Log[-(t1/(M*mt))] + 
    2*beta*Nc^2*Log[-(u1/(M*mt))] + Log[xs] + beta^2*Log[xs])*
   (31/3 - (31*Pi^2)/6 + 9*Log[mu^2/mt^2]^2 + (6*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - (9*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + (6*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    (12*Log[mu^2/mt^2]^2)/(1 + xs)^4 + (24*M^2*(-(mt^2/M^2) - t1/M^2)*
      Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^4) + 
    (12*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^4) - 
    (24*Log[mu^2/mt^2]^2)/(1 + xs)^3 - (48*M^2*(-(mt^2/M^2) - t1/M^2)*
      Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^3) - 
    (24*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^3) + 
    (36*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) + 
    (12*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]^2)/(mt^4*(1 + xs)^2) + 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) + (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (12*Log[mu^2/mt^2]^2)/(1 + xs) - (12*M^2*(-(mt^2/M^2) - t1/M^2)*
      Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) - (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)) + 
    (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) + 
    (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
    (23*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
    (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) + 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
        mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
    (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)^2) - 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)) + 
    3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]))/
     (M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) + 
    (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) + 
    (1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
    (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
    (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*(1 - mt^2/M^2 + t1/M^2)) + 
    (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
        mt^2)) + (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)^2) - 
    (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)) - 
    9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (5*Log[xs])/6))/
     (1 + xs)^2 + 5*Log[xs] - (17*Log[mu^2/mt^2]*Log[xs])/(12*(1 - xs)) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(6*mt^2*(1 - xs)) - 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/
     (12*mt^4*(1 - xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
    (5*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
    (5*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 - xs)) - (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^5) - 
    (8*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/
     (3*mt^2*(1 + xs)^5) - (4*M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      Log[xs])/(3*mt^4*(1 + xs)^5) - (4*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) - 
    (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)^3) - (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*Log[xs])/
     (12*mt^4*(1 + xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
      (1 + xs)) - (53*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
    (29*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/2 + 
    5*Log[xs]^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (32 - 42*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (121*Log[xs])/3 - 
       72*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (64/3 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (92*Log[xs])/3 - 
       48*Log[1 + xs]))/(mt^2*(1 + xs)^4) + 
    (Log[mu^2/mt^2]*(32/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (143*Log[xs])/12 - 
       24*Log[1 + xs]))/(1 + xs) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
      Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (79*Log[xs])/6 - 
       24*Log[1 + xs]))/(mt^4*(1 + xs)^2) + 
    (Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 14*Log[xs] - 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) + (Log[mu^2/mt^2]*
      (32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 14*Log[xs] - 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)^2) + (Log[mu^2/mt^2]*
      (32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (46*Log[xs])/3 - 
       24*Log[1 + xs]))/(1 + xs)^4 + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
      Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (46*Log[xs])/3 - 
       24*Log[1 + xs]))/(mt^4*(1 + xs)^4) + Log[mu^2/mt^2]*
     (8 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 10*Log[xs] - 
      18*Log[1 + xs]) + (Log[mu^2/mt^2]*
      (16/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 9*Log[1 + xs] + 
    18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
    30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
    6*Log[1 + xs]^2 + (xs*Log[mu^2/mt^2]*
      (-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/3 + 
       3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
           mt^2] - (5*Log[xs])/3 + 3*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2) + (Log[mu^2/mt^2]*
      (-8 + 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 10*Log[xs] + 
       18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (-32/3 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (79*Log[xs])/6 + 
       24*Log[1 + xs]))/(mt^2*(1 + xs)) + 
    (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (37*Log[xs])/3 + 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (37*Log[xs])/3 + 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
      (-64/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 27*Log[xs] + 
       48*Log[1 + xs]))/(mt^4*(1 + xs)^3) + 
    (Log[mu^2/mt^2]*(-64/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (77*Log[xs])/3 + 
       48*Log[1 + xs]))/(1 + xs)^3 + (M^2*(-(mt^2/M^2) - t1/M^2)*
      Log[mu^2/mt^2]*(-128/3 + 48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
           mt^2] + 48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
       (166*Log[xs])/3 + 96*Log[1 + xs]))/(mt^2*(1 + xs)^3) + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (19*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 - 
    (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/2 + 
    (-30*Pi^2 + 72*Log[xs] - 90*Log[xs]^2 - 144*Log[1 + xs] - 
      360*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)^4) + (-30*Pi^2 + 72*Log[xs] - 90*Log[xs]^2 - 144*Log[1 + xs] - 
      360*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 - xs)^4) + ((-119*Pi^2)/4 + 180*Log[xs] - (357*Log[xs]^2)/4 - 
      360*Log[1 + xs] - 357*PolyLog[2, -xs])/(1 - xs)^3 + 
    (-15*Pi^2 - 45*Log[xs]^2 - 180*PolyLog[2, -xs])/(1 - xs)^5 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-15*Pi^2 + 36*Log[xs] - 45*Log[xs]^2 - 
       72*Log[1 + xs] - 180*PolyLog[2, -xs]))/(mt^2*(1 - xs)^4) + 
    (12 - (15*Pi^2)/2 + 84*Log[xs] - (45*Log[xs]^2)/2 - 168*Log[1 + xs] - 
      90*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)^2) + (12 - (15*Pi^2)/2 + 84*Log[xs] - (45*Log[xs]^2)/2 - 
      168*Log[1 + xs] - 90*PolyLog[2, -xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*((-19*Pi^2)/4 + 36*Log[xs] - 
       (57*Log[xs]^2)/4 - 72*Log[1 + xs] - 57*PolyLog[2, -xs]))/
     (mt^4*(1 - xs)^3) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (6 - (15*Pi^2)/4 + 42*Log[xs] - (45*Log[xs]^2)/4 - 84*Log[1 + xs] - 
       45*PolyLog[2, -xs]))/(mt^2*(1 - xs)^2) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3*Pi^2 - 9*Log[xs]^2 - 
       36*PolyLog[2, -xs]))/(mt^4*(1 - xs)^5) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(-3 - (3*Pi^2)/8 - 12*Log[xs] - 
       (9*Log[xs]^2)/8 + 24*Log[1 + xs] - (9*PolyLog[2, -xs])/2))/
     (mt^4*(1 - xs)^2) + 18*PolyLog[2, -xs] + 
    (16*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(6*Pi^2 + 18*Log[xs]^2 + 72*PolyLog[2, -xs]))/
     (mt^2*(1 - xs)^5) + (-15 + (57*Pi^2)/8 - 96*Log[xs] + 
      (171*Log[xs]^2)/8 + 192*Log[1 + xs] + (171*PolyLog[2, -xs])/2)/
     (1 - xs)^2 + (M^4*(-(mt^2/M^2) - t1/M^2)^2*((15*Pi^2)/2 - 18*Log[xs] + 
       (45*Log[xs]^2)/2 + 36*Log[1 + xs] + 90*PolyLog[2, -xs]))/
     (mt^4*(1 - xs)^4) + (12*Pi^2 + 36*Log[xs]^2 + 144*PolyLog[2, -xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^5) + 
    (12*Pi^2 + 36*Log[xs]^2 + 144*PolyLog[2, -xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^5) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*((25*Pi^2)/2 - 72*Log[xs] + 
       (75*Log[xs]^2)/2 + 144*Log[1 + xs] + 150*PolyLog[2, -xs]))/
     (mt^2*(1 - xs)^3) + (25*Pi^2 - 144*Log[xs] + 75*Log[xs]^2 + 
      288*Log[1 + xs] + 300*PolyLog[2, -xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
    (25*Pi^2 - 144*Log[xs] + 75*Log[xs]^2 + 288*Log[1 + xs] + 
      300*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 - xs)^3) + ((75*Pi^2)/2 - 90*Log[xs] + (225*Log[xs]^2)/2 + 
      180*Log[1 + xs] + 450*PolyLog[2, -xs])/(1 - xs)^4 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-256/3 + (305*Pi^2)/9 - 62*Log[xs] + 
       48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
       48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
       (38*Log[xs]^2)/3 + 96*Log[1 + xs] - 
       96*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
       96*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
       36*PolyLog[2, -xs] - (44*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
        3))/(mt^2*(1 + xs)^3) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
      (-128/3 + (33*Pi^2)/2 - (89*Log[xs])/3 + 
       24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 6*Log[xs]^2 + 
       48*Log[1 + xs] - 48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] - 48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] - 18*PolyLog[2, -xs] - 6*(-(Log[1 - xs]*Log[xs]) - 
         PolyLog[2, xs])))/(mt^4*(1 + xs)^3) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*((16*Pi^2)/9 - (16*Log[xs])/3 - 
       (4*Log[xs]^2)/3 - (16*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^2*(1 + xs)^5) + (64/3 + (133*Pi^2)/18 - (281*Log[xs])/3 + 
      (76*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (76*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (10*Log[xs]^2)/3 + 48*Log[1 + xs] - 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      18*PolyLog[2, -xs] - (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^3 + 
    (15 - (377*Pi^2)/144 + (67*Log[xs])/12 + 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
      (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
      (547*Log[xs]^2)/48 - 12*Log[1 + xs] - (171*PolyLog[2, -xs])/4 - 
      (17*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/6)/(1 - xs) + 
    ((8*Pi^2)/9 - (104*Log[xs])/3 - (2*Log[xs]^2)/3 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^5 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*((8*Pi^2)/9 - (8*Log[xs])/3 - 
       (2*Log[xs]^2)/3 - (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^4*(1 + xs)^5) + ((2*Pi^2)/3 - 8*Log[xs] + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
    ((2*Pi^2)/3 - 8*Log[xs] + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[xs])/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       3 - (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-46/3 + (515*Pi^2)/72 + 
       (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
       (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (155*Log[xs])/6 + 
       (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
       (107*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
       (131*Log[xs]^2)/24 + 48*Log[1 + xs] - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
       36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
       (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
       (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       (39*PolyLog[2, -xs])/2 - (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
        3))/(mt^2*(1 + xs)) + (-38/3 + (175*Pi^2)/36 - 
      (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      11*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 5*Log[xs] + 
      (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (67*Log[xs]^2)/12 + 9*Log[1 + xs] - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      3*Log[1 + xs]^2 + 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      21*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (-38/3 + (175*Pi^2)/36 + 11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 5*Log[xs] + 
      10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (67*Log[xs]^2)/12 + 9*Log[1 + xs] - 
      18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      3*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      21*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (-101/3 + (59*Pi^2)/12 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (215*Log[xs])/6 - 
      8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      20*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 4*Log[xs]^2 - 
      36*Log[1 + xs] + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - 24*Log[1 + xs]^2 - 
      (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
      3*PolyLog[2, -xs] + 28*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      (5*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^2 + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
    (-40/3 + (64*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (10*Log[xs])/3 + (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[xs])/3 + (37*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       3 + (3*Log[xs]^2)/2 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (-40/3 + (64*Pi^2)/9 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 + (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (10*Log[xs])/3 + (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[xs])/3 + (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       3 + (3*Log[xs]^2)/2 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(-6 + (19*Pi^2)/72 - (35*Log[xs])/6 - 
       (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
       (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
       (29*Log[xs]^2)/24 + 12*Log[1 + xs] + (9*PolyLog[2, -xs])/2 + 
       (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/(mt^2*(1 - xs)) + 
    (-2 + (49*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
      (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (3*Log[1 + xs]^2)/2 + 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      6*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (-2 + (49*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      6*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (34/3 - (77*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (34/3 - (77*Pi^2)/18 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(55/3 - (235*Pi^2)/36 + (119*Log[xs])/6 - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       (22*Log[xs]^2)/3 - 36*Log[1 + xs] + 
       24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
       27*PolyLog[2, -xs] + (7*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/
     (mt^4*(1 + xs)^2) + (-12 + (22*Pi^2)/9 - (35*Log[xs])/3 + 
      Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (67*Log[xs]^2)/6 + 24*Log[1 + xs] + 42*PolyLog[2, -xs] + 
      (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    (-12 + (22*Pi^2)/9 - (35*Log[xs])/3 - 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (67*Log[xs]^2)/6 + 24*Log[1 + xs] + 42*PolyLog[2, -xs] + 
      (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
    (40/3 - (73*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 12*Log[xs] - 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    (40/3 - (73*Pi^2)/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 12*Log[xs] - 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-32/3 - (56*Pi^2)/9 + (296*Log[xs])/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (7*Log[xs]^2)/3 - 24*Log[1 + xs] + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^4 + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(64/3 - (92*Pi^2)/9 + (56*Log[xs])/3 - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       (5*Log[xs]^2)/3 - 24*Log[1 + xs] + 
       24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
       (20*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^4*(1 + xs)^4) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*(58 - (403*Pi^2)/18 - 
       (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
       (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (167*Log[xs])/3 - 
       30*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       42*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       (47*Log[xs]^2)/3 - 96*Log[1 + xs] + 
       60*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       84*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
       (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
       54*PolyLog[2, -xs] + (26*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
        3))/(mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (128/3 - (184*Pi^2)/9 + (112*Log[xs])/3 - 
       24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       (10*Log[xs]^2)/3 - 48*Log[1 + xs] + 
       48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
       (40*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^4) + 
    2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3 - Pi^2/144 - (73*Log[xs])/12 - 
       (11*Log[xs]^2)/48 + 12*Log[1 + xs] - (3*PolyLog[2, -xs])/4 + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6))/(mt^4*(1 - xs)) + 
    (M^4*(-(mt^2/M^2) - t1/M^2)^2*(3 - Pi^2/144 - (73*Log[xs])/12 - 
       (11*Log[xs]^2)/48 + 12*Log[1 + xs] - (3*PolyLog[2, -xs])/4 + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6))/(mt^4*(1 + xs)) + 
    (23 - (977*Pi^2)/144 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (27*Log[xs])/4 - 
      (35*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
      (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
      (101*Log[xs]^2)/48 + 12*Log[1 + xs] + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      24*Log[1 + xs]^2 + (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/
       3 + 25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
      (45*PolyLog[2, -xs])/4 - 24*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/6)/(1 + xs) + 
    (xs*(-2 + (31*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] + (3*Log[1 + xs]^2)/2 + 
       (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
        3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
       3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
       (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
       (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
       (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)))/beta - 
 2*(-4 + Nc^2)*(Log[-(t1/(M*mt))] - Log[-(u1/(M*mt))])*
  (7/3 - (31*Pi^2)/18 + 3*Log[mu^2/mt^2]^2 + (6*Log[mu^2/mt^2]^2)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
   (6*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (6*Log[mu^2/mt^2]^2)/(1 + xs)^2 + 
   (6*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) - 
   (6*Log[mu^2/mt^2]^2)/(1 + xs) - (6*M^2*(-(mt^2/M^2) - t1/M^2)*
     Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) + 
   (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (mt^2*(2/3 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (Log[mu^2/mt^2]*(12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (mt^2*(-2/3 - (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (-1/3 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(-1/3 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) + 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*(1 - mt^2/M^2 + t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (Log[mu^2/mt^2]*(-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (2*Log[xs])/3))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (2*Log[xs])/3))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 5*Log[xs] - 
   (Log[mu^2/mt^2]*Log[xs])/(6*(1 - xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(6*mt^2*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) + (4*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) - (4*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + xs)^3) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/
    (3*mt^2*(1 + xs)^3) - (2*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 + xs)) - (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
   (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
   (5*Log[xs]^2)/3 + 
   (-8*Log[xs] - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   (8*Log[xs] - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(8 - 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      10*Log[xs] - 18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + (Log[mu^2/mt^2]*(16/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + (20*Log[xs])/3 - 
      12*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(16/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 7*Log[xs] - 
      12*Log[1 + xs]))/(1 + xs)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (16/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 7*Log[xs] - 
      12*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
   Log[mu^2/mt^2]*(8/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
     (10*Log[xs])/3 - 6*Log[1 + xs]) + 
   (Log[mu^2/mt^2]*(4/3 - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (4*Log[xs])/3 - 3*Log[1 + xs]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (xs*Log[mu^2/mt^2]*(4/3 - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (5*Log[xs])/3 - 3*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) - 9*Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
    Log[1 + xs] + (xs*Log[mu^2/mt^2]*
     (-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/3 + 
      3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      (4*Log[xs])/3 + 3*Log[1 + xs]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (Log[mu^2/mt^2]*(-16/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (41*Log[xs])/6 + 
      12*Log[1 + xs]))/(1 + xs) + 
   (Log[mu^2/mt^2]*(-16/3 + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (20*Log[xs])/3 + 12*Log[1 + xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-16/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (13*Log[xs])/2 + 
      12*Log[1 + xs]))/(mt^2*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
   (-8 + Pi^2 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 12*Log[xs] + 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2 - 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (8 - Pi^2 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 12*Log[xs] + 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2 - 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Pi^2/9 - (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (Pi^2/18 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(Pi^2/18 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 - 
   (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/6 + 
   (-30*Pi^2 + 72*Log[xs] - 90*Log[xs]^2 - 144*Log[1 + xs] - 
     360*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^4) + (-25*Pi^2 + 144*Log[xs] - 75*Log[xs]^2 - 288*Log[1 + xs] - 
     300*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^3) + (M^2*(-(mt^2/M^2) - t1/M^2)*(-15*Pi^2 + 36*Log[xs] - 
      45*Log[xs]^2 - 72*Log[1 + xs] - 180*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^4) + (-14*Pi^2 + 72*Log[xs] - 42*Log[xs]^2 - 
     144*Log[1 + xs] - 168*PolyLog[2, -xs])/(1 - xs)^3 + 
   (-12*Pi^2 - 36*Log[xs]^2 - 144*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^5) + 
   (12 - (15*Pi^2)/2 + 84*Log[xs] - (45*Log[xs]^2)/2 - 168*Log[1 + xs] - 
     90*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^2) + (-6*Pi^2 - 18*Log[xs]^2 - 72*PolyLog[2, -xs])/(1 - xs)^5 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(6 - (3*Pi^2)/2 + 33*Log[xs] - 
      (9*Log[xs]^2)/2 - 66*Log[1 + xs] - 18*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^2) + 6*PolyLog[2, -xs] + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(6*Pi^2 + 18*Log[xs]^2 + 72*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^5) + (-6 + 6*Pi^2 - 51*Log[xs] + 18*Log[xs]^2 + 
     102*Log[1 + xs] + 72*PolyLog[2, -xs])/(1 - xs)^2 + 
   (-12 + (15*Pi^2)/2 - 84*Log[xs] + (45*Log[xs]^2)/2 + 168*Log[1 + xs] + 
     90*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*(11*Pi^2 - 72*Log[xs] + 
      33*Log[xs]^2 + 144*Log[1 + xs] + 132*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^3) + (12*Pi^2 + 36*Log[xs]^2 + 144*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^5) + 
   (15*Pi^2 - 36*Log[xs] + 45*Log[xs]^2 + 72*Log[1 + xs] + 
     180*PolyLog[2, -xs])/(1 - xs)^4 + 
   (25*Pi^2 - 144*Log[xs] + 75*Log[xs]^2 + 288*Log[1 + xs] + 
     300*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
     (1 - xs)^3) + (30*Pi^2 - 72*Log[xs] + 90*Log[xs]^2 + 144*Log[1 + xs] + 
     360*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
     (1 - xs)^4) + (12 - (47*Pi^2)/18 + (35*Log[xs])/3 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - (67*Log[xs]^2)/6 - 
     24*Log[1 + xs] - 42*PolyLog[2, -xs] - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (-12 + (175*Pi^2)/36 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 5*Log[xs] + 
     10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (67*Log[xs]^2)/12 + 9*Log[1 + xs] - 
     18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     3*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     21*PolyLog[2, -xs] + (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-32/3 + (137*Pi^2)/36 - (15*Log[xs])/2 + 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
     (8*Log[xs]^2)/3 + 12*Log[1 + xs] - 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     9*PolyLog[2, -xs] - (5*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + xs) + ((4*Pi^2)/9 - (4*Log[xs])/3 - Log[xs]^2/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((4*Pi^2)/9 - (4*Log[xs])/3 - Log[xs]^2/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^3) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-34/3 + (79*Pi^2)/18 + (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      3 + (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (-8 + (3*Pi^2)/2 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + (10*Log[xs])/3 - 
     (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (41*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (3*Log[xs]^2)/2 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-6 + (5*Pi^2)/36 + (19*Log[xs])/6 + 
      (5*Log[xs]^2)/6 - 6*Log[1 + xs] + 3*PolyLog[2, -xs] + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/(mt^2*(1 - xs)) + 
   (-2 + (49*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
     3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     6*PolyLog[2, -xs] - (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (xs*(2 - (31*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/6 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (3*Log[1 + xs]^2)/2 - 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      3*PolyLog[2, -xs] + (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (8 - (3*Pi^2)/2 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - (10*Log[xs])/3 - 
     (41*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (3*Log[xs]^2)/2 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   (-Pi^2/3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   (-Pi^2/3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (34/3 - (79*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (32/3 - (14*Pi^2)/3 + 8*Log[xs] - 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2/2 - 
     12*Log[1 + xs] + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/(1 + xs)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(32/3 - (14*Pi^2)/3 + 8*Log[xs] - 
      6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2/2 - 
      12*Log[1 + xs] + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])))/
    (mt^2*(1 + xs)^2) + (12 - (175*Pi^2)/36 + 
     (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 5*Log[xs] - 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     (67*Log[xs]^2)/12 - 9*Log[1 + xs] + 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     3*Log[1 + xs]^2 - 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     21*PolyLog[2, -xs] - (10*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (-12 + (47*Pi^2)/18 - (35*Log[xs])/3 - 
     Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (67*Log[xs]^2)/6 + 
     24*Log[1 + xs] + 42*PolyLog[2, -xs] + 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-32/3 + (43*Pi^2)/12 - (41*Log[xs])/6 + 
      6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      Log[1 - xs]*Log[xs] - (5*Log[xs]^2)/2 + 12*Log[1 + xs] - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      9*PolyLog[2, -xs] + PolyLog[2, xs]))/(mt^2*(1 + xs)) + 
   (6 - (41*Pi^2)/36 + (89*Log[xs])/6 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (23*Log[xs]^2)/6 - 30*Log[1 + xs] - 15*PolyLog[2, -xs] + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3)/(1 - xs) + 
   (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 + 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (3*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      3*PolyLog[2, -xs] - (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (2 - (49*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (5*Log[xs]^2)/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - (3*Log[1 + xs]^2)/2 - 
     (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     6*PolyLog[2, -xs] + (5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs)) - 
 2*(-4 + Nc^2)*(Log[-(t1/(M*mt))] - Log[-(u1/(M*mt))])*
  (4 - (31*Pi^2)/18 + 3*Log[mu^2/mt^2]^2 + (6*Log[mu^2/mt^2]^2)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
   (6*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (6*Log[mu^2/mt^2]^2)/(1 + xs)^2 + 
   (6*M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)^2) - 
   (6*Log[mu^2/mt^2]^2)/(1 + xs) - (6*M^2*(-(mt^2/M^2) - t1/M^2)*
     Log[mu^2/mt^2]^2)/(mt^2*(1 + xs)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)^2) + 
   (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
   (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
   (23*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
   (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
       mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
   (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)^2) - 
   (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
    (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + xs)) + 
   3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
   (mt^2*(2/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]))/
    (M^2*(-(mt^2/M^2) - t1/M^2)) + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
    (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + xs)) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^3) + 
   (mt^2*(-4/3 - (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)) + 
   (mt^2*(-2/3 - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
   (-1/3 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
   (xs*(-1/3 + Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
   (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) + 
   (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*(1 - mt^2/M^2 + t1/M^2)) - 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2)) - (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)^2) + 
   (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
    (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + xs)) + 
   9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
   (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
    (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(1 + xs)^4 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^4) + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*Log[mu^2/mt^2]*
     (-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^4*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Log[mu^2/mt^2]*(-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)^4) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (2*Log[xs])/3))/
    (mt^2*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (2*Log[xs])/3))/
    (1 + xs)^3 + (Log[mu^2/mt^2]*
     (12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (2*Log[xs])/3))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (Log[mu^2/mt^2]*(12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (2*Log[xs])/3))/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - (8*Log[xs])/3 - 
   (Log[mu^2/mt^2]*Log[xs])/(6*(1 - xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*Log[xs])/(6*mt^2*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 - xs)) + (4*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
     (1 - xs)) - (4*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) - 
   (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
     (1 + xs)) + (2*Log[mu^2/mt^2]*Log[xs])/
    (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) - 
   (53*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
   (29*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/2 + 
   (5*Log[xs]^2)/3 + ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/
      3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
   ((4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
   (Log[mu^2/mt^2]*(8 - 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      10*Log[xs] - 18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + (Log[mu^2/mt^2]*(16/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + (20*Log[xs])/3 - 
      12*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (Log[mu^2/mt^2]*(16/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 7*Log[xs] - 
      12*Log[1 + xs]))/(1 + xs)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (16/3 - 42*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 7*Log[xs] - 
      12*Log[1 + xs]))/(mt^2*(1 + xs)^2) + 
   Log[mu^2/mt^2]*(8/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (10*Log[xs])/3 - 
     6*Log[1 + xs]) + 
   (Log[mu^2/mt^2]*(4/3 - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (4*Log[xs])/3 - 3*Log[1 + xs]))/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (xs*Log[mu^2/mt^2]*(4/3 - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
      (5*Log[xs])/3 - 3*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
      mt^2) + 6*Log[1 + xs] + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
    Log[1 + xs] - 30*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
    Log[1 + xs] + 12*Log[1 + xs]^2 + 
   (xs*Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      (5*Log[xs])/3 + 3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
      mt^2) + (Log[mu^2/mt^2]*(-4/3 + 
      3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (4*Log[xs])/3 + 
      3*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (Log[mu^2/mt^2]*(-16/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (41*Log[xs])/6 + 
      12*Log[1 + xs]))/(1 + xs) + 
   (Log[mu^2/mt^2]*(-16/3 + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
      (20*Log[xs])/3 + 12*Log[1 + xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
     (-16/3 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - (13*Log[xs])/2 + 
      12*Log[1 + xs]))/(mt^2*(1 + xs)) + 
   (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
      10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*
     (-24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^2*(1 + xs)^4) + (-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/(1 + xs)^4 + 
   (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^4) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (-12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^2) + (M^4*(-(mt^2/M^2) - t1/M^2)^2*
     (24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
    (mt^4*(1 + xs)^3) + 
   (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
   (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
   (19*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
   (Pi^2/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + Log[xs]^2/3 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
   (Pi^2/9 - (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (Pi^2/18 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
   (xs*(Pi^2/18 - PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
   (17*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/2 + 
   (-Pi^2/9 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2/3 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
   (-3*Pi^2 + 12*Log[xs] - 9*Log[xs]^2 - 24*Log[1 + xs] - 36*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^2) + 
   (-2*Pi^2 - 6*Log[xs]^2 - 24*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((-3*Pi^2)/2 + 6*Log[xs] - (9*Log[xs]^2)/2 - 
      12*Log[1 + xs] - 18*PolyLog[2, -xs]))/(mt^2*(1 - xs)^2) + 
   (-Pi^2 - 3*Log[xs]^2 - 12*PolyLog[2, -xs])/(1 - xs)^3 + 
   6*PolyLog[2, -xs] - (35*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(Pi^2 + 3*Log[xs]^2 + 12*PolyLog[2, -xs]))/
    (mt^2*(1 - xs)^3) + ((3*Pi^2)/2 - 6*Log[xs] + (9*Log[xs]^2)/2 + 
     12*Log[1 + xs] + 18*PolyLog[2, -xs])/(1 - xs)^2 + 
   (2*Pi^2 + 6*Log[xs]^2 + 24*PolyLog[2, -xs])/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
   (3*Pi^2 - 12*Log[xs] + 9*Log[xs]^2 + 24*Log[1 + xs] + 36*PolyLog[2, -xs])/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^2) + 
   (Pi^2/6 + (34*Log[xs])/3 + Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[xs] + (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (3*Log[xs]^2)/2 - 24*Log[1 + xs] - 6*PolyLog[2, -xs] - 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
   (-50/3 + (191*Pi^2)/36 + 11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
     9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
     (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
     6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/3 + 
     10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
     (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (47*Log[xs]^2)/12 - 6*Log[1 + xs] - 
     18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
     15*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
     5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     15*PolyLog[2, -xs] + (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
   (-8 + (49*Pi^2)/12 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - Log[xs]/3 - 
     (35*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
     (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
     2*Log[xs]^2 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - 24*Log[1 + xs]^2 + 
     (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
     6*PolyLog[2, -xs] + (71*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (5*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs) + 
   ((13*Pi^2)/9 + (76*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (76*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (8*Log[xs]^2)/3 - 48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 12*PolyLog[2, -xs] - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs)^3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*((13*Pi^2)/9 + 
      48*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      48*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (8*Log[xs]^2)/3 - 96*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 96*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 12*PolyLog[2, -xs] - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3))/(mt^2*(1 + xs)^3) + 
   (-Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (37*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (5*Log[xs]^2)/3 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     (5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     6*PolyLog[2, -xs] - 2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
   (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
   (-34/3 + (77*Pi^2)/18 + (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
      3 + (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 - 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
   (xs*(2 - (31*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
      (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/6 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + (9*Log[1 + xs]^2)/2 + 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      3*PolyLog[2, -xs] - 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-Pi^2/12 - (17*Log[xs])/3 - 
      (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
      (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
      12*Log[1 + xs] + (Log[xs]*Log[1 + xs] + PolyLog[2, -xs])/3 + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3))/(mt^2*(1 - xs)) + 
   (-2 + (17*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
     3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
     (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
     (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
     (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
     6*PolyLog[2, -xs] + 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
   (-Pi^2/3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
   (-Pi^2/3 - (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
   (34/3 - (77*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
     24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
     PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
     (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
   (Pi^2/3 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (5*Log[xs]^2)/3 - 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] - (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
     PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 6*PolyLog[2, -xs] + 
     2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(8 - (38*Pi^2)/9 - 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 
      30*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      42*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (13*Log[xs]^2)/6 + 60*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 84*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + xs]^2 + 
      (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
      (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
      6*PolyLog[2, -xs] - 24*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])))/(mt^2*(1 + xs)^2) + 
   (8 - (38*Pi^2)/9 - (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
     12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - 
     8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
     20*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     (13*Log[xs]^2)/6 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] - 36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + 24*Log[1 + xs]^2 - 
     (5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     25*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     6*PolyLog[2, -xs] - 24*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/(1 + xs)^2 + 
   (50/3 - (191*Pi^2)/36 - (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
      3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     11*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
     9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - (8*Log[xs])/3 + 
     (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     (47*Log[xs]^2)/12 + 6*Log[1 + xs] - 
     12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
     18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
     15*Log[1 + xs]^2 + 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
     9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 
     15*PolyLog[2, -xs] - (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
   (-Pi^2/6 - (34*Log[xs])/3 - (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[xs])/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
     (3*Log[xs]^2)/2 + 24*Log[1 + xs] + 6*PolyLog[2, -xs] + 
     (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
     (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
    ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
   (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3 + 
   (M^2*(-(mt^2/M^2) - t1/M^2)*(-8 + (121*Pi^2)/36 + 
      (22*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (22*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 - Log[xs]/3 + 
      (37*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 - 
      (107*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
      Log[1 - xs]*Log[xs] - (10*Log[xs]^2)/3 - 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      36*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + xs]^2 - (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/
           mt^2)])/3 - (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/
       3 - 12*PolyLog[2, -xs] + (71*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/
       3 + PolyLog[2, xs]))/(mt^2*(1 + xs)) + 
   ((-5*Pi^2)/12 + (17*Log[xs])/3 + 
     (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
     (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 - 
     (3*Log[xs]^2)/2 - 12*Log[1 + xs] + 
     (-(Log[xs]*Log[1 + xs]) - PolyLog[2, -xs])/3 - 6*PolyLog[2, -xs] + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3)/(1 - xs) + 
   (2 - (17*Pi^2)/36 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 - 
     (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
     (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 + 
     (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
     (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
     (5*Log[xs]^2)/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
      Log[1 + xs] + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
      Log[1 + xs] + (9*Log[1 + xs]^2)/2 + 
     (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 + 
     (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 + 
     6*PolyLog[2, -xs] - 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
     (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3)/
    ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      3*PolyLog[2, -xs] + 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
 ((-4 + Nc^2)*(-4*beta*CF*Nc + 2*beta*Nc^2*Log[-(t1/(M*mt))] + 
    2*beta*Nc^2*Log[-(u1/(M*mt))] + Log[xs] + beta^2*Log[xs])*
   (4 - (31*Pi^2)/18 + 3*Log[mu^2/mt^2]^2 + (6*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - (9*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + (6*Log[mu^2/mt^2]^2)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    (9*Log[mu^2/mt^2]^2)/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    (3*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    (3*xs*Log[mu^2/mt^2]^2)/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) - (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (12*Log[mu^2/mt^2]^2)/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)) + (12*Log[mu^2/mt^2]^2)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 - 
    (11*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
    (2*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2) - 
    (4*mt^4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^4*(-(mt^2/M^2) - t1/M^2)^2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
        mt^2)) - (2*mt^2*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)*xs) - 
    (2*mt^2*xs*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
     (3*M^2*(-(mt^2/M^2) - t1/M^2)) + 
    6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3))/
     (M^2*(-(mt^2/M^2) - t1/M^2)*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)) + 
    (1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*xs) + 
    (xs*(1/3 - Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    (13*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
    (2*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2) - 
    (2*(-(mt^2/M^2) - t1/M^2)*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*(1 - mt^2/M^2 + t1/M^2)) - 
    (4*mt^4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
     (3*M^4*(1 - mt^2/M^2 + t1/M^2)^2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
        mt^2)) + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
    (mt^2*(2/3 + (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)) + 
    (mt^2*(4/3 + (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3))/
     (M^2*(1 - mt^2/M^2 + t1/M^2)*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    (Log[mu^2/mt^2]*(-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(1 + xs)^2 + 
    (M^2*(-(mt^2/M^2) - t1/M^2)*Log[mu^2/mt^2]*
      (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]))/(mt^2*(1 + xs)^2) + 
    (Log[mu^2/mt^2]*(6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - Log[xs]/3))/(1 + xs) - 
    (8*Log[xs])/3 - (Log[mu^2/mt^2]*Log[xs])/(3*(1 - xs)) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 - xs)) + (Log[mu^2/mt^2]*Log[xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*
      (1 - xs)) + (Log[mu^2/mt^2]*Log[xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    (4*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^3) + (4*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) - 
    (2*Log[mu^2/mt^2]*Log[xs])/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*
      (1 + xs)) - (2*Log[mu^2/mt^2]*Log[xs])/
     (3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) - 
    (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/6 + 
    (35*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/6 + 
    (5*Log[xs]^2)/3 + (Log[mu^2/mt^2]*
      (32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (41*Log[xs])/3 - 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(32/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + (41*Log[xs])/3 - 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (Log[mu^2/mt^2]*(16/3 - 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] + 
       (20*Log[xs])/3 - 12*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    Log[mu^2/mt^2]*(8/3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
      (10*Log[xs])/3 - 6*Log[1 + xs]) + 6*Log[1 + xs] - 
    12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
    12*Log[1 + xs]^2 + (xs*Log[mu^2/mt^2]*
      (-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - (5*Log[xs])/3 + 
       3*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/
           mt^2] - (5*Log[xs])/3 + 3*Log[1 + xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-4/3 + 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 
       (4*Log[xs])/3 + 3*Log[1 + xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (Log[mu^2/mt^2]*(-8 + 18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] - 
       10*Log[xs] + 18*Log[1 + xs]))/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/
       mt^2) + (Log[mu^2/mt^2]*
      (-8 + 18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 10*Log[xs] + 
       18*Log[1 + xs]))/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (Log[mu^2/mt^2]*(-32/3 + 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 14*Log[xs] + 
       24*Log[1 + xs]))/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 + xs)^2) + (Log[mu^2/mt^2]*(-32/3 + 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2] - 14*Log[xs] + 
       24*Log[1 + xs]))/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 + xs)^2) + (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs])/
     (1 + xs)^2 + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (-6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
     (mt^2*(1 + xs)^2) + (M^2*(-(mt^2/M^2) - t1/M^2)*
      (6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
       6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
       12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
       12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs]))/
     (mt^2*(1 + xs)) + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^3 + 
    (35*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/6 + 
    (-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3*xs) + 
    (xs*(-Pi^2/18 + PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (-Pi^2/9 + (2*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^3 + 
    (35*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/6 + 
    (-3*Pi^2 + 12*Log[xs] - 9*Log[xs]^2 - 24*Log[1 + xs] - 
      36*PolyLog[2, -xs])/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*
      (1 - xs)^2) + (-3*Pi^2 + 12*Log[xs] - 9*Log[xs]^2 - 24*Log[1 + xs] - 
      36*PolyLog[2, -xs])/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*
      (1 - xs)^2) + (-2*Pi^2 - 6*Log[xs]^2 - 24*PolyLog[2, -xs])/(1 - xs)^3 + 
    6*PolyLog[2, -xs] - (35*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
    (2*Pi^2 + 6*Log[xs]^2 + 24*PolyLog[2, -xs])/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)^3) + 
    (2*Pi^2 + 6*Log[xs]^2 + 24*PolyLog[2, -xs])/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)^3) + 
    (3*Pi^2 - 12*Log[xs] + 9*Log[xs]^2 + 24*Log[1 + xs] + 36*PolyLog[2, -xs])/
     (1 - xs)^2 + (-64/3 + 9*Pi^2 + 
      (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2/3 - 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-64/3 + 9*Pi^2 + (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 + 
      (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 + 
      14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] + 
      14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - Log[xs]^2/3 - 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) - 
      4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) + 
    (-16 + (191*Pi^2)/36 + (17*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (31*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      9*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/3 - 
      (14*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] - 
      (47*Log[xs]^2)/12 - 6*Log[1 + xs] + 
      12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] - 
      18*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      15*Log[1 + xs]^2 - 5*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      9*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      15*PolyLog[2, -xs] + (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    (-16 + (191*Pi^2)/36 + (31*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - 9*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (17*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + (8*Log[xs])/3 + 
      10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      (14*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (47*Log[xs]^2)/12 - 6*Log[1 + xs] - 
      18*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] - 
      15*Log[1 + xs]^2 - 9*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      5*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] - 
      15*PolyLog[2, -xs] + (38*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2*(1 + xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 - xs)) + 
    (Pi^2/3 + (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2*(1 + xs)) + 
    ((13*Pi^2)/18 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + 
      (4*Log[xs]^2)/3 - 12*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 12*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] + 6*PolyLog[2, -xs] - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 + xs) + 
    (-Pi^2/3 + (34*Log[xs])/3 + (Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[xs])/3 + (Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/
       3 - (3*Log[xs]^2)/2 - 24*Log[1 + xs] - 6*PolyLog[2, -xs] - 
      (2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 - 
      (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/(1 - xs) + 
    (-2 + (17*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
      3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
      (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (10*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/3 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
      (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      6*PolyLog[2, -xs] + 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    (-2 + (17*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
      (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
      (10*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
      (5*Log[xs]^2)/3 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
      (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
      (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
      6*PolyLog[2, -xs] + 5*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs])/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    (34/3 - (79*Pi^2)/18 - (34*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    (34/3 - (79*Pi^2)/18 - (34*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/
       3 - (40*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[1 + xs] + 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)]/3 + 
      (4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (4*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    ((-34*Log[xs])/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (3*Log[xs]^2)/2 + 
      24*Log[1 + xs] + 6*PolyLog[2, -xs] + 
      2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 - xs)) + 
    ((-34*Log[xs])/3 - Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs] - 
      Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs] + (3*Log[xs]^2)/2 + 
      24*Log[1 + xs] + 6*PolyLog[2, -xs] + 
      2*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 - xs)) + 
    ((-2*Pi^2)/3 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^3) + 
    ((-2*Pi^2)/3 - (4*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (4*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (8*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]))/3 + 
      (8*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^3) + 
    (64/3 - (149*Pi^2)/18 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (41*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (43*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 6*PolyLog[2, -xs] + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    (64/3 - (149*Pi^2)/18 - (32*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
       3 - (32*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
      (43*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
      (41*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 + 
      (5*Log[xs]^2)/3 + 24*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
       Log[1 + xs] + 24*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
       Log[1 + xs] - PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)] - 
      PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)] + 6*PolyLog[2, -xs] + 
      4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
      (10*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3)/
     ((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)) + 
    (2*(-(Log[1 - xs]*Log[xs]) - PolyLog[2, xs]))/3 + 
    (xs*(-2 + (31*Pi^2)/36 + (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2])/
        3 - (3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2)/2 - 
       3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2 + 
       (5*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 - 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] + 6*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
       (4*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (8*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] + 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    (xs*(-2 + (31*Pi^2)/36 - 3*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]^2 + 
       (8*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2])/3 - 
       (3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]^2)/2 - 
       (8*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*Log[xs])/3 + 
       (5*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*Log[xs])/3 - 
       (5*Log[xs]^2)/6 + 6*Log[1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2]*
        Log[1 + xs] - 3*Log[1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2]*
        Log[1 + xs] - (9*Log[1 + xs]^2)/2 - 
       (8*PolyLog[2, -((M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)])/3 - 
       (4*PolyLog[2, -((M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)])/3 - 
       3*PolyLog[2, -xs] + 4*(Log[xs]*Log[1 + xs] + PolyLog[2, -xs]) + 
       (Log[1 - xs]*Log[xs] + PolyLog[2, xs])/3))/
     (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)))/(beta*Nc^2) - 
 (28*(1 + beta^2)*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
    2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
    1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
   PolyLog[2, -(Tan[theta/2]^2/xs)])/beta + 
 (28*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
    2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
    (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
    1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
   PolyLog[2, -(xs*Tan[theta/2]^2)])/beta + 
 28*beta*(-1/3 - 2/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
   (1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^(-1) + 
   2/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) - 
   (1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^(-1) + 
   1/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
   1/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
   xs/(6*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
   xs/(6*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(3*(1 + xs)^2) - 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)^2) + 2/(3*(1 + xs)) + 
   (2*M^2*(-(mt^2/M^2) - t1/M^2))/(3*mt^2*(1 + xs)))*Log[t1/u1]*
  PolyLog[2, -(xs*Tan[theta/2]^2)] + 
 (5*(-1 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) + 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 - 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) - 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 2/(1 + xs)^2 - 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^2) + 2/(1 + xs) + 
    (2*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)))*Log[t1/u1]*
   (-402*beta + 20*beta*nf + 18*beta*Pi^2 - 96*beta*Log[(t1*u1)/(M^2*mt^2)] + 
    24*Log[xs]*Log[Cos[theta/2]] + 24*beta^2*Log[xs]*Log[Cos[theta/2]] - 
    108*beta*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] + 
    6*(1 + beta^2)*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    6*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*beta^2*PolyLog[2, -(xs*Tan[theta/2]^2)]))/(9*beta) + 
 (5*(-1 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (4704*beta^2 - 320*beta^2*nf + 90*beta*Pi^2 - 468*beta^2*Pi^2 + 
    90*beta^3*Pi^2 - 7236*beta^2*Log[t1/u1] + 360*beta^2*nf*Log[t1/u1] + 
    324*beta^2*Pi^2*Log[t1/u1] - 14472*beta^2*Log[-(u1/(M*mt))] + 
    720*beta^2*nf*Log[-(u1/(M*mt))] + 648*beta^2*Pi^2*Log[-(u1/(M*mt))] + 
    4704*beta^2*Log[(t1*u1)/(M^2*mt^2)] - 192*beta^2*nf*
     Log[(t1*u1)/(M^2*mt^2)] - 1728*beta^2*Log[t1/u1]*
     Log[(t1*u1)/(M^2*mt^2)] - 3456*beta^2*Log[-(u1/(M*mt))]*
     Log[(t1*u1)/(M^2*mt^2)] + 108*Log[xs] - 402*beta*Log[xs] + 
    216*beta^2*Log[xs] - 402*beta^3*Log[xs] + 108*beta^4*Log[xs] + 
    20*beta*nf*Log[xs] + 20*beta^3*nf*Log[xs] + 45*Pi^2*Log[xs] - 
    72*beta*Pi^2*Log[xs] + 90*beta^2*Pi^2*Log[xs] - 72*beta^3*Pi^2*Log[xs] + 
    45*beta^4*Pi^2*Log[xs] - 96*beta*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
    96*beta^3*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 108*beta*Log[xs]^2 + 
    216*beta^2*Log[xs]^2 - 108*beta^3*Log[xs]^2 - 18*Log[xs]^3 + 
    36*beta*Log[xs]^3 - 36*beta^2*Log[xs]^3 + 36*beta^3*Log[xs]^3 - 
    18*beta^4*Log[xs]^3 - 1176*beta*Log[xs]*Log[Cos[theta/2]] - 
    1176*beta^3*Log[xs]*Log[Cos[theta/2]] + 48*beta*nf*Log[xs]*
     Log[Cos[theta/2]] + 48*beta^3*nf*Log[xs]*Log[Cos[theta/2]] + 
    432*beta*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    432*beta^3*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta^3*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    24*Log[xs]^2*Log[Cos[theta/2]] + 48*beta^2*Log[xs]^2*Log[Cos[theta/2]] + 
    24*beta^4*Log[xs]^2*Log[Cos[theta/2]] - 54*(1 + beta^2)*
     (-2*beta + (1 + beta^2)*Log[xs])*PolyLog[2, 
      (-1 + beta)^2/(1 + beta)^2] - 108*beta*(-49*beta + 2*beta*nf + 
      18*beta*Log[t1/u1] + 36*beta*Log[-(u1/(M*mt))] + Log[xs] + 
      beta^2*Log[xs])*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
    294*beta*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    294*beta^3*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^3*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    108*beta*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    108*beta^3*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^2*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*beta^4*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    294*beta*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    294*beta^3*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^3*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    108*beta*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    108*beta^3*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^2*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*beta^4*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    54*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    108*beta^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    54*beta^4*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 54*Zeta[3] + 
    1836*beta^2*Zeta[3] - 54*beta^4*Zeta[3]))/(324*beta^2) + 
 ((-3 - 2/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2) - 
    2/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2 + 
    3/(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2) + 
    1/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(2*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(2*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) - 4/(1 + xs)^4 - 
    (8*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^4) - 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^4) + 8/(1 + xs)^3 + 
    (16*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^3) + 
    (8*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^3) - 
    (12*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)^2) - 
    (4*M^4*(-(mt^2/M^2) - t1/M^2)^2)/(mt^4*(1 + xs)^2) - 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 4/(1 + xs) + 
    (4*M^2*(-(mt^2/M^2) - t1/M^2))/(mt^2*(1 + xs)) + 
    4/((1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) + 
    4/((1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (4704*beta^2 - 320*beta^2*nf + 90*beta*Pi^2 - 468*beta^2*Pi^2 + 
    90*beta^3*Pi^2 - 7236*beta^2*Log[t1/u1] + 360*beta^2*nf*Log[t1/u1] + 
    324*beta^2*Pi^2*Log[t1/u1] - 14472*beta^2*Log[-(u1/(M*mt))] + 
    720*beta^2*nf*Log[-(u1/(M*mt))] + 648*beta^2*Pi^2*Log[-(u1/(M*mt))] + 
    4704*beta^2*Log[(t1*u1)/(M^2*mt^2)] - 192*beta^2*nf*
     Log[(t1*u1)/(M^2*mt^2)] - 1728*beta^2*Log[t1/u1]*
     Log[(t1*u1)/(M^2*mt^2)] - 3456*beta^2*Log[-(u1/(M*mt))]*
     Log[(t1*u1)/(M^2*mt^2)] + 108*Log[xs] - 402*beta*Log[xs] + 
    216*beta^2*Log[xs] - 402*beta^3*Log[xs] + 108*beta^4*Log[xs] + 
    20*beta*nf*Log[xs] + 20*beta^3*nf*Log[xs] + 45*Pi^2*Log[xs] - 
    72*beta*Pi^2*Log[xs] + 90*beta^2*Pi^2*Log[xs] - 72*beta^3*Pi^2*Log[xs] + 
    45*beta^4*Pi^2*Log[xs] - 96*beta*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 
    96*beta^3*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] - 108*beta*Log[xs]^2 + 
    216*beta^2*Log[xs]^2 - 108*beta^3*Log[xs]^2 - 18*Log[xs]^3 + 
    36*beta*Log[xs]^3 - 36*beta^2*Log[xs]^3 + 36*beta^3*Log[xs]^3 - 
    18*beta^4*Log[xs]^3 - 1176*beta*Log[xs]*Log[Cos[theta/2]] - 
    1176*beta^3*Log[xs]*Log[Cos[theta/2]] + 48*beta*nf*Log[xs]*
     Log[Cos[theta/2]] + 48*beta^3*nf*Log[xs]*Log[Cos[theta/2]] + 
    432*beta*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    432*beta^3*Log[t1/u1]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    864*beta^3*Log[-(u1/(M*mt))]*Log[xs]*Log[Cos[theta/2]] + 
    24*Log[xs]^2*Log[Cos[theta/2]] + 48*beta^2*Log[xs]^2*Log[Cos[theta/2]] + 
    24*beta^4*Log[xs]^2*Log[Cos[theta/2]] - 54*(1 + beta^2)*
     (-2*beta + (1 + beta^2)*Log[xs])*PolyLog[2, 
      (-1 + beta)^2/(1 + beta)^2] - 108*beta*(-49*beta + 2*beta*nf + 
      18*beta*Log[t1/u1] + 36*beta*Log[-(u1/(M*mt))] + Log[xs] + 
      beta^2*Log[xs])*PolyLog[2, 1 - (t1*u1)/(M^2*mt^2)] - 
    294*beta*PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    294*beta^3*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^3*nf*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    108*beta*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    108*beta^3*Log[t1/u1]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    12*beta^2*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    6*beta^4*Log[xs]*PolyLog[2, -(Tan[theta/2]^2/xs)] + 
    294*beta*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    294*beta^3*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^3*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    108*beta*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    108*beta^3*Log[t1/u1]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    216*beta^3*Log[-(u1/(M*mt))]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    12*beta^2*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    6*beta^4*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    54*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    108*beta^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 
    54*beta^4*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 54*Zeta[3] + 
    1836*beta^2*Zeta[3] - 54*beta^4*Zeta[3]))/(36*beta^2) + 
 (4*(-1/9 - 2/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) - 
    2/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)^2) + 
    1/(3*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    1/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*xs) + 
    1/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*xs) + 
    xs/(18*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)) + 
    xs/(18*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)) + 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)^2) + 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)^2) - 
    4/(9*(1 + (M^2*(-(mt^2/M^2) - t1/M^2))/mt^2)*(1 + xs)) - 
    4/(9*(1 + (M^2*(1 - mt^2/M^2 + t1/M^2))/mt^2)*(1 + xs)))*
   (588*beta^2 - 40*beta^2*nf - 90*beta*Pi^2 + 144*beta^2*Pi^2 - 
    90*beta^3*Pi^2 + 588*beta^2*Log[(t1*u1)/(M^2*mt^2)] - 
    24*beta^2*nf*Log[(t1*u1)/(M^2*mt^2)] - 108*Log[xs] + 402*beta*Log[xs] - 
    216*beta^2*Log[xs] + 402*beta^3*Log[xs] - 108*beta^4*Log[xs] - 
    20*beta*nf*Log[xs] - 20*beta^3*nf*Log[xs] - 45*Pi^2*Log[xs] + 
    72*beta*Pi^2*Log[xs] - 90*beta^2*Pi^2*Log[xs] + 72*beta^3*Pi^2*Log[xs] - 
    45*beta^4*Pi^2*Log[xs] + 96*beta*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] + 
    96*beta^3*Log[(t1*u1)/(M^2*mt^2)]*Log[xs] + 108*beta*Log[xs]^2 - 
    216*beta^2*Log[xs]^2 + 108*beta^3*Log[xs]^2 + 18*Log[xs]^3 - 
    36*beta*Log[xs]^3 + 36*beta^2*Log[xs]^3 - 36*beta^3*Log[xs]^3 + 
    18*beta^4*Log[xs]^3 + 1176*beta*Log[xs]*Log[Cos[theta/2]] + 
    1176*beta^3*Log[xs]*Log[Cos[theta/2]] - 48*beta*nf*Log[xs]*
     Log[Cos[theta/2]] - 48*beta^3*nf*Log[xs]*Log[Cos[theta/2]] + 
    192*Log[xs]^2*Log[Cos[theta/2]] + 384*beta^2*Log[xs]^2*
     Log[Cos[theta/2]] + 192*beta^4*Log[xs]^2*Log[Cos[theta/2]] + 
    54*(1 + beta^2)*(-2*beta + (1 + beta^2)*Log[xs])*
     PolyLog[2, (-1 + beta)^2/(1 + beta)^2] + 
    6*(1 + beta^2)*(beta*(49 - 2*nf) + 8*(1 + beta^2)*Log[xs])*
     PolyLog[2, -(Tan[theta/2]^2/xs)] - 
    294*beta*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    294*beta^3*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    12*beta*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] + 
    12*beta^3*nf*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    48*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    96*beta^2*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    48*beta^4*Log[xs]*PolyLog[2, -(xs*Tan[theta/2]^2)] - 
    54*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
    108*beta^2*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] - 
    54*beta^4*PolyLog[3, (-1 + beta)^2/(1 + beta)^2] + 54*Zeta[3] + 
    108*beta^2*Zeta[3] + 54*beta^4*Zeta[3]))/(9*beta^2)

