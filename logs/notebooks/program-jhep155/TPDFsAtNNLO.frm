#-
*TPDFSAtNNLO.frm version March 2014
*by T. Gehrmann, T. Luebbert and L. L. Yang.

*This FORM module collects the main results of our calculation of the transverse parton distribution functions up to next-to-next-to-leading order in the strong coupling in FORM format.
*The quantities and references to equations refer to the associated article: T. Gehrmann, T. Luebbert and L. L. Yang, 'Calculation of the transverse parton distribution functions at next-to-next-to-leading order'.

*We will provide 
*[F,{i},(n)] as appearing on the right hand side (RHS) of Eq. (2.13);
*[I,{i/j},(n),z] as on the RHS of Eq. (2.18);
*[f,{i/j},(1),z] as on the RHS of Eq. (D.12) and
*[f,{i/j},(2,nr),s,z] as on the RHS of Eq. (D.15).

*Above, (n) gives the order in $\alpha_s/(4*Pi)$ according to Eq. (2.27).
*The parton combination is specified by {i} or {i/j}. The partons 'i' and 'j' are specified by g,q,qb,qp,qpb. Where 'b' refers to an anti-particle and 'qp' only appears in combination with 'q' and refers to a quark of different (but fixed) flavor than the one of 'q'.
*Note that several combinations of partons are related by flavor and charge conjugation symmetry. We only list independent contributions.
*In [f,{i/j},(2,nr),s,z] 'nr' distinguishes the virtual-real (nr=1) and the real-real (nr=2) contributions and 's' the collinear (s=+1) and anti-collinear (s=-1) cases.

*For all functions we provide the dependence on the scale logarithm 'Lp' explicitly.
*For [I,{i/j},(1),z] we also provide the terms up to e^2 with the dimensional regulator 'e'.

*Below
*'Cf,Ca,Tf' are the color factors;
*'Nf' is the number of quark falvors;
*'e' and 'a' is the dimensional and analytic regulator, respectively;
*'Lp' is the scale logarithm as defined in Eq. (2.21);
*'H(...,z)' are harmonic polylogarithms;
*'Zeta(n)' are zeta values;
*'delta' is Dirac's delta-distribution;
*'PlPr' the plus-distribution;
*'P(i,j,z)' are related to the lowest order DGLAP splitting kernels and given by the functions in Eq. (C.7);
*therein 'i,j' refer to partons specified by 'g,q,qb,qp,qpb'. The relevant replacements are also given in the end of this file.

symbol Cf,Ca,Nf,Tf,a,e,[1-e],s,z,[1-z],[1+z],Lp,Pi;
cfunction P,PlPr,delta,H,Zeta;
symbol g,q,qb,qp,qpb;

nwrite statistics;

#message TPDFSAtNNLO.frm version March 2014 by T. Gehrmann, T. Luebbert and L. L. Yang.

* * * * * * * * * * * * [F,{i},(n)]


Global [F,{g},(1)] = 
       + Ca * ( 4*Lp )
;

Global [F,{q},(1)] = 
       + Cf * ( 4*Lp )
;

Global [F,{g},(2)] = 
       + Ca*Nf*Tf * (  - 224/27 - 80/9*Lp - 8/3*Lp^2 )

       + Ca^2 * ( 808/27 + 268/9*Lp + 22/3*Lp^2 - 8*Zeta(2)*Lp - 28*Zeta(3) )
;

Global [F,{q},(2)] = 
       + Cf*Nf*Tf * (  - 224/27 - 80/9*Lp - 8/3*Lp^2 )

       + Cf*Ca * ( 808/27 + 268/9*Lp + 22/3*Lp^2 - 8*Zeta(2)*Lp - 28*Zeta(3) )
;



* * * * * * * * * * * * [I,{i/j},(1),z]


Global [I,{g/g},(1),z] = 
       + P(g,g,z)*Ca * (  - 4*Lp )

       + P(g,g,z)*Ca*e * (  - 2*Lp^2 - 2*Zeta(2) )

       + P(g,g,z)*Ca*e^2 * (  - 2/3*Lp^3 - 2*Zeta(2)*Lp - 4/3*Zeta(3) )

       + delta([1-z])*Ca * ( Lp^2 - Zeta(2) )

       + delta([1-z])*Ca*e * ( 1/3*Lp^3 - Zeta(2)*Lp - 4/3*Zeta(3) )

       + delta([1-z])*Ca*e^2 * ( 1/12*Lp^4 - 1/2*Zeta(2)*Lp^2 - 4/3*Zeta(3)*Lp
          - 27/8*Zeta(4) )
;

Global [I,{q/g},(1),z] = 
       + Tf * ( 2 )

       + Tf*e * ( 2 + 2*Lp )

       + Tf*e^2 * ( 2 + 2*Lp + Lp^2 + Zeta(2) )

       + P(q,g,z)*Tf * (  - 2 - 2*Lp )

       + P(q,g,z)*Tf*e * (  - 2 - 2*Lp - Lp^2 - Zeta(2) )

       + P(q,g,z)*Tf*e^2 * (  - 2 - 2*Lp - Lp^2 - 1/3*Lp^3 - Zeta(2) - Zeta(2)
         *Lp - 2/3*Zeta(3) )
;

Global [I,{g/q},(1),z] = 
       + Cf * ( 2*z )

       + Cf*e * ( 2*z*Lp )

       + Cf*e^2 * ( z*Lp^2 + Zeta(2)*z )

       + P(g,q,z)*Cf * (  - 2*Lp )

       + P(g,q,z)*Cf*e * (  - Lp^2 - Zeta(2) )

       + P(g,q,z)*Cf*e^2 * (  - 1/3*Lp^3 - Zeta(2)*Lp - 2/3*Zeta(3) )
;

Global [I,{q/q},(1),z] = 
       + Cf * ( 2*[1-z] )

       + Cf*e * ( 2*[1-z]*Lp )

       + Cf*e^2 * ( [1-z]*Lp^2 + Zeta(2)*[1-z] )

       + P(q,q,z)*Cf * (  - 2*Lp )

       + P(q,q,z)*Cf*e * (  - Lp^2 - Zeta(2) )

       + P(q,q,z)*Cf*e^2 * (  - 1/3*Lp^3 - Zeta(2)*Lp - 2/3*Zeta(3) )

       + delta([1-z])*Cf * ( Lp^2 - Zeta(2) )

       + delta([1-z])*Cf*e * ( 1/3*Lp^3 - Zeta(2)*Lp - 4/3*Zeta(3) )

       + delta([1-z])*Cf*e^2 * ( 1/12*Lp^4 - 1/2*Zeta(2)*Lp^2 - 4/3*Zeta(3)*Lp
          - 27/8*Zeta(4) )
;

Global [I,{qb/q},(1),z] = 
 0
;

Global [I,{qp/q},(1),z] = 
 0
;

Global [I,{qpb/q},(1),z] = 
       [I,{qp/q},(1),z]
;



* * * * * * * * * * * * [I,{i/j},(2),z]


