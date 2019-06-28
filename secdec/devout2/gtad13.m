(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["gtad13.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];



InputInts={ -Read["../double-emission-tensor/DoubleCuts.dat"][[11]][[2]][[17]]};
Close["../double-emission-tensor/DoubleCuts.dat"];

Coefs= {-1};

Main=gtad13N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
      

Exit[];
