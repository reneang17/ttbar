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



 GlobalConst::usage = " GlobalConst[Coefs,main,int], for each element i Coefs, in general function
of ep, creates  a files inti_G.dat in /main/inti, that contains this constant multipied 
by the global constant = (2^(5 - ep) e^(2 ep EulerGamma))/(Sqrt[\[Pi]] Gamma[1/2 - ep])=
(2 qT^(2ep)/Omega[d-3] [azi averange] * (4 Pi)^4 (e^Gamma/4Pi)^(2ep) [Coupling]
(qT^(-2-4ep)[scale qT]) *(2 Pi)^(d/2-1) [Fourier tranisform, \[DownQuestion]qT is missing?] * (Omega[d-4] Omega[d-3])/(2pi)^(2d-2) [azimuth of k and l]. For simplicity, we set qT=1.
This is combined re-introduced just before numerical integration."


Begin["`Private`"]





(******************************************************************************
 *                                                                             *
 * Reads coeffs, and multiply these by a common constant const. Finally, it    * 
 * creates a file that constains it  		    	                       *
 *                                                                             *
 ******************************************************************************)



(************************************************************************)

GlobalConst[inputCoef_,mainfolder_,subfolders_]:=Module[{ic,main,aux2file,
auxconst,auxlist,EpFactor},
main=Directory[];
SetDirectory[main];
SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]];

(*Get["~/Documents/ttbar/vp-terms/FourierTransform.m"];  *)  

EpAzimuth=(Gamma[1-ep])^2/Gamma[1-2*ep]/2;
EpFactor=(2^(5 - ep) E^(2 ep EulerGamma))/(Sqrt[\[Pi]] Gamma[1/2 - ep]);
FourierFactor=(*qTpFT[Lp,2+2ep+2ap]/.mu->1//FullSimplify//InputForm*)(2^(-1 + ep)*(E^(-EulerGamma + Lp/2))^(2*(ap + 2*ep))*Gamma[-ap - 2*ep])/
 Gamma[1 + ap + ep];
TotalEpF=(*EpAzimuth**)EpFactor(**FourierFactor*);


auxlist=TotalEpF(**(-ep)*) inputCoef // N[Normal[Series[#, {ap, 0, 0},{ep,0,4}]]] &;

Print[auxlist];
For[ic=1,ic<=Length[auxlist],ic++,
  auxconst=auxlist[[ic]];

  SetDirectory[ToString[main]<>"/"<>ToString[mainfolder]<>"/"
  <>ToString[subfolders]<>ToString[ic]];



    Write[ToString[subfolders]<>ToString[ic]<>"_G.dat",auxconst];
    Close[ToString[subfolders]<>ToString[ic]<>"_G.dat"];
    
 (*   Write[ToString[subfolders]<>ToString[ic]<>"_GMaster.dat",
    (TotalEpF )/
    (TotalEpF(**(-ep)*)  // Normal[Series[#, {ap, 0, 0},{ep,0,0}]] &)//Simplify];
    Close[ToString[subfolders]<>ToString[ic]<>"_GMaster.dat"];*)

];
SetDirectory[main];
Print["Global constants should exist."]
]


End[]
EndPackage[]
