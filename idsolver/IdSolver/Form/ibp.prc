#procedure ibp(k,p,PROTOTYPE)

#-
#include decls

i mu;
s del(:1);

* this is the Local part (so effectively what is returned by FORM), 
* where the p^\mu vector is multiplied by the prototype definition

l id = `p'(mu)*

  #include `PROTOTYPE'definition

;

id (K1?.K2?)^n? = SS(K1.K2,n);

splitarg ((`k')) DS;

id `k'(mu) = `k'(mu)+del*d;
	
* this replacements correspond to taking derivatives of inverse propagators;
* then all terms with the number of occurences of 'del' != 1 are discarded 
* and finally 'del' is set to 1

id DS(`k',m?,n?) = DS(`k',m,n)-del*2*n*`k'(mu)*DS(`k',m,n+1);
id DS(-`k',m?,n?) = DS(-`k',m,n)-del*2*n*`k'(mu)*DS(-`k',m,n+1);
id DS(K?,`k',m?,n?) = DS(K+`k',m,n)-del*2*n*(K(mu)+`k'(mu))*DS(K+`k',m,n+1);
id DS(K?,-`k',m?,n?) = DS(K-`k',m,n)+del*2*n*(K(mu)-`k'(mu))*DS(K-`k',m,n+1);

* this replacements correspond to taking derivatives of numerators;
* same approach as for the propagators

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