Global [I,{g/g},(2),z] = 
       + Ca*Nf*Tf * (  - 8 + 260/27*z^-1 + 104/9*z^-1*Lp - 8*Lp + 8*z + 8*z*Lp
          - 332/27*z^2 - 104/9*z^2*Lp + 52/9*H(0,z) + 16/3*H(0,z)*Lp + 40/9*H(
         0,z)*z + 16/3*H(0,z)*z*Lp + 8/3*H(0,0,z) + 8/3*H(0,0,z)*z + 4/3*H(1,z
         )*z )

       + Ca^2 * ( 232/3 - 784/9*z^-1 + 268/9*z^-1*Lp - 88/3*z^-1*Lp^2 - 54*Lp
          + 24*Lp^2 - 248/3*z + 54*z*Lp - 24*z*Lp^2 + 844/9*z^2 - 268/9*z^2*Lp
          + 88/3*z^2*Lp^2 - 701/9*H(0,z) + 100/3*H(0,z)*Lp - 16*H(0,z)*Lp^2 - 
         149/9*H(0,z)*z - 44/3*H(0,z)*z*Lp - 16*H(0,z)*z*Lp^2 - 536/9*H(0,z)*
         z^2 + 176/3*H(0,z)*z^2*Lp + 50/3*H(0,0,z) - 32*H(0,0,z)*Lp - 22/3*H(0
         ,0,z)*z - 32*H(0,0,z)*z*Lp + 88/3*H(0,0,z)*z^2 - 16*H(0,0,0,z) - 16*
         H(0,0,0,z)*z - 16*H(1,z)*z^-1*Lp^2 + 32*H(1,z)*Lp^2 - 2/3*H(1,z)*z - 
         16*H(1,z)*z*Lp^2 + 16*H(1,z)*z^2*Lp^2 - 32*H(1,0,z) + 88/3*H(1,0,z)*
         z^-1 + 32*H(1,0,z)*z - 88/3*H(1,0,z)*z^2 - 32*Zeta(2) + 88/3*Zeta(2)*
         z^-1 + 32*Zeta(2)*z - 88/3*Zeta(2)*z^2 )

       + Cf*Nf*Tf * ( 64 - 8/3*z^-1 - 16/3*z^-1*Lp + 16/3*z^-1*Lp^2 + 56*Lp + 
         4*Lp^2 - 64*z - 40*z*Lp - 4*z*Lp^2 + 8/3*z^2 - 32/3*z^2*Lp - 16/3*z^2
         *Lp^2 + 24*H(0,z) + 24*H(0,z)*Lp + 8*H(0,z)*Lp^2 + 24*H(0,z)*z + 24*
         H(0,z)*z*Lp + 8*H(0,z)*z*Lp^2 + 12*H(0,0,z) + 16*H(0,0,z)*Lp + 4*H(0,
         0,z)*z + 16*H(0,0,z)*z*Lp + 8*H(0,0,0,z) + 8*H(0,0,0,z)*z )

       + P(g,g, - z)*Ca^2 * (  - 8*H(-1,z)*Zeta(2) - 16*H(-1,-1,0,z) + 16*H(-1
         ,0,z)*Lp + 8*H(-1,0,0,z) + 16*H(0,-1,0,z) - 8*H(0,0,z)*Lp - 4*H(0,0,0
         ,z) - 8*H(0,1,0,z) + 8*Zeta(2)*Lp + 4*Zeta(3) )

       + P(g,g,z)*Ca*Nf*Tf * ( 224/27 + 80/9*Lp + 8/3*Lp^2 )

       + P(g,g,z)*Ca^2 * (  - 808/27 - 268/9*Lp - 22/3*Lp^2 - 4*Lp^3 - 8*H(0,z
         )*Lp^2 - 8*H(0,0,z)*Lp - 4*H(0,0,0,z) - 16*H(0,1,z)*Lp + 8*H(0,1,0,z)
          + 8*H(0,1,1,z) - 16*H(1,0,z)*Lp - 8*H(1,0,0,z) + 8*H(1,0,1,z) + 8*H(
         1,1,0,z) + 12*Zeta(2)*Lp + 52*Zeta(3) )

       + PlPr( - H(1,z)*[1-z]^-1)*Ca^2 * ( 16*Lp^2 )

       + delta([1-z])*Ca*Nf*Tf * (  - 328/81 - 112/27*Lp - 20/9*Lp^2 - 4/9*
         Lp^3 + 10/3*Zeta(2) + 8/3*Zeta(2)*Lp + 28/9*Zeta(3) )

       + delta([1-z])*Ca^2 * ( 1214/81 + 404/27*Lp + 67/9*Lp^2 + 11/9*Lp^3 + 1/
         2*Lp^4 - 67/6*Zeta(2) - 22/3*Zeta(2)*Lp - 11*Zeta(2)*Lp^2 - 77/9*
         Zeta(3) - 14*Zeta(3)*Lp + 25/4*Zeta(4) )
;

Global [I,{q/g},(2),z] = 
       + Ca*Tf * (  - 332/27 + 344/27*z^-1 - 104/9*z^-1*Lp + 8/3*z^-1*Lp^2 - 
         88/9*Lp + 37/3*Lp^2 + 178/27*z - 76/9*z*Lp - 14/3*z*Lp^2 - 4*H(-1,0,z
         ) - 52/9*H(0,z) + 76/3*H(0,z)*Lp + 4*H(0,z)*Lp^2 + 152/9*H(0,z)*z - 
         176/3*H(0,z)*z*Lp + 16*H(0,z)*z*Lp^2 + 38/3*H(0,0,z) + 8*H(0,0,z)*Lp
          - 64/3*H(0,0,z)*z + 16*H(0,0,z)*z*Lp + 4*H(0,0,0,z) + 8*H(0,0,0,z)*z
          - 16*H(0,1,0,z)*z - 4*H(1,z) + 2*H(1,z)*z - 20/3*H(1,0,z) - 16/3*H(1
         ,0,z)*z^-1 - 8/3*H(1,0,z)*z - 4*H(1,1,z) - 20/3*Zeta(2) - 16/3*Zeta(2
         )*z^-1 + 16/3*Zeta(2)*z + 16*Zeta(2)*z*Lp + 8*Zeta(3)*z )

       + Cf*Tf * ( 23 + 8*Lp + Lp^2 + 3*z + 10*z*Lp + 4*z*Lp^2 + 12*H(0,z) + 6
         *H(0,z)*Lp + 2*H(0,z)*Lp^2 + 7*H(0,z)*z - 4*H(0,z)*z*Lp^2 + 5*H(0,0,z
         ) + 4*H(0,0,z)*Lp + 4*H(0,0,z)*z - 8*H(0,0,z)*z*Lp + 2*H(0,0,0,z) - 4
         *H(0,0,0,z)*z + 4*H(0,1,z) + 4*H(1,z) + 8*H(1,z)*Lp - 2*H(1,z)*z + 4*
         H(1,0,z) + 4*H(1,1,z) - 6*Zeta(2) )

       + P(q,g, - z)*Ca*Tf * (  - 4*H(-1,z)*Zeta(2) - 8*H(-1,-1,0,z) + 4*H(-1,
         0,z) + 8*H(-1,0,z)*Lp + 4*H(-1,0,0,z) + 8*H(0,-1,0,z) )

       + P(q,g,z)*Ca*Tf * (  - 298/27 + 232/9*Lp - 31/3*Lp^2 + 136/9*H(0,z) - 
         88/3*H(0,z)*Lp - 44/3*H(0,0,z) + 4*H(1,z) - 4*H(1,z)*Lp^2 + 44/3*H(1,
         0,z) + 4*H(1,0,1,z) + 4*H(1,1,z) + 8*H(1,1,z)*Lp + 4*H(1,1,0,z) - 4*
         H(1,1,1,z) + 44/3*Zeta(2) )

       + P(q,g,z)*Cf*Tf * (  - 36 - 28*Lp - 8*Lp^2 - 2*Lp^3 - 4*H(0,z) - 8*H(0
         ,z)*Lp - 4*H(0,z)*Lp^2 - 4*H(0,0,z) - 8*H(0,0,z)*Lp - 4*H(0,0,0,z) - 
         4*H(0,1,z) - 8*H(0,1,z)*Lp + 4*H(0,1,1,z) - 4*H(1,z) - 8*H(1,z)*Lp - 
         4*H(1,z)*Lp^2 - 4*H(1,0,z) - 8*H(1,0,z)*Lp - 4*H(1,0,0,z) - 4*H(1,1,z
         ) - 8*H(1,1,z)*Lp + 4*H(1,1,1,z) + 6*Zeta(2) + 10*Zeta(2)*Lp + 28*
         Zeta(3) )
;

