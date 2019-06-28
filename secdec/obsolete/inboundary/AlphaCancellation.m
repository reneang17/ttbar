(* ::Package:: *)

(* ::Input:: *)
(**)



Print["Hello World!"];

maindir=DirectoryName[FindFile["AlphaCancellation.m"]];
SetDirectory[maindir<>"/Packages"]
Get["AutomatingMapsAndEvaluation.m"];

(*LaunchKernels[];*)

SetDirectory["MCEvaluation"];
Install["Vegas-Mac"]
 Install["Suave-Mac"]
 Install["Divonne-Mac"]
 Install["Cuhre-Mac"]
SetDirectory[maindir];


 Abelian =  {4/(kp (km + kp) lp (lm + lp)), 4/(km (km + kp) lm (lm + lp)), 8/(
 lp (kp + lp) (lm + lp) (km + kp + lm + lp)), 8/(
 lm (km + lm) (lm + lp) (km + kp + lm + lp)), 16/((km + kp) lp (lm +
    lp) (km + kp + lm + lp)), 16/((km + kp) lm (lm + lp) (km + kp +
    lm + lp)), 8/(
 kp (lm + lp) (kp lm + km lp - 2 kT lT Cos[phi])), 8/(
 km (lm + lp) (kp lm + km lp - 2 kT lT Cos[phi])), 8/((kp + lp) (lm +
    lp) (kp lm + km lp - 2 kT lT Cos[phi])), 8/((km + lm) (lm +
    lp) (kp lm + km lp - 2 kT lT Cos[phi])), 8/(
 lp (km + kp + lm + lp) (kp lm + km lp - 2 kT lT Cos[phi])), 8/(
 lm (km + kp + lm + lp) (kp lm + km lp - 2 kT lT Cos[phi])), (16 lp)/(
 kp (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi])), (16 lm)/(
 km (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi])), (
 8 lp)/((kp + lp) (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi])), (
 8 lm)/((km + lm) (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi])), (
 8 kp)/((kp + lp) (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi])), (
 8 km)/((km + lm) (lm + lp) (km + kp + lm + lp) (kp lm + km lp -
    2 kT lT Cos[phi]))}


Eva[Abelian,AlphaCancellation,integral]
DirSec[AlphaCancellation,integral]
DirCUBA[AlphaCancellation,integral,2]
 
 
 Coefs={-1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, 1, 1, -1, -1};
 
 GlobalConst[Coefs,AlphaCancellation,integral];
 
 DirSelect[AlphaCancellation,integral];
 
 

 
 
 
 
 

Exit[]
