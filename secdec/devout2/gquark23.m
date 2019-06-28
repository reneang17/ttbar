(* ::Package:: *)

(* ::Input:: *)

maindir=DirectoryName[FindFile["gquark23.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["../devout2/input-quark-bubble.m"];



InputInts= masters23;

Coefs= cofs23;

Main=gquark23N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];

 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
 
 
  

Exit[];