Global [I,{g/q},(2),z] = 
       + Cf*Nf*Tf * (  - 40/9*z + 8/3*H(1,z)*z )

       + Cf*Ca * ( 4/27 - 112/9*Lp - 14/3*Lp^2 + 508/27*z + 2/9*z*Lp + 43/3*z*
         Lp^2 + 608/27*z^2 - 176/9*z^2*Lp + 8/3*z^2*Lp^2 + 4*H(-1,0,z)*z - 166/
         3*H(0,z) + 48*H(0,z)*Lp - 16*H(0,z)*Lp^2 + 4/3*H(0,z)*z + 20*H(0,z)*z
         *Lp - 4*H(0,z)*z*Lp^2 - 176/9*H(0,z)*z^2 + 32/3*H(0,z)*z^2*Lp + 24*H(
         0,0,z) - 16*H(0,0,z)*Lp + 6*H(0,0,z)*z - 8*H(0,0,z)*z*Lp + 16/3*H(0,0
         ,z)*z^2 - 8*H(0,0,0,z) - 4*H(0,0,0,z)*z + 4*H(0,1,z)*z + 16*H(0,1,0,z
         ) - 22/3*H(1,z)*z + 8*H(1,z)*z*Lp - 8/3*H(1,0,z) - 8/3*H(1,0,z)*z - 
         16/3*H(1,0,z)*z^2 + 4*H(1,1,z)*z - 8/3*Zeta(2) - 16*Zeta(2)*Lp - 26/3
         *Zeta(2)*z - 16/3*Zeta(2)*z^2 - 8*Zeta(3) )

       + Cf^2 * ( 10 + 6*Lp + 4*Lp^2 - z + 12*z*Lp - z*Lp^2 - 15*H(0,z) - 8*H(
         0,z)*Lp + 4*H(0,z)*Lp^2 + 5*H(0,z)*z - 10*H(0,z)*z*Lp - 2*H(0,z)*z*
         Lp^2 - 4*H(0,0,z) + 8*H(0,0,z)*Lp - 3*H(0,0,z)*z - 4*H(0,0,z)*z*Lp + 
         4*H(0,0,0,z) - 2*H(0,0,0,z)*z + 6*H(1,z)*z - 4*H(1,1,z)*z )

       + P(g,q, - z)*Cf*Ca * (  - 4*H(-1,z)*Zeta(2) - 8*H(-1,-1,0,z) + 8*H(-1,
         0,z)*Lp + 4*H(-1,0,0,z) + 8*H(0,-1,0,z) )

       + P(g,q,z)*Cf*Nf*Tf * ( 224/27 + 80/9*Lp + 8/3*Lp^2 - 40/9*H(1,z) - 16/
         3*H(1,z)*Lp + 8/3*H(1,1,z) )

       + P(g,q,z)*Cf*Ca * (  - 1580/27 - 2*Lp - 53/3*Lp^2 - 2*Lp^3 - 4*H(0,z)*
         Lp^2 - 8*H(0,1,z)*Lp + 8*H(0,1,0,z) + 4*H(0,1,1,z) + 152/9*H(1,z) + 
         44/3*H(1,z)*Lp - 4*H(1,z)*Lp^2 + 44/3*H(1,0,z) - 8*H(1,0,z)*Lp - 4*H(
         1,0,0,z) + 4*H(1,0,1,z) - 22/3*H(1,1,z) - 8*H(1,1,z)*Lp + 4*H(1,1,0,z
         ) + 4*H(1,1,1,z) + 44/3*Zeta(2) + 2*Zeta(2)*Lp + 24*Zeta(3) )

       + P(g,q,z)*Cf^2 * (  - 16*H(1,z) - 12*H(1,z)*Lp - 4*H(1,z)*Lp^2 + 6*H(1
         ,1,z) + 8*H(1,1,z)*Lp - 4*H(1,1,1,z) )
;

Global [I,{q/q},(2),z] = 
       + Cf*Tf * (  - 70/3 + 344/27*z^-1 - 104/9*z^-1*Lp + 8/3*z^-1*Lp^2 + 16*
         Lp + 2*Lp^2 + 62/3*z - 24*z*Lp - 2*z*Lp^2 - 272/27*z^2 + 176/9*z^2*Lp
          - 8/3*z^2*Lp^2 + 28/3*H(0,z) - 4*H(0,z)*Lp + 4*H(0,z)*Lp^2 - 40/3*H(
         0,z)*z - 12*H(0,z)*z*Lp + 4*H(0,z)*z*Lp^2 + 128/9*H(0,z)*z^2 - 32/3*
         H(0,z)*z^2*Lp - 2*H(0,0,z) + 8*H(0,0,z)*Lp - 2*H(0,0,z)*z + 8*H(0,0,z
         )*z*Lp - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0,z) + 4*H(0,0,0,z)*z + 8*H(1,0,
         z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z + 16/3*H(1,0,z)*z^2 + 8*Zeta(2
         ) - 16/3*Zeta(2)*z^-1 - 8*Zeta(2)*z + 16/3*Zeta(2)*z^2 )

       + Cf*Nf*Tf * (  - 4/3 + 8/3*Lp + 4/3*z - 8/3*z*Lp )

       + Cf*Ca * ( 44/3 - 58/3*Lp - 44/3*z + 58/3*z*Lp + 2*H(0,z) - 4*H(0,z)*
         Lp + 10*H(0,z)*z - 4*H(0,z)*z*Lp - 4*H(0,0,z)*z - 2*H(1,z)*z - 4*H(1,
         0,z) + 4*H(1,0,z)*z - 6*Zeta(2) + 6*Zeta(2)*z )

       + Cf^2 * (  - 22 + 28*Lp - 2*Lp^2 + 22*z - 28*z*Lp + 2*z*Lp^2 + 2*H(0,z
         ) + 10*H(0,z)*Lp + 2*H(0,z)*Lp^2 - 24*H(0,z)*z + 10*H(0,z)*z*Lp + 2*
         H(0,z)*z*Lp^2 + 3*H(0,0,z) + 4*H(0,0,z)*Lp + 7*H(0,0,z)*z + 4*H(0,0,z
         )*z*Lp + 2*H(0,0,0,z) + 2*H(0,0,0,z)*z + 4*H(0,1,z) - 4*H(0,1,z)*z + 
         8*H(1,z)*Lp + 8*H(1,z)*Lp^2 + 2*H(1,z)*z - 8*H(1,z)*z*Lp + 8*H(1,z)*z
         *Lp^2 + 12*H(1,0,z) - 12*H(1,0,z)*z + 6*Zeta(2) - 6*Zeta(2)*z )

       + P(q,q,z)*Cf*Nf*Tf * ( 112/27 + 40/9*Lp + 4/3*Lp^2 + 20/9*H(0,z) + 8/3
         *H(0,z)*Lp + 4/3*H(0,0,z) )

       + P(q,q,z)*Cf*Ca * (  - 404/27 - 134/9*Lp - 11/3*Lp^2 - 76/9*H(0,z) - 
         22/3*H(0,z)*Lp - 11/3*H(0,0,z) - 4*H(0,0,z)*Lp - 2*H(0,0,0,z) - 4*H(0
         ,1,0,z) - 4*H(1,0,1,z) - 4*H(1,1,0,z) + 4*Zeta(2)*Lp + 2*Zeta(3) )

       + P(q,q,z)*Cf^2 * (  - 2*Lp^3 + 8*H(0,z) + 6*H(0,z)*Lp - 4*H(0,z)*Lp^2
          + 3*H(0,0,z) - 8*H(0,1,z)*Lp + 8*H(0,1,0,z) + 4*H(0,1,1,z) - 8*H(1,0
         ,z)*Lp - 4*H(1,0,0,z) + 8*H(1,0,1,z) + 8*H(1,1,0,z) + 2*Zeta(2)*Lp + 
         24*Zeta(3) )

       + PlPr( - H(1,z)*[1-z]^-1)*Cf^2 * ( 16*Lp^2 )

       + delta([1-z])*Cf*Nf*Tf * (  - 328/81 - 112/27*Lp - 20/9*Lp^2 - 4/9*
         Lp^3 + 10/3*Zeta(2) + 8/3*Zeta(2)*Lp + 28/9*Zeta(3) )

       + delta([1-z])*Cf*Ca * ( 1214/81 + 404/27*Lp + 67/9*Lp^2 + 11/9*Lp^3 - 
         67/6*Zeta(2) - 22/3*Zeta(2)*Lp - 2*Zeta(2)*Lp^2 - 77/9*Zeta(3) - 14*
         Zeta(3)*Lp + 5*Zeta(4) )

       + delta([1-z])*Cf^2 * ( 1/2*Lp^4 - 9*Zeta(2)*Lp^2 + 5/4*Zeta(4) )
;

