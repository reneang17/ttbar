#procedure lorentz4p(PROTOTYPE)

#-
#include decls

i mu, nu;
s del(:1);

.global

#do i=1,3

  g deriv`i' = p`i'(nu)*

    #include `PROTOTYPE'definition

  ;

  id (K1?.K2?)^n? = SS(K1.K2,n);

  splitarg ((p`i')) DS;

  id DS(K?,p`i',m?,n?) = DS(K+p`i',m,n)-del*2*n*(K(mu)+p`i'(mu))*DS(K+p`i',m,n+1);
  id DS(K?,-p`i',m?,n?) = DS(K-p`i',m,n)+del*2*n*(K(mu)-p`i'(mu))*DS(K-p`i',m,n+1);

  id SS(K?!{p`i'}.p`i',n?) = SS(K.p`i',n)+del*n*K(mu)*SS(K.p`i',n-1);

  if (count(del,1) != 1) discard;
  id del = 1;

  .store

#enddo

l id1 = (p1(mu)*p2(nu)-p1(nu)*p2(mu))*(deriv1+deriv2+deriv3);

l id2 = (p1(mu)*p3(nu)-p1(nu)*p3(mu))*(deriv1+deriv2+deriv3);

l id3 = (p2(mu)*p3(nu)-p2(nu)*p3(mu))*(deriv1+deriv2+deriv3);

#call `PROTOTYPE'matching

id SS(K?)*DS(K?,m?,n?) = DS(K,m,n-1)+m^2*DS(K,m,n);

id K1?.K2? = SS(K1.K2,1);
id SS(K1?.K2?,n1?)*SS(K1?.K2?,n2?) = SS(K1.K2,n1+n2);
id SS(K1?.K2?,n?) = K1.K2^n;

#include output

#endprocedure
