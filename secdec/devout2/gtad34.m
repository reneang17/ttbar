(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["ggau34.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];



InputInts={ -Read["../double-emission-tensor/DoubleCuts.dat"][[14]][[2]][[13]]};
Close["../double-emission-tensor/DoubleCuts.dat"];

Coefs= {-1};

Main=gtad34N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
      

Exit[];