Global [I,{qb/q},(2),z] = 
       + Cf*Tf * (  - 70/3 + 344/27*z^-1 - 104/9*z^-1*Lp + 8/3*z^-1*Lp^2 + 16*
         Lp + 2*Lp^2 + 62/3*z - 24*z*Lp - 2*z*Lp^2 - 272/27*z^2 + 176/9*z^2*Lp
          - 8/3*z^2*Lp^2 + 28/3*H(0,z) - 4*H(0,z)*Lp + 4*H(0,z)*Lp^2 - 40/3*H(
         0,z)*z - 12*H(0,z)*z*Lp + 4*H(0,z)*z*Lp^2 + 128/9*H(0,z)*z^2 - 32/3*
         H(0,z)*z^2*Lp - 2*H(0,0,z) + 8*H(0,0,z)*Lp - 2*H(0,0,z)*z + 8*H(0,0,z
         )*z*Lp - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0,z) + 4*H(0,0,0,z)*z + 8*H(1,0,
         z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z + 16/3*H(1,0,z)*z^2 + 8*Zeta(2
         ) - 16/3*Zeta(2)*z^-1 - 8*Zeta(2)*z + 16/3*Zeta(2)*z^2 )

       + Cf*Ca * (  - 15 + 8*Lp + 15*z - 8*z*Lp + 4*H(-1,0,z) + 4*H(-1,0,z)*z
          - 3*H(0,z) + 4*H(0,z)*Lp - 11*H(0,z)*z + 4*H(0,z)*z*Lp + 4*H(1,0,z)
          - 4*H(1,0,z)*z + 6*Zeta(2) - 2*Zeta(2)*z )

       + Cf^2 * ( 30 - 16*Lp - 30*z + 16*z*Lp - 8*H(-1,0,z) - 8*H(-1,0,z)*z + 
         6*H(0,z) - 8*H(0,z)*Lp + 22*H(0,z)*z - 8*H(0,z)*z*Lp - 8*H(1,0,z) + 8
         *H(1,0,z)*z - 12*Zeta(2) + 4*Zeta(2)*z )

       + P(q,q, - z)*Cf*Ca * ( 4*H(-1,z)*Zeta(2) + 8*H(-1,-1,0,z) - 8*H(-1,0,z
         )*Lp - 4*H(-1,0,0,z) - 8*H(0,-1,0,z) + 4*H(0,0,z)*Lp + 2*H(0,0,0,z)
          + 4*H(0,1,0,z) - 4*Zeta(2)*Lp - 2*Zeta(3) )

       + P(q,q, - z)*Cf^2 * (  - 8*H(-1,z)*Zeta(2) - 16*H(-1,-1,0,z) + 16*H(-1
         ,0,z)*Lp + 8*H(-1,0,0,z) + 16*H(0,-1,0,z) - 8*H(0,0,z)*Lp - 4*H(0,0,0
         ,z) - 8*H(0,1,0,z) + 8*Zeta(2)*Lp + 4*Zeta(3) )
;

Global [I,{qp/q},(2),z] = 
       + Cf*Tf * (  - 70/3 + 344/27*z^-1 - 104/9*z^-1*Lp + 8/3*z^-1*Lp^2 + 16*
         Lp + 2*Lp^2 + 62/3*z - 24*z*Lp - 2*z*Lp^2 - 272/27*z^2 + 176/9*z^2*Lp
          - 8/3*z^2*Lp^2 + 28/3*H(0,z) - 4*H(0,z)*Lp + 4*H(0,z)*Lp^2 - 40/3*H(
         0,z)*z - 12*H(0,z)*z*Lp + 4*H(0,z)*z*Lp^2 + 128/9*H(0,z)*z^2 - 32/3*
         H(0,z)*z^2*Lp - 2*H(0,0,z) + 8*H(0,0,z)*Lp - 2*H(0,0,z)*z + 8*H(0,0,z
         )*z*Lp - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0,z) + 4*H(0,0,0,z)*z + 8*H(1,0,
         z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z + 16/3*H(1,0,z)*z^2 + 8*Zeta(2
         ) - 16/3*Zeta(2)*z^-1 - 8*Zeta(2)*z + 16/3*Zeta(2)*z^2 )
;

Global [I,{qpb/q},(2),z] = 
       [I,{qp/q},(2),z]
;


* * * * * * * * * * * * [f,{i/j},(1),z]


Global [f,{g/g},(1),z] = 
       + Ca * (  - 8 + 4*z^-1 + 4*[1-z]^-1 + 4*z - 4*z^2 )
;

Global [f,{q/g},(1),z] = 
       + Tf * ( 2 - 4*[1-e]^-1*z + 4*[1-e]^-1*z^2 )
;

Global [f,{g/q},(1),z] = 
       + Cf * (  - 4 + 4*z^-1 + 2*z )

       + Cf*e * (  - 2*z )
;

Global [f,{q/q},(1),z] = 
       + Cf * (  - 2 + 4*[1-z]^-1 - 2*z )

       + Cf*e * (  - 2 + 2*z )
;

Global [f,{qb/q},(1),z] = 
 0
;

Global [f,{qp/q},(1),z] = 
 0
;

Global [f,{qpb/q},(1),z] = 
       [f,{qp/q},(1),z]
;


* * * * * * * * * * * * [f,{i/j},(2,1),s,z]


Global [f,{g/g},(2,1),s,z] = 
       + Ca*Nf*Tf*e^-1 * (  - 4/3*z )

       + Ca*Nf*Tf * ( 8/3 - 8/3*z^-1 - 56/9*z + 4/3*H(1,z)*z )

       + Ca^2*e^-1 * ( 2/3*z )

       + Ca^2 * (  - 4/3 + 4/3*z^-1 + 22/9*z - 2/3*H(1,z)*z )

       + P(g,g,z)*Ca^2*e^-3 * ( 4 )

       + P(g,g,z)*Ca^2*e^-2 * ( 8*H(0,z) )

       + P(g,g,z)*Ca^2*e^-1 * (  - 8*H(0,1,z) - 8*H(1,0,z) - 4*Zeta(2) )

       + P(g,g,z)*Ca^2 * ( 8*H(0,z)*Zeta(2) + 8*H(0,1,1,z) + 8*H(1,z)*Zeta(2)
          + 8*H(1,0,1,z) + 16*H(1,1,0,z) - 16/3*Zeta(3) )

       + delta([1-z])*Ca^2*e^-4 * (  - 1 - s )

       + delta([1-z])*Ca^2*e^-3*a^-1 * ( 4*s )

       + delta([1-z])*Ca^2*e^-2 * ( 3*Zeta(2) + 3*Zeta(2)*s )

       + delta([1-z])*Ca^2*e^-1*a^-1 * (  - 4*Zeta(2)*s )

       + delta([1-z])*Ca^2*e^-1 * ( 28/3*Zeta(3) + 28/3*Zeta(3)*s )

       + delta([1-z])*Ca^2*a^-1 * ( 8/3*Zeta(3)*s )

       + delta([1-z])*Ca^2 * ( 57/4*Zeta(4) + 57/4*Zeta(4)*s )
;

Global [f,{q/g},(2,1),s,z] = 
       + Ca*Tf*e^-2 * (  - 2 )

       + Ca*Tf*e^-1 * (  - 2 - 2*z + 4*H(1,z) )

       + Ca*Tf * (  - 6*z + 4*H(1,z) + 2*H(1,z)*z + 4*H(1,0,z) - 4*H(1,1,z) - 
         2*Zeta(2) )

       + Cf*Tf*e^-1 * ( 2*z - 4*H(0,z) - 4*H(1,z) )

       + Cf*Tf * (  - 2 + 6*z - 4*H(0,z) + 4*H(0,1,z) - 4*H(1,z) - 2*H(1,z)*z
          + 4*H(1,1,z) + 4*Zeta(2) )

       + P(q,g,z)*Ca*Tf*e^-3 * ( 2 )

       + P(q,g,z)*Ca*Tf*e^-2 * ( 2 - 4*H(1,z) )

       + P(q,g,z)*Ca*Tf*e^-1 * ( 2 - 4*H(1,z) - 4*H(1,0,z) + 4*H(1,1,z) + 2*
         Zeta(2) )

       + P(q,g,z)*Ca*Tf * ( 2 - 4*H(1,z) - 4*H(1,0,z) + 4*H(1,0,1,z) + 4*H(1,1
         ,z) + 8*H(1,1,0,z) - 4*H(1,1,1,z) + 2*Zeta(2) + 4/3*Zeta(3) )

       + P(q,g,z)*Cf*Tf*e^-2 * ( 4*H(0,z) + 4*H(1,z) )

       + P(q,g,z)*Cf*Tf*e^-1 * ( 4*H(0,z) - 4*H(0,1,z) + 4*H(1,z) - 4*H(1,1,z)
          - 4*Zeta(2) )

       + P(q,g,z)*Cf*Tf * ( 4*H(0,z) + 4*H(0,z)*Zeta(2) - 4*H(0,1,z) + 4*H(0,1
         ,1,z) + 4*H(1,z) + 4*H(1,z)*Zeta(2) - 4*H(1,1,z) + 4*H(1,1,1,z) - 4*
         Zeta(2) - 4*Zeta(3) )
;

