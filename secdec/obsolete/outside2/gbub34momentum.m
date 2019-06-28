(* ::Package:: *)

(* ::Input:: *)
(**)


maindir=DirectoryName[FindFile["fbub13momentum.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];

(*BeginPackage["Linker`",{"Symbols`","InfraredPart`","WeightPart`","GlobalPart`",
                         "SecAndPlus`","ExpandAndWeight`"}];*)

SetDirectory[maindir];
Get["/Users/rene/Documents/ttbar/secdec/outside2/input-gluon-bubble-with-ghost-34.m"];
(*
SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
ResetDirectory[];*)




InputInts= masters;

Coefs= cofs;

Main=gbub34mom;

Sub=int;


 EvaInfra[InputInts,Main,Sub];

 EvaWeight[InputInts,Main,Sub];

 GlobalConst[Coefs,Main,Sub];

 DirSec[Main,Sub];
 
 DirExpandAndWeight[Main,Sub];
 
 DirSelect[Main,Sub];
(*DirCUBAS[Vegas,Main,Sub,out06,0.6,Pi/4,3];

ExtractResultCUBAS[Main,Sub,out06];*)
(*  
  *)     

 
Exit[]


