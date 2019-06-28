setxm[xm_] := Block[{}, b = Sqrt[1-4*xm]; x = (1-b)/(1+b); xp1 = 1+x; xm1 = 1-x;];
setxt[xt_] := Block[{}, yt = (xt-xm)/xm; zu = (1-xt-xm)/xm; yt1 = yt+1; zu1 = zu+1;];

HPLx[x_] := Block[
    {},
    Hmx = Log[1+x]; H0x = Log[x]; Hpx = -Log[1-x];
    Hmmx = Hmx^2/2; H0mx = -PolyLog[2,-x]; Hm0x = -H0mx + H0x*Hmx;
    H00x = H0x^2/2; H0px = PolyLog[2,x]; Hp0x = -H0px + H0x*Hpx;]

HPLyz[yt_, zu_] := Block[
    {},
    Hmy = Log[1+yt]; Hmmy = Hmy^2/2; H0my = -PolyLog[2,-yt];
    Hmz = Log[1+zu]; Hmmz = Hmz^2/2; H0mz = -PolyLog[2,-zu];]

<<Umatrix.m

<<hard1qq.m
Hqq0 = N[Hqq0];
Hqq1half = N[Hqq1half /. {cI -> I, z2 -> Zeta[2], z3 -> Zeta[3]}];

<<hard1gg.m
Hgg0 = N[Hgg0];
Hgg1half = N[Hgg1half /. {cI -> I, z2 -> Zeta[2], z3 -> Zeta[3]}];

<<soft.m
Sqq0 = N[Sqq0];
Sqq1 = N[Sqq1 /. {z2 -> Zeta[2]}];
Sqq1p = N[Sqq1p /. {z2 -> Zeta[2]}];
Sgg0 = N[Sgg0];
Sgg1 = N[Sgg1 /. {z2 -> Zeta[2]}];
Sgg1p = N[Sgg1p /. {z2 -> Zeta[2]}];