Global [f,{g/q},(2,1),s,z] = 
       + Cf*Nf*Tf*e^-1 * (  - 8/3*z )

       + Cf*Nf*Tf * (  - 40/9*z + 8/3*H(1,z)*z )

       + Cf*Ca*e^-2 * ( 2*z )

       + Cf*Ca*e^-1 * ( 22/3*z - 4*H(0,z)*z - 4*H(1,z)*z )

       + Cf*Ca * ( 152/9*z + 4*H(0,1,z)*z - 22/3*H(1,z)*z + 4*H(1,0,z)*z + 4*
         H(1,1,z)*z + 6*Zeta(2)*z )

       + Cf^2*e^-2 * (  - 4*z )

       + Cf^2*e^-1 * (  - 6*z + 4*H(1,z)*z )

       + Cf^2 * (  - 16*z + 6*H(1,z)*z - 4*H(1,1,z)*z - 4*Zeta(2)*z )

       + P(g,q,z)*Cf*Nf*Tf*e^-2 * ( 8/3 )

       + P(g,q,z)*Cf*Nf*Tf*e^-1 * ( 40/9 - 8/3*H(1,z) )

       + P(g,q,z)*Cf*Nf*Tf * ( 224/27 - 40/9*H(1,z) + 8/3*H(1,1,z) + 8/3*Zeta(
         2) )

       + P(g,q,z)*Cf*Ca*e^-3 * (  - 2 )

       + P(g,q,z)*Cf*Ca*e^-2 * (  - 22/3 + 4*H(0,z) + 4*H(1,z) )

       + P(g,q,z)*Cf*Ca*e^-1 * (  - 152/9 - 4*H(0,1,z) + 22/3*H(1,z) - 4*H(1,0
         ,z) - 4*H(1,1,z) - 6*Zeta(2) )

       + P(g,q,z)*Cf*Ca * (  - 916/27 + 4*H(0,z)*Zeta(2) + 4*H(0,1,1,z) + 152/
         9*H(1,z) + 8*H(1,z)*Zeta(2) + 4*H(1,0,1,z) - 22/3*H(1,1,z) + 8*H(1,1,
         0,z) + 4*H(1,1,1,z) - 22/3*Zeta(2) - 16/3*Zeta(3) )

       + P(g,q,z)*Cf^2*e^-3 * ( 4 )

       + P(g,q,z)*Cf^2*e^-2 * ( 6 - 4*H(1,z) )

       + P(g,q,z)*Cf^2*e^-1 * ( 16 - 6*H(1,z) + 4*H(1,1,z) + 4*Zeta(2) )

       + P(g,q,z)*Cf^2 * ( 32 - 16*H(1,z) - 4*H(1,z)*Zeta(2) + 6*H(1,1,z) - 4*
         H(1,1,1,z) + 6*Zeta(2) + 8/3*Zeta(3) )
;

Global [f,{q/q},(2,1),s,z] = 
       + Cf*Ca*e^-2 * (  - 2 + 2*z )

       + Cf*Ca*e^-1 * ( 2*z )

       + Cf*Ca * ( 2 + 2*z - 2*H(1,z)*z - 4*H(1,0,z) + 4*H(1,0,z)*z - 2*Zeta(2
         ) + 2*Zeta(2)*z )

       + Cf^2*e^-1 * (  - 2*z - 4*H(0,z) + 4*H(0,z)*z )

       + Cf^2 * (  - 2 - 2*z + 4*H(0,1,z) - 4*H(0,1,z)*z + 2*H(1,z)*z + 8*H(1,
         0,z) - 8*H(1,0,z)*z + 4*Zeta(2) - 4*Zeta(2)*z )

       + P(q,q,z)*Cf*Ca*e^-3 * ( 2 )

       + P(q,q,z)*Cf*Ca*e^-1 * ( 4*H(1,0,z) + 2*Zeta(2) )

       + P(q,q,z)*Cf*Ca * (  - 4*H(1,z)*Zeta(2) - 4*H(1,0,1,z) - 8*H(1,1,0,z)
          + 4/3*Zeta(3) )

       + P(q,q,z)*Cf^2*e^-2 * ( 4*H(0,z) )

       + P(q,q,z)*Cf^2*e^-1 * (  - 4*H(0,1,z) - 8*H(1,0,z) - 4*Zeta(2) )

       + P(q,q,z)*Cf^2 * ( 4*H(0,z)*Zeta(2) + 4*H(0,1,1,z) + 8*H(1,z)*Zeta(2)
          + 8*H(1,0,1,z) + 16*H(1,1,0,z) - 4*Zeta(3) )

       + delta([1-z])*Cf*Ca*e^-4 * (  - 1 - s )

       + delta([1-z])*Cf*Ca*e^-3*a^-1 * ( 4*s )

       + delta([1-z])*Cf*Ca*e^-2 * ( 3*Zeta(2) + 3*Zeta(2)*s )

       + delta([1-z])*Cf*Ca*e^-1*a^-1 * (  - 4*Zeta(2)*s )

       + delta([1-z])*Cf*Ca*e^-1 * ( 28/3*Zeta(3) + 28/3*Zeta(3)*s )

       + delta([1-z])*Cf*Ca*a^-1 * ( 8/3*Zeta(3)*s )

       + delta([1-z])*Cf*Ca * ( 57/4*Zeta(4) + 57/4*Zeta(4)*s )
;

Global [f,{qb/q},(2,1),s,z] = 
 0
;

Global [f,{qp/q},(2,1),s,z] = 
 0
;

Global [f,{qpb/q},(2,1),s,z] = 
       [f,{qp/q},(2,1),s,z]
;



* * * * * * * * * * * * [f,{i/j},(2,2),s,z]


