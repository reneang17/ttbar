(* ::Package:: *)

(* ::Input:: *)

maindir=DirectoryName[FindFile["gquark13.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["../devout2/input-quark-bubble.m"];



InputInts= masters13;

Coefs= cofs13;

Main=gquark13N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];

 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
 
 
  

Exit[];
