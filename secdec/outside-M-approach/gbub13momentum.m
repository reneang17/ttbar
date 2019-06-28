(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["gbub13momentum.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["~/Documents/ttbar/secdec/devout/input-gauge-bubble.m"];



InputInts= masters13;

Coefs= cofs13;

Main=gbub13mom;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
      
Exit[]


