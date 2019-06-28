(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["gauge34ap.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["~/Documents/ttbar/secdec/devout/input-gauge-bubble.m"];



InputInts={ masters34[[10]]};

Coefs= {cofs34[[10]]};

Main=gauge34apM;

Sub=int;


(* EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 *)
 DirSeries[Main,Sub];
 
(* DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];*)
      
Exit[]


