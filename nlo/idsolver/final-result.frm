
#-
#include decls
#include out

cf M13 M14 M23 M24 M5;

* NLO soft functions, Antonia Thesis, Eq. (8.13)
l K13 = PR6(1,1,1,1,0,0);
l K14 = PR7(1,1,1,1,0,0);
l K23 = PR8(1,1,1,1,0,0);
l K24 = PR9(1,1,1,1,0,0);
l K33 = PR3(2,1,1,0,0,0);
l K44 = PR4(2,1,1,0,0,0);
l K34 = PR10(1,1,1,1,0,0);

l K33simple = 2*c*qT2*PR3(2,1,1,0,0,0);
l K44simple = 2*c*qT2*PR4(2,1,1,0,0,0);

* substitute prototypes with integrals
#include finalsubstitutions

* represent the result in terms of Masters from Antonia Thesis, Eq. (8.16)
id I(0,-1,1,0,1,1) = M13;
id I(0,-1,0,1,1,1) = M14;
id I(0,0,1,-1,1,1) = M13+M23;
id I(0,0,-1,1,1,1) = M14+M24;
id I(0,0,1,1,1,1) = M5;

id ep = 2-d*2^-1;

b M13, M14, M23, M24, M5;

print;
.end
