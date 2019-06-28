(*------------------------------------------------------------------*)
  (* weight 1  *)
  r[1]  = H[-1, x_] -> Log[1+x];

r[2]  = H[ 0, x_] -> Log[x];

r[3]  = H[ 1, x_] -> - Log[1-x];

  (*----------------------------------------------------------------*)


  HPLrulesW1=Table[r[i],{i,1,3}];


  (*----------------------------------------------------------------*)
  (* weight 2  *)

r4  = H[-1,-1, x_] -> Log[1 + x]^2/2;

r55 = H[-1, 0, x_] -> H[-1,x] * H[0,x] -  H[0,-1,x] ;

r66 = H[-1, 1, x_] -> - Log[2] * Log[1+x] -  PolyLog[2,1/2] + PolyLog[2,(1+x)/2];

r7  = H[ 0,-1, x_] -> - PolyLog[2,-x];

r8  = H[ 0, 0, x_] -> 1/2*Log[x]^2;

r9  = H[ 0, 1, x_] -> PolyLog[2,x];

r101= H[ 1,-1, x_] -> - H[-1,1,x] +  H[1,x] *  H[-1,x];

r111= H[ 1, 0, x_] -> -  H[0,1,x] +  H[1,x] *  H[0,x];

r12 = H[ 1, 1, x_] ->  Log[1-x]^2/2;

  (*----------------------------------------------------------------*)


    (* HPLrulesW2 = {r4,r7,r8,r9,r12,r55,r66,r101,r111}; *)
 
    HPLrulesW2 = {r4, r7, r8,r9,r12,r55,r66,r101,r111};


  (*-----------------------------------------------------------------------------*)
  (* weight 3  the cases (000) (-1-1-1) (111) (011) (001) (0-1-1) (00-1)         *)

rr[31]  =  H[-1,-1,-1,x_] ->   Log[1+x]^3/6;

rr[32]  =  H[0, 0, 0, x_] ->   Log[x]^3/6;

rr[33]  =  H[ 0,-1,-1,x_] ->   PolyLog[1,2,-x];

rr[34]  =  H[ 0, 0,-1,x_] -> - PolyLog[3,-x]; 

rr[35]  =  H[ 0, 0, 1,x_] ->   PolyLog[3,x];

rr[36]  =  H[ 0, 1, 1,x_] ->   PolyLog[1,2,x];

rr[37]  =  H[ 1, 1, 1,x_] -> - Log[1-x]^3/6;

rr[38]  =  H[-1,-1, 0,x_] ->   H[ 0,-1,-1,x] -  H[-1,x] *  H[ 0,-1,x] + H[ 0,x] *   H[-1,x]^2/2; 

rr[39]  =  H[-1,0,0,x_] ->     H[0,0,-1,x] -  H[0,x] *  H[0,-1,x]+H[-1,x] * H[0,x]^2/2;
  
rr[40]  =  H[0, -1, 0, x_] -> -2* H[0,0,-1,x] +  H[0,x] *  H[0,-1,x];
 
rr[41]  =  H[-1, 0,-1,x_] -> -2*  H[0,-1,-1,x] +  H[-1,x]* H[0,-1,x];

rr[42]  =  H[ 0, 1, 0,x_] -> -2*  H[0,0,1,x] +  H[0,x] *  H[0,1,x];

rr[43]  =  H[ 1, 0, 0,x_] ->      H[0,0,1,x]  - H[0,x] *  H[0,1,x]   + H[1,x]* H[0,x]^2/2 ;

rr[44]  =  H[ 1, 0, 1,x_] ->  -2* H[0,1,1,x] +  H[1,x]* H[0,1,x];

rr[45]  =  H[ 1, 1, 0,x_] ->      H[0,1,1,x] -  H[1,x] *  H[0,1,x] + H[0,x] *   H[1,x]^2/2;  


  (*--------------------------------------------------------------------------------------------------------------------*)
  (*   weight 3  -  three different arguments     (0,1,-1)                                                              *) 
  (* have 2 independent fcnc and need here auxiliary functions X3, Z3                                                   *)


  (*----------------------------------------------------------------*)
  (* simplest two depend on X3 and are:  (1,0,-1)  and  (-1,0,1)                                                        *) 

rr[58] =  X3[x_]         ->   PolyLog[1,2,x^2]/2 - PolyLog[1,2,x] -  PolyLog[1,2,-x];

rr[46]  =  H[ 1, 0,-1,x_] ->  X3[x] +H[1,x]*H[0,-1,x]; 

