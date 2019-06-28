// Generated by GenerateCppCodeHardFunction.m on Mon 15 Oct 2018 10:50:50

#include "hard.hh"

void hardqq0 (double M, double theta, double mt, double mu, double hardmatrix[2][2]) {

  double beta = sqrt(1.0 - 4.0*pow(mt,2)/pow(M,2));
  double xs = (1.0 - beta)/(1.0 + beta);
  double t1 = -((1.0 - beta*cos(theta))/sqrt(1.0 - pow(beta,2)))*mt*M;
  double xp1 = 1.0/(xs+1.0);
  double xp2 = pow(xp1,2);
  double xp3 = pow(xp1,3);
  double xp4 = pow(xp1,4);
  double xm = pow(mt,2)/pow(M,2);
  double xt = -t1/pow(M,2);
  double yt = (xt-xm)/xm;
  hardmatrix[0][0] =
    0;
  hardmatrix[0][1] =
    0;
  hardmatrix[1][0] =
    0;
  hardmatrix[1][1] =
    2*(1 + 2*xp4 - 2*xp1*yt + 4*xp4*yt + 2*xp4*Power(yt,2) - 4*xp3*Power(1 + yt,2) + 2*xp2*(1 + 3*yt + Power(yt,2)));

};

void hardqq1 (double M, double theta, double mt, double mu, double hardmatrix[2][2]) {

  double beta = sqrt(1.0 - 4.0*pow(mt,2)/pow(M,2));
  double xs = (1.0 - beta)/(1.0 + beta);
  double t1 = -((1.0 - beta*cos(theta))/sqrt(1.0 - pow(beta,2)))*mt*M;
  double xp1 = 1.0/(xs+1.0);
  double xp2 = pow(xp1,2);
  double xp3 = pow(xp1,3);
  double xp4 = pow(xp1,4);
  double xp5 = pow(xp1,5);
  double xp6 = pow(xp1,6);
  double xp7 = pow(xp1,7);

  double xm1 = 1.0/(1.0-xs);
  double xm2 = pow(xm1,2);
  double xm3 = pow(xm1,3);
  double xm4 = pow(xm1,4);
  double xm5 = pow(xm1,5);

  double Hmx = log(1.0+xs);
  double H0x = log(xs);
  double Hpx = -log(1.0-xs);
  double Hmmx = pow(Hmx,2)/2.0;
  double H0mx = -PolyLog(2,-xs);
  double Hm0x = -H0mx + H0x*Hmx;
  double H00x = pow(H0x,2)/2.0;
  double H0px = PolyLog(2,xs);
  double Hp0x = -H0px + H0x*Hpx;

  double xm = pow(mt,2)/pow(M,2);
  double xt = -t1/pow(M,2);
  double yt = (xt-xm)/xm;
  double zu = (1.0-xt-xm)/xm;
  double Hmy = log(1.0+yt);
  double Hmmy = pow(Hmy,2)/2.0;
  double H0my = -PolyLog(2,-yt);
  double Hmz = log(1.0+zu);
  double Hmmz = pow(Hmz,2)/2.0;
  double H0mz = -PolyLog(2,-zu);

  double Lmu2m2 = 2*log(mu/mt);
  double z2 = Zeta(2);


  hardmatrix[0][0] =
    0;
  hardmatrix[0][1] =
    (8*H0my)/9. + (8*H0mz)/9. + (8*H0x)/9. + (16*Hm0x)/9. - (32*Hmmx)/9. - (16*Hmmy)/9. - (16*Hmmz)/9. - (16*Hmx)/9. + (8*Hmy)/9. + (8*H0x*Hmy)/9. - (16*Hmx*Hmy)/9. - (8*H0x*Hmz)/3. + (16*Hmx*Hmz)/3. + (8*H00x*xm1)/9. - (16*H0mx*xm1)/9. - (16*H0x*xm1)/9. + (32*Hmx*xm1)/9. - (8*H00x*xm2)/3. + (16*H0mx*xm2)/3. + (16*H0x*xm2)/9. - (32*Hmx*xm2)/9. + (16*H00x*xm3)/9. - (32*H0mx*xm3)/9. - (8*H00x*xp1)/9. + (16*H0mx*xp1)/9. - (32*H0mz*xp1)/9. - (32*Hm0x*xp1)/9. + (64*Hmmx*xp1)/9. + (64*Hmmz*xp1)/9. - (16*Hmy*xp1)/9. + (32*H0x*Hmz*xp1)/9. - (64*Hmx*Hmz*xp1)/9. + (8*H00x*xp2)/9. - (16*H0mx*xp2)/9. + (32*H0mz*xp2)/9. + (32*Hm0x*xp2)/9. - (64*Hmmx*xp2)/9. - (64*Hmmz*xp2)/9. + (16*Hmy*xp2)/9. + (32*H0x*Hmy*xp2)/9. - (64*Hmx*Hmy*xp2)/9. - (64*H0x*Hmz*xp2)/9. + (128*Hmx*Hmz*xp2)/9. - (16*H00x*xp3)/9. + (32*H0mx*xp3)/9. - (64*H0x*Hmy*xp3)/9. + (128*Hmx*Hmy*xp3)/9. + (64*H0x*Hmz*xp3)/9. - (128*Hmx*Hmz*xp3)/9. + (32*H0x*Hmy*xp4)/9. - (64*Hmx*Hmy*xp4)/9. - (32*H0x*Hmz*xp4)/9. + (64*Hmx*Hmz*xp4)/9. - (8*Hmy)/(9.*yt) - (8*Hmy*xp1)/(9.*yt) + (8*Hmy*xp2)/(9.*yt) + (16*H0x*xm1*yt)/9. - (32*Hmx*xm1*yt)/9. + (8*H00x*xm2*yt)/3. - (16*H0mx*xm2*yt)/3. - (16*H0x*xm2*yt)/9. + (32*Hmx*xm2*yt)/9. - (16*H00x*xm3*yt)/9. + (32*H0mx*xm3*yt)/9. - (16*H0my*xp1*yt)/9. - (16*H0mz*xp1*yt)/9. - (32*Hm0x*xp1*yt)/9. + (64*Hmmx*xp1*yt)/9. + (32*Hmmy*xp1*yt)/9. + (32*Hmmz*xp1*yt)/9. - (8*Hmy*xp1*yt)/9. - (16*H0x*Hmy*xp1*yt)/9. + (32*Hmx*Hmy*xp1*yt)/9. - (8*Hmz*xp1*yt)/9. + (16*H0x*Hmz*xp1*yt)/3. - (32*Hmx*Hmz*xp1*yt)/3. + (8*H00x*xp2*yt)/9. - (16*H0mx*xp2*yt)/9. + (16*H0my*xp2*yt)/9. + (16*H0mz*xp2*yt)/9. + (32*Hm0x*xp2*yt)/9. - (64*Hmmx*xp2*yt)/9. - (32*Hmmy*xp2*yt)/9. - (32*Hmmz*xp2*yt)/9. + (8*Hmy*xp2*yt)/9. + (80*H0x*Hmy*xp2*yt)/9. - (160*Hmx*Hmy*xp2*yt)/9. + (8*Hmz*xp2*yt)/9. - (112*H0x*Hmz*xp2*yt)/9. + (224*Hmx*Hmz*xp2*yt)/9. - (16*H00x*xp3*yt)/9. + (32*H0mx*xp3*yt)/9. - (128*H0x*Hmy*xp3*yt)/9. + (256*Hmx*Hmy*xp3*yt)/9. + (128*H0x*Hmz*xp3*yt)/9. - (256*Hmx*Hmz*xp3*yt)/9. + (64*H0x*Hmy*xp4*yt)/9. - (128*Hmx*Hmy*xp4*yt)/9. - (64*H0x*Hmz*xp4*yt)/9. + (128*Hmx*Hmz*xp4*yt)/9. + (32*H0x*Hmy*xp2*Power(yt,2))/9. - (64*Hmx*Hmy*xp2*Power(yt,2))/9. - (32*H0x*Hmz*xp2*Power(yt,2))/9. + (64*Hmx*Hmz*xp2*Power(yt,2))/9. - (64*H0x*Hmy*xp3*Power(yt,2))/9. + (128*Hmx*Hmy*xp3*Power(yt,2))/9. + (64*H0x*Hmz*xp3*Power(yt,2))/9. - (128*Hmx*Hmz*xp3*Power(yt,2))/9. + (32*H0x*Hmy*xp4*Power(yt,2))/9. - (64*Hmx*Hmy*xp4*Power(yt,2))/9. - (32*H0x*Hmz*xp4*Power(yt,2))/9. + (64*Hmx*Hmz*xp4*Power(yt,2))/9. + Lmu2m2*((16*Hmy)/9. - (16*Hmz)/9. + (32*Hmy*xp2)/9. - (32*Hmz*xp2)/9. - (64*Hmy*xp3)/9. + (64*Hmz*xp3)/9. + (32*Hmy*xp4)/9. - (32*Hmz*xp4)/9. - (32*Hmy*xp1*yt)/9. + (32*Hmz*xp1*yt)/9. + (32*Hmy*xp2*yt)/3. - (32*Hmz*xp2*yt)/3. - (128*Hmy*xp3*yt)/9. + (128*Hmz*xp3*yt)/9. + (64*Hmy*xp4*yt)/9. - (64*Hmz*xp4*yt)/9. + (32*Hmy*xp2*Power(yt,2))/9. - (32*Hmz*xp2*Power(yt,2))/9. - (64*Hmy*xp3*Power(yt,2))/9. + (64*Hmz*xp3*Power(yt,2))/9. + (32*Hmy*xp4*Power(yt,2))/9. - (32*Hmz*xp4*Power(yt,2))/9.) + (8*xm1*z2)/9. - (8*xm2*z2)/3. + (16*xm3*z2)/9. - (8*xp1*z2)/9. + (8*xp2*z2)/9. - (16*xp3*z2)/9. + (8*xm2*yt*z2)/3. - (16*xm3*yt*z2)/9. + (8*xp2*yt*z2)/9. - (16*xp3*yt*z2)/9. + (8*Hmz)/(9.*zu) + (8*Hmz*xp1)/(9.*zu) - (8*Hmz*xp2)/(9.*zu);
  hardmatrix[1][0] =
    (8*H0my)/9. + (8*H0mz)/9. + (8*H0x)/9. + (16*Hm0x)/9. - (32*Hmmx)/9. - (16*Hmmy)/9. - (16*Hmmz)/9. - (16*Hmx)/9. + (8*Hmy)/9. + (8*H0x*Hmy)/9. - (16*Hmx*Hmy)/9. - (8*H0x*Hmz)/3. + (16*Hmx*Hmz)/3. + (8*H00x*xm1)/9. - (16*H0mx*xm1)/9. - (16*H0x*xm1)/9. + (32*Hmx*xm1)/9. - (8*H00x*xm2)/3. + (16*H0mx*xm2)/3. + (16*H0x*xm2)/9. - (32*Hmx*xm2)/9. + (16*H00x*xm3)/9. - (32*H0mx*xm3)/9. - (8*H00x*xp1)/9. + (16*H0mx*xp1)/9. - (32*H0mz*xp1)/9. - (32*Hm0x*xp1)/9. + (64*Hmmx*xp1)/9. + (64*Hmmz*xp1)/9. - (16*Hmy*xp1)/9. + (32*H0x*Hmz*xp1)/9. - (64*Hmx*Hmz*xp1)/9. + (8*H00x*xp2)/9. - (16*H0mx*xp2)/9. + (32*H0mz*xp2)/9. + (32*Hm0x*xp2)/9. - (64*Hmmx*xp2)/9. - (64*Hmmz*xp2)/9. + (16*Hmy*xp2)/9. + (32*H0x*Hmy*xp2)/9. - (64*Hmx*Hmy*xp2)/9. - (64*H0x*Hmz*xp2)/9. + (128*Hmx*Hmz*xp2)/9. - (16*H00x*xp3)/9. + (32*H0mx*xp3)/9. - (64*H0x*Hmy*xp3)/9. + (128*Hmx*Hmy*xp3)/9. + (64*H0x*Hmz*xp3)/9. - (128*Hmx*Hmz*xp3)/9. + (32*H0x*Hmy*xp4)/9. - (64*Hmx*Hmy*xp4)/9. - (32*H0x*Hmz*xp4)/9. + (64*Hmx*Hmz*xp4)/9. - (8*Hmy)/(9.*yt) - (8*Hmy*xp1)/(9.*yt) + (8*Hmy*xp2)/(9.*yt) + (16*H0x*xm1*yt)/9. - (32*Hmx*xm1*yt)/9. + (8*H00x*xm2*yt)/3. - (16*H0mx*xm2*yt)/3. - (16*H0x*xm2*yt)/9. + (32*Hmx*xm2*yt)/9. - (16*H00x*xm3*yt)/9. + (32*H0mx*xm3*yt)/9. - (16*H0my*xp1*yt)/9. - (16*H0mz*xp1*yt)/9. - (32*Hm0x*xp1*yt)/9. + (64*Hmmx*xp1*yt)/9. + (32*Hmmy*xp1*yt)/9. + (32*Hmmz*xp1*yt)/9. - (8*Hmy*xp1*yt)/9. - (16*H0x*Hmy*xp1*yt)/9. + (32*Hmx*Hmy*xp1*yt)/9. - (8*Hmz*xp1*yt)/9. + (16*H0x*Hmz*xp1*yt)/3. - (32*Hmx*Hmz*xp1*yt)/3. + (8*H00x*xp2*yt)/9. - (16*H0mx*xp2*yt)/9. + (16*H0my*xp2*yt)/9. + (16*H0mz*xp2*yt)/9. + (32*Hm0x*xp2*yt)/9. - (64*Hmmx*xp2*yt)/9. - (32*Hmmy*xp2*yt)/9. - (32*Hmmz*xp2*yt)/9. + (8*Hmy*xp2*yt)/9. + (80*H0x*Hmy*xp2*yt)/9. - (160*Hmx*Hmy*xp2*yt)/9. + (8*Hmz*xp2*yt)/9. - (112*H0x*Hmz*xp2*yt)/9. + (224*Hmx*Hmz*xp2*yt)/9. - (16*H00x*xp3*yt)/9. + (32*H0mx*xp3*yt)/9. - (128*H0x*Hmy*xp3*yt)/9. + (256*Hmx*Hmy*xp3*yt)/9. + (128*H0x*Hmz*xp3*yt)/9. - (256*Hmx*Hmz*xp3*yt)/9. + (64*H0x*Hmy*xp4*yt)/9. - (128*Hmx*Hmy*xp4*yt)/9. - (64*H0x*Hmz*xp4*yt)/9. + (128*Hmx*Hmz*xp4*yt)/9. + (32*H0x*Hmy*xp2*Power(yt,2))/9. - (64*Hmx*Hmy*xp2*Power(yt,2))/9. - (32*H0x*Hmz*xp2*Power(yt,2))/9. + (64*Hmx*Hmz*xp2*Power(yt,2))/9. - (64*H0x*Hmy*xp3*Power(yt,2))/9. + (128*Hmx*Hmy*xp3*Power(yt,2))/9. + (64*H0x*Hmz*xp3*Power(yt,2))/9. - (128*Hmx*Hmz*xp3*Power(yt,2))/9. + (32*H0x*Hmy*xp4*Power(yt,2))/9. - (64*Hmx*Hmy*xp4*Power(yt,2))/9. - (32*H0x*Hmz*xp4*Power(yt,2))/9. + (64*Hmx*Hmz*xp4*Power(yt,2))/9. + Lmu2m2*((16*Hmy)/9. - (16*Hmz)/9. + (32*Hmy*xp2)/9. - (32*Hmz*xp2)/9. - (64*Hmy*xp3)/9. + (64*Hmz*xp3)/9. + (32*Hmy*xp4)/9. - (32*Hmz*xp4)/9. - (32*Hmy*xp1*yt)/9. + (32*Hmz*xp1*yt)/9. + (32*Hmy*xp2*yt)/3. - (32*Hmz*xp2*yt)/3. - (128*Hmy*xp3*yt)/9. + (128*Hmz*xp3*yt)/9. + (64*Hmy*xp4*yt)/9. - (64*Hmz*xp4*yt)/9. + (32*Hmy*xp2*Power(yt,2))/9. - (32*Hmz*xp2*Power(yt,2))/9. - (64*Hmy*xp3*Power(yt,2))/9. + (64*Hmz*xp3*Power(yt,2))/9. + (32*Hmy*xp4*Power(yt,2))/9. - (32*Hmz*xp4*Power(yt,2))/9.) + (8*xm1*z2)/9. - (8*xm2*z2)/3. + (16*xm3*z2)/9. - (8*xp1*z2)/9. + (8*xp2*z2)/9. - (16*xp3*z2)/9. + (8*xm2*yt*z2)/3. - (16*xm3*yt*z2)/9. + (8*xp2*yt*z2)/9. - (16*xp3*yt*z2)/9. + (8*Hmz)/(9.*zu) + (8*Hmz*xp1)/(9.*zu) - (8*Hmz*xp2)/(9.*zu);
  hardmatrix[1][1] =
    22.666666666666668 - (8*H0mx)/3. + (28*H0my)/3. - (8*H0mz)/3. + (20*H0x)/3. - 20*Hm0x + 40*Hmmx - (56*Hmmy)/3. + (16*Hmmz)/3. - 12*Hmx + (28*Hmy)/3. + (28*H0x*Hmy)/3. - (56*Hmx*Hmy)/3. + 8*H0x*Hmz - 16*Hmx*Hmz - (8*Hp0x)/3. - 6*xm1 + (355*H00x*xm1)/12. - (337*H0mx*xm1)/6. - (37*H0x*xm1)/2. + (112*Hmx*xm1)/3. + 3*Hp0x*xm1 + 6*xm2 - (83*H00x*xm2)/2. + 83*H0mx*xm2 + (164*H0x*xm2)/3. - (328*Hmx*xm2)/3. + (263*H00x*xm3)/3. - (526*H0mx*xm3)/3. - 72*H0x*xm3 + 144*Hmx*xm3 - 90*H00x*xm4 + 180*H0mx*xm4 + 36*H0x*xm4 - 72*Hmx*xm4 + 36*H00x*xm5 - 72*H0mx*xm5 - (50*xp1)/3. - (13*H00x*xp1)/12. + (31*H0mx*xp1)/6. + (32*H0mz*xp1)/3. + (97*H0x*xp1)/6. + (32*Hm0x*xp1)/3. - (64*Hmmx*xp1)/3. - (64*Hmmz*xp1)/3. - 24*Hmx*xp1 - (56*Hmy*xp1)/3. - (32*H0x*Hmz*xp1)/3. + (64*Hmx*Hmz*xp1)/3. + 3*Hp0x*xp1 + 38*xp2 + (38*H00x*xp2)/3. - 30*H0mx*xp2 - (32*H0mz*xp2)/3. - 21*H0x*xp2 - 64*Hm0x*xp2 + 128*Hmmx*xp2 + (64*Hmmz*xp2)/3. + (40*Hmx*xp2)/3. + (56*Hmy*xp2)/3. + (112*H0x*Hmy*xp2)/3. - (224*Hmx*Hmy*xp2)/3. + (64*H0x*Hmz*xp2)/3. - (128*Hmx*Hmz*xp2)/3. - (14*Hp0x*xp2)/3. - 64*xp3 - 36*H00x*xp3 + 84*H0mx*xp3 + (2*H0x*xp3)/3. + (320*Hm0x*xp3)/3. - (640*Hmmx*xp3)/3. + (64*Hmx*xp3)/3. - (224*H0x*Hmy*xp3)/3. + (448*Hmx*Hmy*xp3)/3. - (64*H0x*Hmz*xp3)/3. + (128*Hmx*Hmz*xp3)/3. + 12*Hp0x*xp3 + (256*xp4)/3. + 20*H00x*xp4 - (160*H0mx*xp4)/3. - (104*H0x*xp4)/3. - (160*Hm0x*xp4)/3. + (320*Hmmx*xp4)/3. - (32*Hmx*xp4)/3. + (112*H0x*Hmy*xp4)/3. - (224*Hmx*Hmy*xp4)/3. + (32*H0x*Hmz*xp4)/3. - (64*Hmx*Hmz*xp4)/3. - (40*Hp0x*xp4)/3. - 64*xp5 + (8*H00x*xp5)/3. + (272*H0x*xp5)/3. + (16*Hp0x*xp5)/3. + (64*xp6)/3. - (224*H0x*xp6)/3. + (64*H0x*xp7)/3. - (28*Hmy)/(3.*yt) - (28*Hmy*xp1)/(3.*yt) + (28*Hmy*xp2)/(3.*yt) + 12*xm1*yt - (29*H00x*xm1*yt)/6. + 9*H0mx*xm1*yt + (55*H0x*xm1*yt)/3. - (112*Hmx*xm1*yt)/3. - (2*Hp0x*xm1*yt)/3. - 12*xm2*yt + 55*H00x*xm2*yt - 110*H0mx*xm2*yt - (272*H0x*xm2*yt)/3. + (544*Hmx*xm2*yt)/3. - (470*H00x*xm3*yt)/3. + (940*H0mx*xm3*yt)/3. + 144*H0x*xm3*yt - 288*Hmx*xm3*yt + 180*H00x*xm4*yt - 360*H0mx*xm4*yt - 72*H0x*xm4*yt + 144*Hmx*xm4*yt - 72*H00x*xm5*yt + 144*H0mx*xm5*yt - (100*xp1*yt)/3. - (29*H00x*xp1*yt)/6. + (43*H0mx*xp1*yt)/3. - (56*H0my*xp1*yt)/3. + (16*H0mz*xp1*yt)/3. + 17*H0x*xp1*yt + 40*Hm0x*xp1*yt - 80*Hmmx*xp1*yt + (112*Hmmy*xp1*yt)/3. - (32*Hmmz*xp1*yt)/3. - (112*Hmx*xp1*yt)/3. - (28*Hmy*xp1*yt)/3. - (56*H0x*Hmy*xp1*yt)/3. + (112*Hmx*Hmy*xp1*yt)/3. + (8*Hmz*xp1*yt)/3. - 16*H0x*Hmz*xp1*yt + 32*Hmx*Hmz*xp1*yt + (14*Hp0x*xp1*yt)/3. + (292*xp2*yt)/3. + (62*H00x*xp2*yt)/3. - (176*H0mx*xp2*yt)/3. + (56*H0my*xp2*yt)/3. - (16*H0mz*xp2*yt)/3. - (22*H0x*xp2*yt)/3. - (440*Hm0x*xp2*yt)/3. + (880*Hmmx*xp2*yt)/3. - (112*Hmmy*xp2*yt)/3. + (32*Hmmz*xp2*yt)/3. + 16*Hmx*xp2*yt + (28*Hmy*xp2*yt)/3. + (280*H0x*Hmy*xp2*yt)/3. - (560*Hmx*Hmy*xp2*yt)/3. - (8*Hmz*xp2*yt)/3. + (112*H0x*Hmz*xp2*yt)/3. - (224*Hmx*Hmz*xp2*yt)/3. - (52*Hp0x*xp2*yt)/3. - (512*xp3*yt)/3. - (188*H00x*xp3*yt)/3. + (464*H0mx*xp3*yt)/3. + (52*H0x*xp3*yt)/3. + (640*Hm0x*xp3*yt)/3. - (1280*Hmmx*xp3*yt)/3. + (128*Hmx*xp3*yt)/3. - (448*H0x*Hmy*xp3*yt)/3. + (896*Hmx*Hmy*xp3*yt)/3. - (128*H0x*Hmz*xp3*yt)/3. + (256*Hmx*Hmz*xp3*yt)/3. + (88*Hp0x*xp3*yt)/3. + 192*xp4*yt + 40*H00x*xp4*yt - (320*H0mx*xp4*yt)/3. - (368*H0x*xp4*yt)/3. - (320*Hm0x*xp4*yt)/3. + (640*Hmmx*xp4*yt)/3. - (64*Hmx*xp4*yt)/3. + (224*H0x*Hmy*xp4*yt)/3. - (448*Hmx*Hmy*xp4*yt)/3. + (64*H0x*Hmz*xp4*yt)/3. - (128*Hmx*Hmz*xp4*yt)/3. - (80*Hp0x*xp4*yt)/3. - 128*xp5*yt + (16*H00x*xp5*yt)/3. + (608*H0x*xp5*yt)/3. + (32*Hp0x*xp5*yt)/3. + (128*xp6*yt)/3. - (448*H0x*xp6*yt)/3. + (128*H0x*xp7*yt)/3. - 6*xm1*Power(yt,2) + (11*H00x*xm1*Power(yt,2))/12. - (3*H0mx*xm1*Power(yt,2))/2. + (73*H0x*xm1*Power(yt,2))/6. - 24*Hmx*xm1*Power(yt,2) + (Hp0x*xm1*Power(yt,2))/3. + 6*xm2*Power(yt,2) + (9*H00x*xm2*Power(yt,2))/2. - 9*H0mx*xm2*Power(yt,2) + 24*H0x*xm2*Power(yt,2) - 48*Hmx*xm2*Power(yt,2) + 57*H00x*xm3*Power(yt,2) - 114*H0mx*xm3*Power(yt,2) - 72*H0x*xm3*Power(yt,2) + 144*Hmx*xm3*Power(yt,2) - 90*H00x*xm4*Power(yt,2) + 180*H0mx*xm4*Power(yt,2) + 36*H0x*xm4*Power(yt,2) - 72*Hmx*xm4*Power(yt,2) + 36*H00x*xm5*Power(yt,2) - 72*H0mx*xm5*Power(yt,2) - 6*xp1*Power(yt,2) + (11*H00x*xp1*Power(yt,2))/12. - (3*H0mx*xp1*Power(yt,2))/2. + (73*H0x*xp1*Power(yt,2))/6. - 24*Hmx*xp1*Power(yt,2) + (Hp0x*xp1*Power(yt,2))/3. + (82*xp2*Power(yt,2))/3. - (8*H00x*xp2*Power(yt,2))/3. + (2*H0mx*xp2*Power(yt,2))/3. - 5*H0x*xp2*Power(yt,2) - (160*Hm0x*xp2*Power(yt,2))/3. + (320*Hmmx*xp2*Power(yt,2))/3. + (40*Hmx*xp2*Power(yt,2))/3. + (112*H0x*Hmy*xp2*Power(yt,2))/3. - (224*Hmx*Hmy*xp2*Power(yt,2))/3. + (32*H0x*Hmz*xp2*Power(yt,2))/3. - (64*Hmx*Hmz*xp2*Power(yt,2))/3. - (14*Hp0x*xp2*Power(yt,2))/3. - 64*xp3*Power(yt,2) - (88*H00x*xp3*Power(yt,2))/3. + (212*H0mx*xp3*Power(yt,2))/3. - 10*H0x*xp3*Power(yt,2) + (320*Hm0x*xp3*Power(yt,2))/3. - (640*Hmmx*xp3*Power(yt,2))/3. + (64*Hmx*xp3*Power(yt,2))/3. - (224*H0x*Hmy*xp3*Power(yt,2))/3. + (448*Hmx*Hmy*xp3*Power(yt,2))/3. - (64*H0x*Hmz*xp3*Power(yt,2))/3. + (128*Hmx*Hmz*xp3*Power(yt,2))/3. + 12*Hp0x*xp3*Power(yt,2) + (256*xp4*Power(yt,2))/3. + 20*H00x*xp4*Power(yt,2) - (160*H0mx*xp4*Power(yt,2))/3. - (104*H0x*xp4*Power(yt,2))/3. - (160*Hm0x*xp4*Power(yt,2))/3. + (320*Hmmx*xp4*Power(yt,2))/3. - (32*Hmx*xp4*Power(yt,2))/3. + (112*H0x*Hmy*xp4*Power(yt,2))/3. - (224*Hmx*Hmy*xp4*Power(yt,2))/3. + (32*H0x*Hmz*xp4*Power(yt,2))/3. - (64*Hmx*Hmz*xp4*Power(yt,2))/3. - (40*Hp0x*xp4*Power(yt,2))/3. - 64*xp5*Power(yt,2) + (8*H00x*xp5*Power(yt,2))/3. + (272*H0x*xp5*Power(yt,2))/3. + (16*Hp0x*xp5*Power(yt,2))/3. + (64*xp6*Power(yt,2))/3. - (224*H0x*xp6*Power(yt,2))/3. + (64*H0x*xp7*Power(yt,2))/3. + Power(Lmu2m2,2)*(-5.333333333333333 - (32*xp2)/3. + (64*xp3)/3. - (32*xp4)/3. + (32*xp1*yt)/3. - 32*xp2*yt + (128*xp3*yt)/3. - (64*xp4*yt)/3. - (32*xp2*Power(yt,2))/3. + (64*xp3*Power(yt,2))/3. - (32*xp4*Power(yt,2))/3.) + Lmu2m2*(4 - (8*Hmx)/3. + (56*Hmy)/3. + (16*Hmz)/3. + (3*H0x*xm1)/2. + (3*H0x*xp1)/2. + 8*xp2 + (H0x*xp2)/3. - (16*Hmx*xp2)/3. + (112*Hmy*xp2)/3. + (32*Hmz*xp2)/3. - 16*xp3 + (2*H0x*xp3)/3. + (32*Hmx*xp3)/3. - (224*Hmy*xp3)/3. - (64*Hmz*xp3)/3. + 8*xp4 - 4*H0x*xp4 - (16*Hmx*xp4)/3. + (112*Hmy*xp4)/3. + (32*Hmz*xp4)/3. + (8*H0x*xp5)/3. - (H0x*xm1*yt)/3. - 8*xp1*yt - (H0x*xp1*yt)/3. + (16*Hmx*xp1*yt)/3. - (112*Hmy*xp1*yt)/3. - (32*Hmz*xp1*yt)/3. + 24*xp2*yt - (2*H0x*xp2*yt)/3. - 16*Hmx*xp2*yt + 112*Hmy*xp2*yt + 32*Hmz*xp2*yt - 32*xp3*yt + 4*H0x*xp3*yt + (64*Hmx*xp3*yt)/3. - (448*Hmy*xp3*yt)/3. - (128*Hmz*xp3*yt)/3. + 16*xp4*yt - 8*H0x*xp4*yt - (32*Hmx*xp4*yt)/3. + (224*Hmy*xp4*yt)/3. + (64*Hmz*xp4*yt)/3. + (16*H0x*xp5*yt)/3. + (H0x*xm1*Power(yt,2))/6. + (H0x*xp1*Power(yt,2))/6. + 8*xp2*Power(yt,2) + (H0x*xp2*Power(yt,2))/3. - (16*Hmx*xp2*Power(yt,2))/3. + (112*Hmy*xp2*Power(yt,2))/3. + (32*Hmz*xp2*Power(yt,2))/3. - 16*xp3*Power(yt,2) + (2*H0x*xp3*Power(yt,2))/3. + (32*Hmx*xp3*Power(yt,2))/3. - (224*Hmy*xp3*Power(yt,2))/3. - (64*Hmz*xp3*Power(yt,2))/3. + 8*xp4*Power(yt,2) - 4*H0x*xp4*Power(yt,2) - (16*Hmx*xp4*Power(yt,2))/3. + (112*Hmy*xp4*Power(yt,2))/3. + (32*Hmz*xp4*Power(yt,2))/3. + (8*H0x*xp5*Power(yt,2))/3.) - (16*z2)/3. + (265*xm1*z2)/12. - (83*xm2*z2)/2. + (263*xm3*z2)/3. - 90*xm4*z2 + 36*xm5*z2 - (103*xp1*z2)/12. + (xp2*z2)/3. - 18*xp3*z2 + (88*xp4*z2)/3. - (32*xp5*z2)/3. - (19*xm1*yt*z2)/6. + 55*xm2*yt*z2 - (470*xm3*yt*z2)/3. + 180*xm4*yt*z2 - 72*xm5*yt*z2 + (15*xp1*yt*z2)/2. - 8*xp2*yt*z2 - 40*xp3*yt*z2 + (176*xp4*yt*z2)/3. - (64*xp5*yt*z2)/3. + (xm1*Power(yt,2)*z2)/12. + (9*xm2*Power(yt,2)*z2)/2. + 57*xm3*Power(yt,2)*z2 - 90*xm4*Power(yt,2)*z2 + 36*xm5*Power(yt,2)*z2 + (xp1*Power(yt,2)*z2)/12. - 15*xp2*Power(yt,2)*z2 - (34*xp3*Power(yt,2)*z2)/3. + (88*xp4*Power(yt,2)*z2)/3. - (32*xp5*Power(yt,2)*z2)/3. - (8*Hmz)/(3.*zu) - (8*Hmz*xp1)/(3.*zu) + (8*Hmz*xp2)/(3.*zu);

};
