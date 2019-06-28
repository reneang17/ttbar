(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["gbub34momentum.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

SetDirectory[maindir];
Get["~/Documents/ttbar/secdec/devout/input-gauge-bubble.m"];



InputInts= masters34;

Coefs= cofs34;

Main=gbub34mom;

Sub=int;


(* EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];*)

 GlobalConst[Coefs,Main,Sub];
(*
 DirSec[Main,Sub];*)
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
      
Exit[]


