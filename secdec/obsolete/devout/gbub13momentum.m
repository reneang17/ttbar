(* ::Package:: *)

maindir=DirectoryName[FindFile["gbub13momentum.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];


SetDirectory[maindir];
(*
SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
ResetDirectory[];*)

(*This files produces G13 - G33/2, including the ghost part *)



InputInts= {2*(sp[k, p1]*sp[l, p1]*sp[p1, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^3*(sp[k, p3] + sp[l, p3])),
           (sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*(sp[k, p3] + sp[l, p3])^2),
           (2*sp[k, p1]*sp[l, p1]*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           ((sp[k, p1]^2 + sp[l, p1]^2)*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*(sp[k, p3] + sp[l, p3])^2),
           sp[p3,p1]/(sp[p3,l+k] sp[p1,l+k] sp[k,l]),
           sp[p3,p3]/(sp[p3,l+k]^2 sp[k,l])};

Coefs= {-1/(ep - 1), 1/(ep - 1), (-1 (ep - 2))/(ep - 1), 1, -1, 1/2} (3-2(4-2ep))/4/2+
       {0, 0, 0, 0, -2, 1} (2(4-2ep)-11)/8/2-
       {-1/(ep - 1), 1/(ep - 1), (-1 (ep - 2))/(ep - 1), 1, -1, 1/2}(-1/4/2)-
       {0, 0, 0, 0, -2, 1}(1/8/2)//Simplify;

Main=gbub13mom;

Sub=int;


(* EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];
*)
 GlobalConst[Coefs,Main,Sub];
(*
 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];*)
 
 DirSelect[Main,Sub];
 
 
(*DirCUBAS[Vegas,Main,Sub,out06,0.6,Pi/4,3];

ExtractResultCUBAS[Main,Sub,out06];*)
(*  
  *)     

 
Exit[]