rr[47]  =  H[-1, 0, 1,x_] ->  H[1,0,-1,x] - H[1,x]*H[0,-1,x] + H[-1,x]*H[0,1,x]; 


  (*----------------------------------------------------------------*)
  (* next simplest two depend on Z3 and are :  (0,-1,1)  and  (1,-1,0)    *) 

  
    rr[59] = Z3[x_]  :>  Integrate[(PolyLog[2,(1+z)/2]-PolyLog[2,1/2])/z,{z,0,x}];

rr[51]  =  H[ 0,-1, 1,x_] ->  Z3[x] + Log[2]*PolyLog[2,-x];

rr[50]  =  H[ 1,-1, 0,x_] ->   H[ 0,-1, 1,x] - H[1,x]*H[0,-1,x] + H[0,x]*H[1,-1,x];


  (*----------------------------------------------------------------*)
  (* last two depend on X3, Z3 and are :  (0,1,-1)  and  (-1,1,0)    *) 

rr[49]  =  H[0,1,-1,x_] ->  -  H[1,-1,0,x] - H[1,0,-1,x] +  H[1,x]* H[-1,0,x] +  H[1,x]* H[0,-1,x] - H[0,x]* H[-1,1,x] ;
              (*      H[ 0, 1,-1,x_] ->  MOCH 184  *)

rr[48]  =  H[-1,1,0,x_] ->  H[0,1,-1,x] - H[0,x]* H[1,-1,x] + H[-1,x]* H[1,0,x] ; 
              (*   see also Moch/Vermaseren formula 176 for H[-1, 1, 0,x_] as alternative test for Y30   *)



  (*-----------------------------------------------------------------------------------------------------------------*)

		(* weight 3, classes  (-1,-1,1) (-1,1,1)               two indep. fcns. *)

rr[52]  =  H[-1, 1, 1,x_] -> ( PolyLog[1,2,(1+x)/2]- PolyLog[1,2,1/2]) - Log[2]*(PolyLog[2,(1+x)/2]-PolyLog[2,1/2])+Log[2]^2*Log[1+x]/2; 

rr[53]  =  H[ 1,-1, 1,x_] ->  -2* H[-1,1,1,x] + H[1,x]*H[-1,1,x]; 

rr[54]  =  H[ 1, 1,-1,x_] ->   H[-1,1,1,x] -H[1,x]*( H[-1,1,x]-H[1,-1,x] )/2;

  (*-------------------------------------*)
  (* next 3 from (-1,1) <-> (1,-1) exchange symmetry derived. see p.108 *)

rr[55]  =  H[ 1,-1,-1,x_] -> -( PolyLog[1,2,(1-x)/2]- PolyLog[1,2,1/2]) + Log[2]*(PolyLog[2,(1-x)/2]-PolyLog[2,1/2]) - Log[2]^2*Log[1-x]/2;;

rr[56]  =  H[-1,-1, 1,x_] -> H[1,-1,-1,x] - H[-1,x]*( H[1,-1,x] - H[-1,1,x] )/2;

rr[57]  =  H[-1, 1,-1,x_] -> -2* H[1,-1,-1,x] + H[-1,x]*H[1,-1,x]; 


  (*----------------------------------------------------------------*)


   HPLrulesW3 =  Table[rr[i],{i,31,59}];


  (*------------------------------------------------------------------------------------------*)
  (*    weight 4 classes   (0,0,0,0)   (1,0,0,0)   (1,1,0,0)   (1,1,1,0)   (1,1,1,1)          *)

  (*    they are also in: GehrmannRemiddihep-ph/0008287v.2 *)

r[801] =  H[0,0,0,0,x_]     ->  Log[x]^4/24;

r[802] =  H[ 0, 0, 0, 1,x_] ->  PolyLog[4, x];

r[803] =  H[ 0, 0, 1, 0,x_] -> -3* H[0,0,0,1,x] + H[0,x]*H[0,0,1,x]; 

r[804] =  H[ 0, 0, 1, 1,x_] ->  PolyLog[2,2,x];

r[805] =  H[ 0, 1, 0, 0,x_] -> - H[0,0,1,0,x] + H[0,x]*H[0,1,0,x]/2;

r[806] =  H[ 1, 0, 0, 0,x_] -> - H[0,1,0,0,x]/3 + H[0,x]*H[1,0,0,x]/3;

r[807] =  H[ 0, 1, 0, 1,x_] -> -2* H[0,0,1,1,x] + H[1,0,x]^2/2  - H[1,x] * H[1,0,0,x]  + H[1,x] * H[0,0,1,x];

