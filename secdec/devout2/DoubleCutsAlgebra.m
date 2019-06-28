(* ::Package:: *)

maindir=DirectoryName[FindFile["DoubleCutsAlgebra.m"]];
 
SetDirectory[maindir<>"/Packages"]
Get["Linker.m"];


SetDirectory[maindir];

(*Uncommen this section and the same section in CubaBongo.m to run to
run Cuba in Mathematica*)
(*SetDirectory["/home/rene/Tools/Cuba-4.2"];
 Install["Vegas"]
 Install["Suave"]
 Install["Divonne"]
 Install["Cuhre"]
ResetDirectory[];*)




(*Prepare intput to be evaluated*)

DoubleCuts=Read["DoubleCuts.dat"];
Close["DoubleCuts.dat"];

Naminginput=DoubleCuts/.{e_. (Subscript[T, a_]\[CenterDot]Subscript[T, b_])**(Subscript[T, c_]\[CenterDot]Subscript[T, d_])+f_.:> StringJoin["col",ToString[a],ToString[b],ToString[c],ToString[d]],
                          -CA Subscript[T, a_]\[CenterDot]Subscript[T, b_]:>StringJoin["col",ToString[a],ToString[b]]};

FinalCofList=(Naminginput//.sp[__]:>1)//.{a_/;NumericQ[a]:>Sign[a]}/.{a_/;(StringQ[a]):>StringJoin[a,"Cof"]}/.{a_/;Head[a]===String:>ToExpression[a]};

FinalInputList=Naminginput//.{a_/;FreeQ[a,sp]===False&&(a/.{sp[__]:>1})<0:>-a}/.{a_/;Head[a]===String:>ToExpression[a]};


InputNames=FinalInputList[[All,1]];
CofNames=FinalCofList[[All,1]];

InputAssoc=Association@@(FinalInputList/.{{a_,b_}/;FreeQ[a,sp]&&Head[b]===List:>{a->b}});

CofAssoc=Association@@(FinalCofList/.{{a_,b_}/;FreeQ[a,sp]&&Head[b]===List:>{a->b}});



st=1;
fn=Length[InputNames];

Do[
EvaInfra[InputAssoc[InputNames[[ic]]],InputNames[[ic]],int]
,{ic,st,fn}];

Do[
EvaWeight[InputAssoc[InputNames[[ic]]],InputNames[[ic]],int]
,{ic,st,fn}];

Do[
GlobalConst[CofAssoc[CofNames[[ic]]],InputNames[[ic]],int]
,{ic,st,fn}];

Do[
DirSec[InputNames[[ic]],int]
,{ic,st,fn}];

Do[
DirExpandAndWeight[InputNames[[ic]],int]
,{ic,st,fn}];

Do[
DirSelect[InputNames[[ic]],int]
,{ic,st,fn}];



   

 
Exit[]


