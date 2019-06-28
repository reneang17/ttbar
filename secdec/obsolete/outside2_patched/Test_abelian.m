(* ::Package:: *)

(* ::Input:: *)
(**)

maindir=DirectoryName[FindFile["Test.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

(*
SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
SetDirectory["MCEvaluation"];
Install["Vegas-Mac"]
 Install["Suave-Mac"]
 Install["Divonne-Mac"]
 Install["Cuhre-Mac"]
ResetDirectory[];*)



SetDirectory[maindir];


 InputInts={(sp[p3, p3]*sp[p1, p3])/((sp[p3,k])^2 sp[l, p3] sp[l, p1]),
            (sp[p3, p3]*sp[p2, p4])/((sp[p3,k])^2 sp[l, p4] sp[l, p2])};
           

Coefs= {1,1};


Main=abelian;

Sub=integral;

 EvaInfra[InputInts,Main,Sub];


 EvaWeight[InputInts,Main,Sub];


 GlobalConst[Coefs,Main,Sub];
  
 DirSec[Main,Sub];
 

 DirExpandAndWeight[Main,Sub];
            
       
 DirSelect[Main,Sub];
 

 
Exit[]