Global [f,{g/g},(2,2),s,z] = 
       + Ca*Nf*Tf*e^-1 * (  - 4 + 52/9*z^-1 + 16/3*z - 52/9*z^2 + 8/3*H(0,z)
          + 8/3*H(0,z)*z )

       + Ca*Nf*Tf * (  - 32/3 + 332/27*z^-1 + 128/9*z - 332/27*z^2 + 52/9*H(0,
         z) + 40/9*H(0,z)*z + 8/3*H(0,0,z) + 8/3*H(0,0,z)*z )

       + Ca^2*e^-2 * ( 24 - 88/3*z^-1 - 24*z + 88/3*z^2 - 16*H(0,z) - 16*H(0,z
         )*z + 64*H(1,z) - 32*H(1,z)*z^-1 - 32*H(1,z)*z + 32*H(1,z)*z^2 )

       + Ca^2*e^-1 * (  - 27 + 134/9*z^-1 + 79/3*z - 134/9*z^2 + 50/3*H(0,z)
          - 22/3*H(0,z)*z + 88/3*H(0,z)*z^2 - 16*H(0,0,z) - 16*H(0,0,z)*z )

       + Ca^2 * ( 236/3 - 796/9*z^-1 - 766/9*z + 844/9*z^2 - 701/9*H(0,z) - 
         149/9*H(0,z)*z - 536/9*H(0,z)*z^2 - 16*H(0,z)*Zeta(2) - 16*H(0,z)*
         Zeta(2)*z + 50/3*H(0,0,z) - 22/3*H(0,0,z)*z + 88/3*H(0,0,z)*z^2 - 16*
         H(0,0,0,z) - 16*H(0,0,0,z)*z + 64*H(1,z)*Zeta(2) - 32*H(1,z)*Zeta(2)*
         z^-1 - 32*H(1,z)*Zeta(2)*z + 32*H(1,z)*Zeta(2)*z^2 - 32*H(1,0,z) + 88/
         3*H(1,0,z)*z^-1 + 32*H(1,0,z)*z - 88/3*H(1,0,z)*z^2 - 8*Zeta(2) + 8*
         Zeta(2)*z )

       + Cf*Nf*Tf*e^-2 * ( 4 + 16/3*z^-1 - 4*z - 16/3*z^2 + 8*H(0,z) + 8*H(0,z
         )*z )

       + Cf*Nf*Tf*e^-1 * ( 24 - 8/3*z^-1 - 24*z + 8/3*z^2 + 12*H(0,z) + 4*H(0,
         z)*z + 8*H(0,0,z) + 8*H(0,0,z)*z )

       + Cf*Nf*Tf * ( 64 - 8/3*z^-1 - 64*z + 8/3*z^2 + 24*H(0,z) + 24*H(0,z)*z
          + 8*H(0,z)*Zeta(2) + 8*H(0,z)*Zeta(2)*z + 12*H(0,0,z) + 4*H(0,0,z)*z
          + 8*H(0,0,0,z) + 8*H(0,0,0,z)*z + 4*Zeta(2) + 16/3*Zeta(2)*z^-1 - 4*
         Zeta(2)*z - 16/3*Zeta(2)*z^2 )

       + P(g,g, - z)*Ca^2*e^-1 * ( 8*H(-1,0,z) - 4*H(0,0,z) + 4*Zeta(2) )

       + P(g,g, - z)*Ca^2 * (  - 8*H(-1,z)*Zeta(2) - 16*H(-1,-1,0,z) + 8*H(-1,
         0,0,z) + 16*H(0,-1,0,z) - 4*H(0,0,0,z) - 8*H(0,1,0,z) + 4*Zeta(3) )

       + P(g,g,z)*Ca*Nf*Tf*e^-2 * ( 8/3 )

       + P(g,g,z)*Ca*Nf*Tf*e^-1 * ( 40/9 )

       + P(g,g,z)*Ca*Nf*Tf * ( 224/27 + 8/3*Zeta(2) )

       + P(g,g,z)*Ca^2*e^-3 * (  - 20 - 16*s )

       + P(g,g,z)*Ca^2*e^-2*a^-1 * ( 16*s )

       + P(g,g,z)*Ca^2*e^-2 * (  - 22/3 )

       + P(g,g,z)*Ca^2*e^-1 * (  - 134/9 - 4*H(0,0,z) + 8*Zeta(2) )

       + P(g,g,z)*Ca^2*a^-1 * ( 16*Zeta(2)*s )

       + P(g,g,z)*Ca^2 * (  - 808/27 - 4*H(0,0,0,z) + 8*H(0,1,0,z) - 8*H(1,z)*
         Zeta(2) - 8*H(1,0,0,z) - 8*H(1,1,0,z) - 22/3*Zeta(2) + 188/3*Zeta(3)
          + 16/3*Zeta(3)*s )

       + PlPr(H(1,z)*[1-z]^-1)*Ca^2*e^-2 * (  - 32 )

       + PlPr(H(1,z)*[1-z]^-1)*Ca^2 * (  - 32*Zeta(2) )

       + delta([1-z])*Ca*Nf*Tf*e^-3 * (  - 2/3 - 2/3*s )

       + delta([1-z])*Ca*Nf*Tf*e^-2*a^-1 * ( 4/3*s )

       + delta([1-z])*Ca*Nf*Tf*e^-2 * (  - 10/9 + 16/9*s )

       + delta([1-z])*Ca*Nf*Tf*e^-1*a^-1 * ( 20/9*s )

       + delta([1-z])*Ca*Nf*Tf*e^-1 * (  - 56/27 + 28/3*s + 2*Zeta(2) - 2/3*
         Zeta(2)*s )

       + delta([1-z])*Ca*Nf*Tf*a^-1 * ( 112/27*s + 4/3*Zeta(2)*s )

       + delta([1-z])*Ca*Nf*Tf * (  - 328/81 + 2348/81*s + 10/3*Zeta(2) + 16/9
         *Zeta(2)*s + 44/9*Zeta(3) - 28/9*Zeta(3)*s )

       + delta([1-z])*Ca^2*e^-4 * ( 13 + 14*s )

       + delta([1-z])*Ca^2*e^-3*a^-1 * (  - 8 - 10*s )

       + delta([1-z])*Ca^2*e^-3 * ( 11/6 + 11/6*s )

       + delta([1-z])*Ca^2*e^-2*a^-2 * ( 8 )

       + delta([1-z])*Ca^2*e^-2*a^-1 * (  - 11/3*s )

       + delta([1-z])*Ca^2*e^-2 * ( 67/18 - 67/18*s - 16*Zeta(2) - 3*Zeta(2)*s
          )

       + delta([1-z])*Ca^2*e^-1*a^-1 * (  - 67/9*s + 4*Zeta(2)*s )

       + delta([1-z])*Ca^2*e^-1 * ( 202/27 - 205/9*s - 11/2*Zeta(2) + 11/6*
         Zeta(2)*s - 49/3*Zeta(3) + 31/3*Zeta(3)*s )

       + delta([1-z])*Ca^2*a^-2 * ( 8*Zeta(2) )

       + delta([1-z])*Ca^2*a^-1 * (  - 404/27*s - 11/3*Zeta(2)*s + 8/3*Zeta(3)
          + 46/3*Zeta(3)*s )

       + delta([1-z])*Ca^2 * ( 1214/81 - 6142/81*s - 67/6*Zeta(2) - 67/18*
         Zeta(2)*s - 121/9*Zeta(3) + 77/9*Zeta(3)*s - 129/4*Zeta(4) + 115/2*
         Zeta(4)*s )
;

Global [f,{q/g},(2,2),s,z] = 
       + Ca*Tf*e^-2 * ( 43/3 + 8/3*z^-1 - 14/3*z + 4*H(0,z) + 16*H(0,z)*z )

       + Ca*Tf*e^-1 * ( 112/9 - 64/9*z^-1 - 44/9*z + 38/3*H(0,z) - 40/3*H(0,z)
         *z + 4*H(0,0,z) + 8*H(0,0,z)*z + 8*Zeta(2)*z )

       + Ca*Tf * ( 496/27 + 272/27*z^-1 + 196/27*z - 4*H(-1,0,z) - 52/9*H(0,z)
          + 440/9*H(0,z)*z + 4*H(0,z)*Zeta(2) + 16*H(0,z)*Zeta(2)*z + 38/3*H(0
         ,0,z) - 64/3*H(0,0,z)*z + 4*H(0,0,0,z) + 8*H(0,0,0,z)*z - 16*H(0,1,0,
         z)*z - 32/3*H(1,0,z) - 16/3*H(1,0,z)*z^-1 - 8/3*H(1,0,z)*z + 23/3*
         Zeta(2) - 8/3*Zeta(2)*z^-1 + 2/3*Zeta(2)*z + 8*Zeta(3)*z )

       + Cf*Tf*e^-2 * ( 7 + 4*z + 8*s + 2*H(0,z) - 4*H(0,z)*z )

       + Cf*Tf*e^-1*a^-1 * (  - 8*s )

       + Cf*Tf*e^-1 * ( 20 - z + 8*s + H(0,z) + 4*H(0,z)*z + 2*H(0,0,z) - 4*H(
         0,0,z)*z + 16*H(1,z) )

       + Cf*Tf*a^-1 * (  - 8*s )

       + Cf*Tf * ( 39 - 3*z + 8*s + 8*H(0,z) + 7*H(0,z)*z + 2*H(0,z)*Zeta(2)
          - 4*H(0,z)*Zeta(2)*z + 5*H(0,0,z) + 4*H(0,0,z)*z + 2*H(0,0,0,z) - 4*
         H(0,0,0,z)*z + 16*H(1,z) + 4*H(1,0,z) - 9*Zeta(2) + 4*Zeta(2)*z )

       + P(q,g, - z)*Ca*Tf*e^-1 * ( 4*H(-1,0,z) )

       + P(q,g, - z)*Ca*Tf * (  - 4*H(-1,z)*Zeta(2) - 8*H(-1,-1,0,z) + 4*H(-1,
         0,z) + 4*H(-1,0,0,z) + 8*H(0,-1,0,z) )

       + P(q,g,z)*Ca*Tf*e^-3 * (  - 2 )

       + P(q,g,z)*Ca*Tf*e^-2 * (  - 37/3 )

       + P(q,g,z)*Ca*Tf*e^-1 * (  - 4/9 - 44/3*H(0,z) + 4*H(1,0,z) - 2*Zeta(2)
          )

       + P(q,g,z)*Ca*Tf * (  - 964/27 + 136/9*H(0,z) - 44/3*H(0,0,z) - 4*H(1,z
         )*Zeta(2) + 56/3*H(1,0,z) - 4*H(1,1,0,z) + 7/3*Zeta(2) - 4/3*Zeta(3)
          )

       + P(q,g,z)*Cf*Tf*e^-3 * (  - 8 - 8*s )

       + P(q,g,z)*Cf*Tf*e^-2*a^-1 * ( 8*s )

       + P(q,g,z)*Cf*Tf*e^-2 * (  - 14 - 8*s - 16*H(1,z) )

       + P(q,g,z)*Cf*Tf*e^-1*a^-1 * ( 8*s )

       + P(q,g,z)*Cf*Tf*e^-1 * (  - 26 - 8*s - 4*H(0,0,z) - 16*H(1,z) - 4*H(1,
         0,z) + 8*Zeta(2) )

       + P(q,g,z)*Cf*Tf*a^-1 * ( 8*s + 8*Zeta(2)*s )

       + P(q,g,z)*Cf*Tf * (  - 50 - 8*s - 4*H(0,0,z) - 4*H(0,0,0,z) - 16*H(1,z
         ) - 16*H(1,z)*Zeta(2) - 4*H(1,0,z) - 4*H(1,0,0,z) + 2*Zeta(2) + 104/3
         *Zeta(3) + 8/3*Zeta(3)*s )
;

