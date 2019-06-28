(* ::Package:: *)

(* ::Input:: *)
(**)


 
Print["Hello World!"];

maindir=DirectoryName[FindFile["Bubble31.m"]];
SetDirectory[maindir<>"/Packages"]
Get["AutomatingMapsAndEvaluation.m"];

(*LaunchKernels[];*)

SetDirectory["MCEvaluation"];
Install["Vegas-Mac"]
 Install["Suave-Mac"]
 Install["Divonne-Mac"]
 Install["Cuhre-Mac"]
SetDirectory[maindir];


Module[{G33},
        
       G33 = {2*(sp[k, p1]*sp[l, p1]*sp[p1, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^3*(sp[k, p3] + sp[l, p3])),
           (sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])^2),
           (2*sp[k, p1]*sp[l, p1]*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           ((sp[k, p1]^2 + sp[l, p1]^2)*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           sp[p3,p1]/(sp[p3,l+k] sp[p1,l+k] sp[k,l]),
           sp[p3,p3]/(sp[p3,l+k]^2 sp[k,l])};
       

       

Eva[G33,Bubble31,integral];
EvaWeight[G33,Bubble31,integral];

DirSec[Bubble31,integral];
DirExpandAndWeight[Bubble31,integral];




       
Coefs= {-1/(ep - 1), 1/(ep - 1), (-1 (ep - 2))/(ep - 1), 1, -1, 1/2};
GlobalConst[Coefs,Bubble31,integral];
DirSelect[Bubble31,integral];

 
DirCUBAS[Vegas,Bubble31,integral,BoundaryAG3,0,Pi/4,2];
  
ExtractResultCUBAS[Bubble31,integral,BoundaryAG3];
    
       
]
 
Exit[]