r[808] =  H[ 0, 1, 1, 0,x_] -> H[0,x]*H[0,1,1,x] - H[0,1,x]^2/2;  

r[809] =  H[ 0, 1, 1, 1,x_] ->  PolyLog[1,3,x]; 

r[810] =  H[ 1, 0, 0, 1,x_] -> H[1,x] * H[0,0,1,x] -  H[0,1,x]^2/2;

r[811] =  H[ 1, 0, 1, 0,x_] -> 2* H[0,0,1,1,x] + H[1,x]*( H[1,0,0,x] + H[0,1,0,x] - H[0,0,1,x] ) -2* H[0,x]*H[1,1,0,x] + H[1,0,x]^2/2  ;

r[812] =  H[ 1, 0, 1, 1,x_] -> -3* H[0,1,1,1,x] + H[1,x]*H[0,1,1,x];

r[813] =  H[ 1, 1, 0, 0,x_] -> - H[0,0,1,1,x] - H[1,x]*( H[0,1,0,x] - H[0,0,1,x] + H[1,0,0,x] )/2 + H[0,x]*H[1,1,0,x];

r[814] =  H[ 1, 1, 0, 1,x_] -> - H[1,0,1,1,x] + H[1,x]*H[1,0,1,x]/2;

r[815] =  H[ 1, 1, 1, 0,x_] ->  ( - H[1,1,0,1,x] + H[1,x]*H[1,1,0,x] )/3 ;

r[816] =  H[ 1, 1, 1, 1,x_] ->  Log[1-x]^4/24;


  (*------------------------------------------------------------------------------------------*)
  (*      weight 4 classes   (-1,0,0,0)   (-1,-1,0,0)   (-1,-1,-1,0)   (-1,-1,-1,-1)          *)

(*r[18]=   H[0,0,0,0,x_]    ->  Log[x]^4/24  *)

r[817] =  H[ 0, 0, 0,-1,x_] ->  - PolyLog[4, -x];

r[818] =  H[ 0, 0,-1, 0,x_] -> -3* H[0,0,0,-1,x] + H[0,x]*H[0,0,-1,x]; 

r[819] =  H[ 0, 0,-1,-1,x_] ->  PolyLog[2,2,-x];

r[820] =  H[ 0,-1, 0, 0,x_] -> - H[0,0,-1,0,x] + H[0,x]*H[0,-1,0,x]/2;

r[821] =  H[-1, 0, 0, 0,x_] -> - H[0,-1,0,0,x]/3 + H[0,x]*H[-1,0,0,x]/3;

r[822] =  H[ 0,-1, 0,-1,x_] -> -2* H[0,0,-1,-1,x] + H[-1,0,x]^2/2  - H[-1,x] * H[-1,0,0,x]  + H[-1,x] * H[0,0,-1,x];

r[823] =  H[ 0,-1,-1, 0,x_] -> H[0,x]*H[0,-1,-1,x] - H[0,-1,x]^2/2;  

r[824] =  H[ 0,-1,-1,-1,x_] -> - PolyLog[1,3,-x]; 

r[825] =  H[-1, 0, 0,-1,x_] -> H[-1,x] * H[0,0,-1,x] -  H[0,-1,x]^2/2;

r[826] =  H[-1, 0,-1, 0,x_] -> 2* H[0,0,-1,-1,x] + H[-1,x]*( H[-1,0,0,x] + H[0,-1,0,x] - H[0,0,-1,x] ) -2* H[0,x]*H[-1,-1,0,x] + H[-1,0,x]^2/2; 

r[827] =  H[-1, 0,-1,-1,x_] -> -3* H[0,-1,-1,-1,x] + H[-1,x]*H[0,-1,-1,x];

r[828] =  H[-1,-1, 0, 0,x_] -> - H[0,0,-1,-1,x] - H[-1,x]*( H[0,-1,0,x] - H[0,0,-1,x] + H[-1,0,0,x] )/2 + H[0,x]*H[-1,-1,0,x]; 

r[829] =  H[-1,-1, 0,-1,x_] -> -H[-1,0,-1,-1,x] + H[-1,x]*H[-1,0,-1,x]/2;

r[830] =  H[-1,-1,-1, 0,x_] ->   ( - H[-1,-1,0,-1,x] + H[-1,x]*H[-1,-1,0,x] )/3 ;

