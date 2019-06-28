(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["gquark34.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["../devout2/input-gauge-bubble.m"];



InputInts= masters34;

Coefs= cofs34;

Main=gquark34N;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
      

Exit[];