Global [f,{g/q},(2,2),s,z] = 
       + Cf*Ca*e^-2 * (  - 14/3 + 55/3*z + 8/3*z^2 + 8*s*z - 16*H(0,z) - 4*H(0
         ,z)*z )

       + Cf*Ca*e^-1*a^-1 * (  - 8*s*z )

       + Cf*Ca*e^-1 * (  - 56/9 + 1/9*z - 88/9*z^2 + 24*H(0,z) + 6*H(0,z)*z + 
         16/3*H(0,z)*z^2 - 8*H(0,0,z) - 4*H(0,0,z)*z + 16*H(1,z)*z - 8*Zeta(2)
          )

       + Cf*Ca * ( 4/27 + 52/27*z + 608/27*z^2 + 4*H(-1,0,z)*z - 166/3*H(0,z)
          + 4/3*H(0,z)*z - 176/9*H(0,z)*z^2 - 16*H(0,z)*Zeta(2) - 4*H(0,z)*
         Zeta(2)*z + 24*H(0,0,z) + 6*H(0,0,z)*z + 16/3*H(0,0,z)*z^2 - 8*H(0,0,
         0,z) - 4*H(0,0,0,z)*z + 16*H(0,1,0,z) - 8/3*H(1,0,z) - 20/3*H(1,0,z)*
         z - 16/3*H(1,0,z)*z^2 - 22/3*Zeta(2) - 1/3*Zeta(2)*z - 8/3*Zeta(2)*
         z^2 - 8*Zeta(3) )

       + Cf^2*e^-2 * ( 4 + 3*z + 4*H(0,z) - 2*H(0,z)*z )

       + Cf^2*e^-1 * ( 1 + 11*z - 4*H(0,z) - 3*H(0,z)*z + 4*H(0,0,z) - 2*H(0,0
         ,z)*z )

       + Cf^2 * ( 10 + 15*z - 15*H(0,z) + 5*H(0,z)*z + 4*H(0,z)*Zeta(2) - 2*H(
         0,z)*Zeta(2)*z - 4*H(0,0,z) - 3*H(0,0,z)*z + 4*H(0,0,0,z) - 2*H(0,0,0
         ,z)*z + 4*Zeta(2) + 3*Zeta(2)*z )

       + P(g,q, - z)*Cf*Ca*e^-1 * ( 4*H(-1,0,z) )

       + P(g,q, - z)*Cf*Ca * (  - 4*H(-1,z)*Zeta(2) - 8*H(-1,-1,0,z) + 4*H(-1,
         0,0,z) + 8*H(0,-1,0,z) )

       + P(g,q,z)*Cf*Ca*e^-3 * (  - 6 - 8*s )

       + P(g,q,z)*Cf*Ca*e^-2*a^-1 * ( 8*s )

       + P(g,q,z)*Cf*Ca*e^-2 * (  - 31/3 - 16*H(1,z) )

       + P(g,q,z)*Cf*Ca*e^-1 * ( 143/9 + 6*Zeta(2) )

       + P(g,q,z)*Cf*Ca*a^-1 * ( 8*Zeta(2)*s )

       + P(g,q,z)*Cf*Ca * (  - 664/27 + 8*H(0,1,0,z) - 20*H(1,z)*Zeta(2) + 44/
         3*H(1,0,z) - 4*H(1,0,0,z) - 4*H(1,1,0,z) + 13/3*Zeta(2) + 32*Zeta(3)
          + 8/3*Zeta(3)*s )

       + P(g,q,z)*Cf^2*e^-3 * (  - 4 )

       + P(g,q,z)*Cf^2*e^-2 * (  - 6 )

       + P(g,q,z)*Cf^2*e^-1 * (  - 16 - 4*Zeta(2) )

       + P(g,q,z)*Cf^2 * (  - 32 - 6*Zeta(2) - 8/3*Zeta(3) )
;

Global [f,{q/q},(2,2),s,z] = 
       + Cf*Tf*e^-2 * ( 2 + 8/3*z^-1 - 2*z - 8/3*z^2 + 4*H(0,z) + 4*H(0,z)*z )

       + Cf*Tf*e^-1 * ( 12 - 64/9*z^-1 - 12*z + 64/9*z^2 - 2*H(0,z) - 2*H(0,z)
         *z - 16/3*H(0,z)*z^2 + 4*H(0,0,z) + 4*H(0,0,z)*z )

       + Cf*Tf * (  - 46/3 + 272/27*z^-1 + 62/3*z - 416/27*z^2 + 28/3*H(0,z)
          - 16/3*H(0,z)*z + 128/9*H(0,z)*z^2 + 4*H(0,z)*Zeta(2) + 4*H(0,z)*
         Zeta(2)*z - 2*H(0,0,z) - 2*H(0,0,z)*z - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0
         ,z) + 4*H(0,0,0,z)*z + 8*H(1,0,z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z
          + 16/3*H(1,0,z)*z^2 + 10*Zeta(2) - 8/3*Zeta(2)*z^-1 - 10*Zeta(2)*z
          + 8/3*Zeta(2)*z^2 )

       + Cf*Nf*Tf * (  - 4/3 + 4/3*z )

       + Cf*Ca*e^-2 * ( 2 - 2*z )

       + Cf*Ca*e^-1 * (  - 6 + 4*z - 2*H(0,z) - 2*H(0,z)*z )

       + Cf*Ca * ( 38/3 - 50/3*z + 2*H(0,z) + 10*H(0,z)*z - 4*H(0,0,z)*z - 4*
         Zeta(2) + 4*Zeta(2)*z )

       + Cf^2*e^-2 * ( 4 - 4*z + 8*s - 8*s*z + 2*H(0,z) + 2*H(0,z)*z + 16*H(1,
         z) + 16*H(1,z)*z )

       + Cf^2*e^-1*a^-1 * (  - 8*s + 8*s*z )

       + Cf^2*e^-1 * ( 18 - 16*z + 3*H(0,z) + 7*H(0,z)*z + 2*H(0,0,z) + 2*H(0,
         0,z)*z + 16*H(1,z) - 16*H(1,z)*z )

       + Cf^2 * (  - 20 + 24*z + 2*H(0,z) - 24*H(0,z)*z + 2*H(0,z)*Zeta(2) + 2
         *H(0,z)*Zeta(2)*z + 3*H(0,0,z) + 7*H(0,0,z)*z + 2*H(0,0,0,z) + 2*H(0,
         0,0,z)*z + 16*H(1,z)*Zeta(2) + 16*H(1,z)*Zeta(2)*z + 4*H(1,0,z) - 4*
         H(1,0,z)*z )

       + P(q,q,z)*Cf*Nf*Tf*e^-2 * ( 4/3 )

       + P(q,q,z)*Cf*Nf*Tf*e^-1 * ( 20/9 + 4/3*H(0,z) )

       + P(q,q,z)*Cf*Nf*Tf * ( 112/27 + 20/9*H(0,z) + 4/3*H(0,0,z) + 4/3*Zeta(
         2) )

       + P(q,q,z)*Cf*Ca*e^-3 * (  - 2 )

       + P(q,q,z)*Cf*Ca*e^-2 * (  - 11/3 )

       + P(q,q,z)*Cf*Ca*e^-1 * (  - 67/9 - 11/3*H(0,z) - 2*H(0,0,z) - 4*H(1,0,
         z) )

       + P(q,q,z)*Cf*Ca * (  - 404/27 - 76/9*H(0,z) - 11/3*H(0,0,z) - 2*H(0,0,
         0,z) - 4*H(0,1,0,z) + 4*H(1,z)*Zeta(2) + 4*H(1,1,0,z) - 11/3*Zeta(2)
          + 2/3*Zeta(3) )

       + P(q,q,z)*Cf^2*e^-3 * (  - 8 - 8*s )

       + P(q,q,z)*Cf^2*e^-2*a^-1 * ( 8*s )

       + P(q,q,z)*Cf^2*e^-1 * ( 3*H(0,z) + 4*H(1,0,z) + 4*Zeta(2) )

       + P(q,q,z)*Cf^2*a^-1 * ( 8*Zeta(2)*s )

       + P(q,q,z)*Cf^2 * ( 8*H(0,z) + 3*H(0,0,z) + 8*H(0,1,0,z) - 8*H(1,z)*
         Zeta(2) - 4*H(1,0,0,z) - 8*H(1,1,0,z) + 92/3*Zeta(3) + 8/3*Zeta(3)*s
          )

       + PlPr(H(1,z)*[1-z]^-1)*Cf^2*e^-2 * (  - 32 )

       + PlPr(H(1,z)*[1-z]^-1)*Cf^2 * (  - 32*Zeta(2) )

       + delta([1-z])*Cf*Nf*Tf*e^-3 * (  - 2/3 - 2/3*s )

       + delta([1-z])*Cf*Nf*Tf*e^-2*a^-1 * ( 4/3*s )

       + delta([1-z])*Cf*Nf*Tf*e^-2 * (  - 10/9 + 16/9*s )

       + delta([1-z])*Cf*Nf*Tf*e^-1*a^-1 * ( 20/9*s )

       + delta([1-z])*Cf*Nf*Tf*e^-1 * (  - 56/27 + 28/3*s + 2*Zeta(2) - 2/3*
         Zeta(2)*s )

       + delta([1-z])*Cf*Nf*Tf*a^-1 * ( 112/27*s + 4/3*Zeta(2)*s )

       + delta([1-z])*Cf*Nf*Tf * (  - 328/81 + 2348/81*s + 10/3*Zeta(2) + 16/9
         *Zeta(2)*s + 44/9*Zeta(3) - 28/9*Zeta(3)*s )

       + delta([1-z])*Cf*Ca*e^-4 * ( 1 + 2*s )

       + delta([1-z])*Cf*Ca*e^-3*a^-1 * (  - 2*s )

       + delta([1-z])*Cf*Ca*e^-3 * ( 11/6 + 11/6*s )

       + delta([1-z])*Cf*Ca*e^-2*a^-1 * (  - 11/3*s )

       + delta([1-z])*Cf*Ca*e^-2 * ( 67/18 - 67/18*s - 4*Zeta(2) + Zeta(2)*s )

       + delta([1-z])*Cf*Ca*e^-1*a^-1 * (  - 67/9*s + 4*Zeta(2)*s )

       + delta([1-z])*Cf*Ca*e^-1 * ( 202/27 - 205/9*s - 11/2*Zeta(2) + 11/6*
         Zeta(2)*s - 49/3*Zeta(3) + 31/3*Zeta(3)*s )

       + delta([1-z])*Cf*Ca*a^-1 * (  - 404/27*s - 11/3*Zeta(2)*s + 38/3*Zeta(
         3)*s )

       + delta([1-z])*Cf*Ca * ( 1214/81 - 6142/81*s - 67/6*Zeta(2) - 67/18*
         Zeta(2)*s - 121/9*Zeta(3) + 77/9*Zeta(3)*s - 37/4*Zeta(4) + 121/2*
         Zeta(4)*s )

       + delta([1-z])*Cf^2*e^-4 * ( 12 + 12*s )

       + delta([1-z])*Cf^2*e^-3*a^-1 * (  - 8 - 8*s )

       + delta([1-z])*Cf^2*e^-2*a^-2 * ( 8 )

       + delta([1-z])*Cf^2*e^-2 * (  - 12*Zeta(2) - 4*Zeta(2)*s )

       + delta([1-z])*Cf^2*a^-2 * ( 8*Zeta(2) )

       + delta([1-z])*Cf^2*a^-1 * ( 8/3*Zeta(3) + 8/3*Zeta(3)*s )

       + delta([1-z])*Cf^2 * (  - 23*Zeta(4) - 3*Zeta(4)*s )