r[831] =  H[-1,-1,-1,-1,x_] ->  Log[1+x]^4/24;


  (*----------------------------------------------------------------*)
  (* weight 4,   class   (-1,0,1,1)                                           *)

  (* need here three auxiliary functions: U4, V4, W4, Z3                  *) 

    r[791] = U4[x_] :> Integrate[ (  PolyLog[1,2,(1+y)/2] -  PolyLog[1,2,(1/2)] )/y, {y,0,x}];

r[792] = V4[x_] :> Integrate[ Log[1-y]* ( PolyLog[2,(1+y)/2] - PolyLog[2,1/2] ) /y , {y,0,x}];

r[793] = W4[x_] :> Integrate[ Log[1-y]^2*Log[1+y] /y , {y,0,x}];

(*  Z3[x_] -> Y30[x] - X3[x]          *)

r[832] =  H[ 0,-1, 1, 1,x_] ->  U4[x] - Log[2]*Z3[x]  + Log[2]^2*H[0,-1,x]/2;  

r[833] =  H[ 0, 1,-1, 1,x_] ->  -2* H[0,-1,1,1,x] - V4[x] + Log[2]*X3[x]; 

r[834] =  H[ 0, 1, 1,-1,x_] ->  H[0,-1,1,1,x] + V4[x] - Log[2]*X3[x] + W4[x]/2; 


r[837] =  H[-1, 0, 1, 1,x_] -> -H[0,-1,1,1,x] - H[0,1,-1,1,x] - H[0,1,1,-1,x] + H[-1,x]*H[0,1,1,x] ;

r[838] =  H[ 1, 0,-1, 1,x_] -> -2* H[0,-1,1,1,x] - H[0,1,-1,1,x] +  H[1,x]*H[0,-1,1,x];

r[839] =  H[ 1, 0, 1,-1,x_] -> - H[0,1,-1,1,x] -2* H[0,1,1,-1,x] + H[1,x]*H[0,1,-1,x] ;


r[835] =  H[-1, 1, 0, 1,x_] ->  2*H[0,1,1,-1,x] + H[0,1,-1,1,x] + H[1,x]*( - H[1,-1,0,x] - H[1,0,-1,x] + H[-1,0,1,x] + H[0,-1,1,x] ) - 2*H[-1,x]*H[0,1,1,x] + H[1,-1,x]*H[1,0,x]; 

r[836] =  H[ 1,-1, 0, 1,x_] ->  2*H[0,-1,1,1,x] + H[0,1,-1,1,x] + H[1,x]*( H[1,-1,0,x] + H[1,0,-1,x] - H[0,-1,1,x] ) - H[1,-1,x]*H[1,0,x];

r[842] =  H[ 1, 1, 0, -1,x_] -> H[0,-1,1,1,x] + H[0,1,-1,1,x] + H[0,1,1,-1,x] - 1/2*H[1,x]*( H[0,-1,1,x] - H[1,0,-1,x] + H[0,1,-1,x]);


r[840] =  H[-1, 1, 1, 0,x_] -> - H[0,1,1,-1,x] - H[1,-1,x]*H[1,0,x] + 1/2* H[1,x]*(H[1,-1,0,x] + H[1,0,-1,x] + H[-1,1,0,x] - H[-1,0,1,x] - H[0,1,-1,x] - H[0,-1,1,x]) + H[-1,x]*H[0,1,1,x] + H[0,x]*H[1,1,-1,x] ;

r[841] =  H[ 1,-1, 1, 0,x_] -> - H[0,1,-1,1,x] +  H[1,x]*H[0,1,-1,x] -2* H[0,x]*H[1,1,-1,x] + H[1,-1,x]*H[1,0,x] ;

r[843] =  H[ 1, 1,-1, 0,x_] -> - H[0,-1,1,1,x] +  H[0,x]*H[1,1,-1,x] + 1/2* H[1,x]*(-H[1,0,-1,x] -  H[0,1,-1,x] +  H[0,-1,1,x]);



  (*---------------------------------------------------------------------*)
  (* weight 4,   class   (-1,-1,0,1)                                     *)

  (* need here three auxiliary functions: (log(2)*Z3m-U4m), V4m, W4m     *) 

    r[794] =  U4m[x_] :> Integrate[-(PolyLog[1,2,(1 - y)/2] - PolyLog[1,2,(1/2)])/y,{y,0,x}];

r[795] =  Z3m[x_] :> Integrate[-(PolyLog[2, (1 - y)/2] - PolyLog[2, 1/2])/y, {y, 0, x}];

