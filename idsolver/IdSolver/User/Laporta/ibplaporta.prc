#procedure ibplaporta(k,p,PROTOTYPE)

#-
#include decls
#define keepsymbolx "1"

i mu;
s del(:1);

l id = `p'(mu)*

  #include `PROTOTYPE'definition

;

.sort

id DS(?args,X,n?) = DS(?args,X,n+x-1);

id (K1?.K2?)^n? = SS(K1.K2,n);

splitarg ((`k')) DS;

id `k'(mu) = `k'(mu)+del*d;
	
id DS(`k',m?,n?) = DS(`k',m,n)-del*2*n*`k'(mu)*DS(`k',m,n+1);
id DS(-`k',m?,n?) = DS(-`k',m,n)-del*2*n*`k'(mu)*DS(-`k',m,n+1);
id DS(K?,`k',m?,n?) = DS(K+`k',m,n)-del*2*n*(K(mu)+`k'(mu))*DS(K+`k',m,n+1);
id DS(K?,-`k',m?,n?) = DS(K-`k',m,n)+del*2*n*(K(mu)-`k'(mu))*DS(K-`k',m,n+1);

id SS(`k'.`k',n?) = SS(`k'.`k',n)+del*2*n*`k'(mu)*SS(`k'.`k',n-1);
id SS(K?!{`k'}.`k',n?) = SS(K.`k',n)+del*n*K(mu)*SS(K.`k',n-1);

if (count(del,1) != 1) discard;
id del = 1;

#call `PROTOTYPE'matching

id SS(K?)*DS(K?,m?,n?) = DS(K,m,n-1)+m^2*DS(K,m,n);

id K1?.K2? = SS(K1.K2,1);
id SS(K1?.K2?,n1?)*SS(K1?.K2?,n2?) = SS(K1.K2,n1+n2);
id SS(K1?.K2?,n?) = K1.K2^n;

id d = 4-2*ep;

#include userkinematics

print;
.end

#endprocedure
