(* ::Package:: *)

(* ::Input:: *)
(**)

maindir=DirectoryName[FindFile["Bubble13.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

(*BeginPackage["Linker`",{"Symbols`","InfraredPart`","WeightPart`","GlobalPart`",
                         "SecAndPlus`","ExpandAndWeight`"}];*)

SetDirectory[maindir];





InputInts= {(2*sp[k, p1]*sp[l, p1]*sp[p1, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^3*sp[k + l, p3]), 
        (sp[k, p1]*sp[l, p1]*sp[p3, p3])/(sp[k, l]*(sp[k, p1] + sp[l, p1])^2*sp[k + l, p3]^2), 
        (2*sp[k, p1]*sp[l, p1]*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*sp[k + l, p3]^2), 
        ((sp[k, p1]^2 + sp[l, p1]^2)*sp[p1, p3]^2)/((sp[k, p1] + sp[l, p1])^4*sp[k + l, p3]^2), 
        sp[p1, p3]/(sp[k, l]*sp[k + l, p1]*sp[k + l, p3]), 
        sp[p3, p3]/(sp[k, l]*sp[k + l, p3]^2)};

Coefs= {-1/(ep - 1), 1/(ep - 1), (-1 (ep - 2))/(ep - 1), 1, -1, 1/2};

Main=Bubble13;

Sub=integral;

(*

 EvaInfra[InputInts,Main,Sub];


 EvaWeight[InputInts,Main,Sub];


 GlobalConst[Coefs,Main,Sub];
  
 DirSec[Main,Sub];
 
*)

 DirExpandAndWeight[Main,Sub];

            
      
(*

*)



 (*
       
DirSelect[Bubble13,Sub];

DirCUBAS[Vegas,Bubble13,Sub,BoundaryAG3,0,Pi/4,4];
  
ExtractResultCUBAS[Bubble13,Sub,BoundaryAG3];
    *)
       

 
Exit[]