r[796] =  V4m[x_] :> Integrate[-Log[1 + y]*(PolyLog[2, (1 - y)/2] - PolyLog[2, 1/2])/y, {y, 0,x}];

r[797] =  W4m[x_] :> Integrate[-Log[1 + y]^2*Log[1 - y]/y, {y, 0, x}];


r[844] =  H[ 0, 1,-1,-1,x_] ->  U4m[x] - Log[2]*Z3m[x]  + Log[2]^2*H[0,1,x]/2;  

r[845] =  H[ 0,-1, 1,-1,x_] ->  -2* H[0,1,-1,-1,x] - V4m[x] - Log[2]*X3[x]; 

r[846] =  H[ 0,-1,-1, 1,x_] ->      H[0,1,-1,-1,x] + V4m[x] + Log[2]*X3[x] + W4m[x]/2; 


  r[847] =  H[ 1, 0,-1,-1,x_] ->  -H[0,1,-1,-1,x] - H[0,-1,1,-1,x] - H[0,-1,-1,1,x] + H[1,x]*H[0,-1,-1,x] ;

r[848] =  H[-1, 0, 1,-1,x_] -> -2* H[0,1,-1,-1,x] - H[0,-1,1,-1,x] +  H[-1,x]*H[0,1,-1,x];

r[849] =  H[-1, 0,-1, 1,x_] -> - H[0,-1,1,-1,x] -2* H[0,-1,-1,1,x] + H[-1,x]*H[0,-1,1,x] ;


r[850] =  H[ 1,-1, 0,-1,x_] ->  2*H[0,-1,-1,1,x] + H[0,-1,1,-1,x] + H[-1,x]*( - H[-1,1,0,x] - H[-1,0,1,x] + H[1,0,-1,x] + H[0,1,-1,x] ) - 2*H[1,x]*H[0,-1,-1,x] + H[-1,1,x]*H[-1,0,x]; 

r[851] =  H[-1, 1, 0,-1,x_] ->  2*H[0,1,-1,-1,x] + H[0,-1,1,-1,x] + H[-1,x]*( H[-1,1,0,x] + H[-1,0,1,x] - H[0,1,-1,x] ) - H[-1,1,x]*H[-1,0,x];

r[852] =  H[-1,-1, 0, 1,x_] -> H[0,+1,-1,-1,x] + H[0,-1,1,-1,x] + H[0,-1,-1,1,x] - 1/2*H[-1,x]*( H[0,1,-1,x] - H[-1,0,1,x] + H[0,-1,1,x]);

r[853] =  H[ 1,-1,-1, 0,x_] -> - H[0,-1,-1,1,x] - H[-1,1,x]*H[-1,0,x] + 1/2* H[-1,x]*(H[-1,1,0,x] + H[-1,0,1,x] + H[1,-1,0,x] - H[1,0,-1,x] - H[0,-1,1,x] - H[0,1,-1,x]) + H[1,x]*H[0,-1,-1,x] + H[0,x]*H[-1,-1,1,x] ;

r[854] =  H[-1, 1,-1, 0,x_] ->  - H[0,-1,1,-1,x] +  H[-1,x]*H[0,-1,1,x] -2* H[0,x]*H[-1,-1,1,x] + H[-1,1,x]*H[-1,0,x] ;

r[855] =  H[-1,-1, 1, 0,x_] ->  - H[0,1,-1,-1,x] +  H[0,x]*H[-1,-1,1,x] + 1/2* H[-1,x]*(-H[-1,0,1,x] -  H[0,-1,1,x] +  H[0,1,-1,x]);




  (*---------------------------------------------------------------------*)
  (* weight 4,   class   (-1,0,0,1)             *)

  (* need here three auxiliary functions    *) 

    (*   R4(x_)= Hm1001(x_) =  Integrate[ PolyLog[3,y]/(1+y)                    ,{y,0,x}]   *)
    (*   S4(x_)=               Integrate[ Log[y]*PolyLog[2,y]/(1+y)             ,{y,0,x}]   *)
    (*   T4(x_)=              -Integrate[(PolyLog[1,2,1-y]-PolyLog[1,2,1])/(1+y),{y,0,x}]   *)

    r[798] =  T4[x_]            :> -Integrate[(PolyLog[1,2,1-y]-PolyLog[1,2,1])/(1+y),{y,0,x}];

r[799] =  S4[x_]            :>  Integrate[ Log[y]*PolyLog[2,y]/(1+y),{y,0,x}];

