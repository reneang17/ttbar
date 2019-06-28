(* ::Package:: *)

(* ::Input:: *)

maindir=DirectoryName[FindFile["ggau23.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["../devout2/input-gauge-bubble.m"];



InputInts= masters23;

Coefs= cofs23;

Main=ggau23N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];

 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
 
 
Exit[];
