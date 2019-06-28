(* ::Package:: *)

(* ::Input:: *)
(**)


 
Print["Hello World!"];

maindir=DirectoryName[FindFile["Bubble31.m"]];
SetDirectory[maindir<>"/Packages"]
Get["AutomatingMapsAndEvaluation.m"];

SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
SetDirectory[maindir];


(*LaunchKernels[];*)

SetDirectory[maindir];
Print[Directory[]];

Module[{G33,Coefs},
        
       G33 = {sp[p3,p1]/(sp[p3,l+k] sp[p1,l+k] sp[k,l]) };
       
       Coefs= {1};
       

Eva[G33,Bubble31,integral];

GlobalConst[Coefs,Bubble31,integral];

EvaWeight[G33,Bubble31,integral];

DirSec[Bubble31,integral];

DirExpandAndWeight[Bubble31,integral];

DirSelect[Bubble31,integral];

DirCUBA[Vegas,Bubble31,integral,Boundary,0,Pi/4,1];  

ExtractResultCUBA[Bubble31,integral,Boundary];

       
]
 
Exit[]