r[800] =  R4[x_]            :>  Integrate[ PolyLog[3,y]/(1+y),{y,0,x}];

r[864] =  H[ 0, 0,-1, 1,x_] ->  H[-1, 1, 0, 0,x] + H[-1, 0, 1, 0,x] + H[-1, 0, 0, 1,x] -1/2* H[0,x]*(H[-1, 1, 0,x]-H[0,-1,1,x]+H[-1, 0, 1,x] );

r[865] =  H[ 0,-1, 0, 1,x_] -> -H[-1, 0, 1, 0,x]-2*H[-1, 0, 0, 1,x]+H[0,x]*H[-1, 0, 1,x];

r[856] =  H[-1, 0, 0, 1,x_] -> R4[x];


r[858] =  H[ 0, 0, 1,-1,x_] -> 1/2*H[0,x]*(-H[0,-1,1,x]-H[-1, 0, 1,x]+ H[-1, 1, 0,x] ) +H[-1,x]*H[0,0,1,x]  -H[-1,1,0,0,x]  ;  

r[857] =  H[ 0,-1, 1, 0,x_] -> -2* H[-1, 1, 0, 0,x] - H[-1, 0, 1, 0,x] +  H[0,x]*H[-1, 1, 0,x]; 

r[859] =  H[-1, 0, 1, 0,x_] -> -2*R4[x] + S4[x];  


r[860] =  H[ 0, 1, 0,-1,x_] -> -H[-1, 0, 1, 0,x]-2*H[-1,x]*H[0,0,1,x]+H[0,x]*H[-1, 0, 1,x]+ H[0,1,x]*H[0,-1,x];

r[861] =  H[ 0, 1,-1, 0,x_] -> H[0,x]*(H[0,1,-1,x] + H[0,-1,1,x] - H[-1,1,0,x]) - H[0,1,x]*H[0,-1,x] + H[-1, 0, 1, 0,x] + 2*H[-1, 1, 0, 0,x] ; 

r[862] =  H[-1, 1, 0, 0,x_] -> T4[x];  


r[863] =  H[ 1, 0, 0,-1,x_] -> -H[-1, 0, 0, 1,x]-H[0,1,x]*H[0,-1,x]+1/2*H[0,x]*(H[0,1,-1,x]+H[0,-1,1,x]+H[1,0,-1,x]-H[1,-1,0,x]-H[-1,0,1,x]-H[-1,1,0,x]) + H[1,x]*H[-1, 0, 0,x] + H[-1,x]*H[0,0,1,x];

r[866] =  H[ 1, 0,-1, 0,x_] -> - H[0,x]*(H[0,1,-1,x] + H[0,-1,1,x] - H[1, -1, 0,x] - H[-1, 1, 0,x] ) + H[0,1,x]*H[0,-1,x] - 2* H[1,x]*H[-1, 0, 0,x] +2* H[-1, 0, 0, 1,x] + H[-1, 0, 1, 0,x]  ;  

r[867] =  H[ 1,-1, 0, 0,x_] -> -H[-1, 1, 0, 0,x] - H[-1, 0, 1, 0,x] -H[-1, 0, 0, 1,x] + H[1,x]*H[-1, 0, 0,x];



  (*---------------------------------------------------------------------*)
    (* weight 4,   classes   (-1,1,1,1)     (-1,-1,-1,1)  (-1,-1,1,1)          *)

  (* need here three auxiliary functions    *) 

    r[868] =  H[-1, 1, 1, 1,x_] -> -1/6*( 6* (PolyLog[4,(1-x)/2]-PolyLog[4,1/2]) 
			    -6*PolyLog[3,(1-x)/2]*Log[1-x] 
					  +3*PolyLog[2,(1-x)/2]*Log[1-x]^2 +Log[(1+x)/2]*(Log[1-x])^3 ) ;

(* r[869] =  H[ 1,-1,-1,-1,x_] -> H[-1,1,1,1,-x]; *)

  r[869] =  H[1,-1,-1,-1,x_] -> -1/6*( 6* (PolyLog[4,(1+x)/2] -PolyLog[4,1/2]) 
			    -6*PolyLog[3,(1+x)/2]*Log[1+x] 
   +3*PolyLog[2,(1+x)/2]*Log[1+x]^2 +Log[(1-x)/2]*Log[1+x]^3 ) ;

r[870] =  H[ 1, 1,-1,-1,x_] :>  Integrate[ H[1,-1,-1,y]/(1-y),{y,0,x}];


   HPLrulesW4 =  Table[r[i],{i,791,870}];
