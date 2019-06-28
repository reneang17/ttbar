(* ::Package:: *)

(****************************************************************************
 *   Automating                                                             *
 *   Last update 8 05 17                                                    *
 ****************************************************************************)

 (******************************************************************************
  *                                                                            *
  * List of updates                                                            *
  *                                                                            *

  ******************************************************************************)


BeginPackage["GlobalPart`", {"Symbols`"}];


Print["GlobalPart"];


(******************************************************************************
 *                                                                            *
 * Public                                                                     *
 *                                                                            *
 ******************************************************************************)



 GlobalConst::usage = " Produces 2 files. Firstly, *_GMaster.dat: Graph independent  global constant. 
 Secondly, for each graph i, GlobalConst[Coefs,main,sub], for respective ep depedent cofficient Coefs, 
 it creates inti_G.dat in /main/subi which is only added just before evaluation in Cuba 
 by function  DirSelect[main,sub]" 

Begin["`Private`"]







(************************************************************************)

GlobalConst[inputCoef_,mainfolder_,subfolders_]:=Module[{ic,main,aux2file,
auxconst,auxlist,EpFactor},
main=Directory[];
SetDirectory[main];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

(*Get["~/Documents/ttbar/vp-terms/FourierTransform.m"];  *)  

Omega[D_] := (2 Pi^((D + 1)/2))/Gamma[(D + 1)/2];

PTAzi=(4^ep Pi Omega[-2 ep])/(Omega[1 - 2 ep] 2)//FullSimplify; (*Azimuthal average of top quark direction*)

EpFactor=2/Omega[D - 3]*(*Azimuthal average*)
        (4 Pi)^4 (Exp[EulerGamma]/(4 Pi))^(2 ep)*(*Coupling*)
        (2 Pi)^(D - 2)/(2 Pi)^(D/2 - 1) * (*Prefactors of Fourier transform*)
        (Omega[D - 4] Omega[D - 3])/(2 Pi)^(2 D - 2)(*Irrelevant angles of double cut momenta*)/. 
        D -> 4 - 2 ep // FullSimplify;


InvertFourier=(*qTpFT[Lp,2+2ep+2ap]/.mu->1//FullSimplify//InputForm*)(2^(-1 + ep)*
              (E^(-EulerGamma + Lp/2))^(2*(ap + 2*ep))*Gamma[-ap - 2*ep])/
              Gamma[1 + ap + ep];

TotalEpF=PTAzi*EpFactor*InvertFourier;


auxlist=(  Normal[Series[TotalEpF*(-ep) , {ap, 0, 0},{ep,0,0}]] )inputCoef;


Print[auxlist];
For[ic=1,ic<=Length[auxlist],ic++,
  auxconst=auxlist[[ic]];

  SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]<>"/"
  <>ToString[subfolders]<>ToString[ic]];



    Write[ToString[subfolders]<>ToString[ic]<>"_G.dat",auxconst];
    Close[ToString[subfolders]<>ToString[ic]<>"_G.dat"];
    
    Write[ToString[subfolders]<>ToString[ic]<>"_GMaster.dat",
    (TotalEpF )/
    (TotalEpF*(-ep)  // Normal[Series[#, {ap, 0, 0},{ep,0,0}]] &)//Simplify];
    Close[ToString[subfolders]<>ToString[ic]<>"_GMaster.dat"];

];
SetDirectory[main];
Print["Global constants should exist."]
]


End[]
EndPackage[]
