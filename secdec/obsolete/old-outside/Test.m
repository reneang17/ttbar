(* ::Package:: *)

(* ::Input:: *)
(**)

maindir=DirectoryName[FindFile["Test.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];


SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
ResetDirectory[];



SetDirectory[maindir];
(*

InputInts= {sp[p1, p3]/(sp[k, l]*sp[k + l, p1]*sp[k + l, p3]), 
        sp[p3, p3]/(sp[k, l]*sp[k + l, p3]^2)};

Coefs= {-1, 1/2};
*)

 InputInts={2*(sp[k, p1]*sp[l, p1]*sp[p1, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^3*(sp[k, p3] + sp[l, p3])),
           (sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])^2),
           (2*sp[k, p1]*sp[l, p1]*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           ((sp[k, p1]^2 + sp[l, p1]^2)*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           sp[p3,p1]/(sp[p3,l+k] sp[p1,l+k] sp[k,l]),
           sp[p3,p3]/(sp[p3,l+k]^2 sp[k,l])};

Coefs= {-1/(ep - 1), 1/(ep - 1), (-1 (ep - 2))/(ep - 1), 1, -1, 1/2};


Main=FerBubble13;

Sub=integral;
(*

 EvaInfra[InputInts,Main,Sub];


 EvaWeight[InputInts,Main,Sub];


 GlobalConst[Coefs,Main,Sub];
  
 DirSec[Main,Sub];
 

 DirExpandAndWeight[Main,Sub];
            
*)
       
 DirSelect[Main,Sub];

(*
 DirCUBAS[Vegas,Main,Sub,out1,0.99,Pi/4,3];
  
 ExtractResultCUBAS[Main,Sub,BoundaryAG];

*)

       

 
Exit[]