;

Global [f,{qb/q},(2,2),s,z] = 
       + Cf*Tf*e^-2 * ( 2 + 8/3*z^-1 - 2*z - 8/3*z^2 + 4*H(0,z) + 4*H(0,z)*z )

       + Cf*Tf*e^-1 * ( 12 - 64/9*z^-1 - 12*z + 64/9*z^2 - 2*H(0,z) - 2*H(0,z)
         *z - 16/3*H(0,z)*z^2 + 4*H(0,0,z) + 4*H(0,0,z)*z )

       + Cf*Tf * (  - 46/3 + 272/27*z^-1 + 62/3*z - 416/27*z^2 + 28/3*H(0,z)
          - 16/3*H(0,z)*z + 128/9*H(0,z)*z^2 + 4*H(0,z)*Zeta(2) + 4*H(0,z)*
         Zeta(2)*z - 2*H(0,0,z) - 2*H(0,0,z)*z - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0
         ,z) + 4*H(0,0,0,z)*z + 8*H(1,0,z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z
          + 16/3*H(1,0,z)*z^2 + 10*Zeta(2) - 8/3*Zeta(2)*z^-1 - 10*Zeta(2)*z
          + 8/3*Zeta(2)*z^2 )

       + Cf*Ca*e^-1 * ( 4 - 4*z + 2*H(0,z) + 2*H(0,z)*z )

       + Cf*Ca * (  - 15 + 15*z + 4*H(-1,0,z) + 4*H(-1,0,z)*z - 3*H(0,z) - 11*
         H(0,z)*z + 4*H(1,0,z) - 4*H(1,0,z)*z + 6*Zeta(2) - 2*Zeta(2)*z )

       + Cf^2*e^-1 * (  - 8 + 8*z - 4*H(0,z) - 4*H(0,z)*z )

       + Cf^2 * ( 30 - 30*z - 8*H(-1,0,z) - 8*H(-1,0,z)*z + 6*H(0,z) + 22*H(0,
         z)*z - 8*H(1,0,z) + 8*H(1,0,z)*z - 12*Zeta(2) + 4*Zeta(2)*z )

       + P(q,q, - z)*Cf*Ca*e^-1 * (  - 4*H(-1,0,z) + 2*H(0,0,z) - 2*Zeta(2) )

       + P(q,q, - z)*Cf*Ca * ( 4*H(-1,z)*Zeta(2) + 8*H(-1,-1,0,z) - 4*H(-1,0,0
         ,z) - 8*H(0,-1,0,z) + 2*H(0,0,0,z) + 4*H(0,1,0,z) - 2*Zeta(3) )

       + P(q,q, - z)*Cf^2*e^-1 * ( 8*H(-1,0,z) - 4*H(0,0,z) + 4*Zeta(2) )

       + P(q,q, - z)*Cf^2 * (  - 8*H(-1,z)*Zeta(2) - 16*H(-1,-1,0,z) + 8*H(-1,
         0,0,z) + 16*H(0,-1,0,z) - 4*H(0,0,0,z) - 8*H(0,1,0,z) + 4*Zeta(3) )
;

Global [f,{qp/q},(2,2),s,z] = 
       + Cf*Tf*e^-2 * ( 2 + 8/3*z^-1 - 2*z - 8/3*z^2 + 4*H(0,z) + 4*H(0,z)*z )

       + Cf*Tf*e^-1 * ( 12 - 64/9*z^-1 - 12*z + 64/9*z^2 - 2*H(0,z) - 2*H(0,z)
         *z - 16/3*H(0,z)*z^2 + 4*H(0,0,z) + 4*H(0,0,z)*z )

       + Cf*Tf * (  - 46/3 + 272/27*z^-1 + 62/3*z - 416/27*z^2 + 28/3*H(0,z)
          - 16/3*H(0,z)*z + 128/9*H(0,z)*z^2 + 4*H(0,z)*Zeta(2) + 4*H(0,z)*
         Zeta(2)*z - 2*H(0,0,z) - 2*H(0,0,z)*z - 16/3*H(0,0,z)*z^2 + 4*H(0,0,0
         ,z) + 4*H(0,0,0,z)*z + 8*H(1,0,z) - 16/3*H(1,0,z)*z^-1 - 8*H(1,0,z)*z
          + 16/3*H(1,0,z)*z^2 + 10*Zeta(2) - 8/3*Zeta(2)*z^-1 - 10*Zeta(2)*z
          + 8/3*Zeta(2)*z^2 )
;

Global [f,{qpb/q},(2,2),s,z] = 
       [f,{qp/q},(2,2),s,z]
;

*Bracket Cf,Ca,Nf,Tf,e,a,P,delta,PlPr;
*Print;
*.sort
*
*if(match(P(?z)));
* if(match(P(?a1,z)));
*  id P(q,q,z) = 2*PlPr(1/[1-z]) - 1 - z;
*  id P(g,g,z) = PlPr(1/[1-z]) + 1/z - 2 + z - z^2;
*  id P(q,g,z) = 1 - 2*z + 2*z^2;
*  id P(g,q,z) = 2/z - 2 + z;
* else;
*  id P(q,q,-z) = 2/[1+z] - 1 +z;
*  id P(g,g,-z) = 1/[1+z] -1/z - 2 -z - z^2;
*  id P(q,g,-z) = 1 +2*z + 2*z^2;
*  id P(g,q,-z) = -2/z - 2 -z;
* endif;
*endif;

.end
