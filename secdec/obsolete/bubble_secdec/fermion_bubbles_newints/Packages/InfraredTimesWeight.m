(* ::Package:: *)

(******************************************************************************
 *   Separates the infrared and weight part. The on-shell delta functions     *
 *   are not yet evaluated                                                    *
 *                                                                            *
 *****************************************************************************)

BeginPackage["InfraredTimesWeight`", {"Symbols`"}];

Print["InfraredTimesWeight"];
Print["by R. Angeles, C. Czakon, S. Sapeta"];


 (******************************************************************************
  *      List of updates                                                       *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *   -                                                                        *
  *****************************************************************************)



(******************************************************************************
 *                                                                            *
 * Public.                                                                    *
 *                                                                            *
 ******************************************************************************)

InfraTimesWeight::usage = ""
InfraredPart::usage = ""
WeightPart::usage = ""

Begin["`Private`"]


(****************************************************************************
 *                                                                          *
 * common                                                                   *
 *                                                                          *
 ***************************************************************************)







 (*Factorises sp (scalar products) involving massive particles.The spU \
 part has arguments whose vector are understood to be*)

 convertcoords=
           {p1[m]->p1m,p1[p]->p1p,p1[T]->p1T,
           p2[m]->p2m,p2[p]->p2p,p2[T]->p1T,
           p3[m]->p3m,p3[p]->p3p,p3[T]->p3T,
           p4[m]->p4m,p4[p]->p4p,p4[T]->p4T,
           l[m]:>lm,l[p]:>lp,l[T]:>lT,
           k[m]:>km,k[p]:>kp,k[T]:>kT};

 ToLC[MomA_, M_] := (MomA[M]/.convertcoords)

 ScaleMive[
   MomA_] := {sp[MomA, MomB_] :>
    spU[MomA, MomB] (ToLC[MomA, p] + ToLC[MomA, m])/
      2 (ToLC[MomB, p] + ToLC[MomB, m])/2}
 SetMive = Flatten[{ScaleMive[p3], ScaleMive[p4]}];
 SetBoundary = {spU[MomA_, MomB_] :> 1};


 (*To light coordinates sp and spU*)

 MsiveToLightCords = {spU[MomA_,
      MomB_] :> (ToLC[MomA, m] ToLC[MomB, p]/2 +
        ToLC[MomA, p] ToLC[MomB, m]/2 -
        sp[ToLC[MomA, T],
         ToLC[MomB, T]])/((ToLC[MomA, p] + ToLC[MomA, m])/
         2 (ToLC[MomB, p] + ToLC[MomB, m])/2)};
 MlessToLightCords = {sp[MomA_, MomB_] :>
     ToLC[MomA, m] ToLC[MomB, p]/2 + ToLC[MomA, p] ToLC[MomB, m]/2 -
      sp[ToLC[MomA, T], ToLC[MomB, T]]};



 (*p1 and p2 back to back and set angle between k and l*)

 SetMless = {p1p -> 0, p2m -> 0, p1T -> 0, p2T -> 0};
 Setszero = {sp[0, Mom_] :> 0};
 SetktltAngle = {sp[kT, lT] :> kT lT Cos[phi]};


 FullIntegral[int_] := int /.{sp[a_,b_+c_]:>sp[a,b]+sp[a,c]} /. SetMive // Simplify
 OnBoundaryPart[int_] := int/.{sp[a_,b_+c_]:>sp[a,b]+sp[a,c]} /. SetMive /. SetBoundary // Simplify
 OutBoundaryPart[int_] :=
  FullIntegral[int]/OnBoundaryPart[int] // Simplify



 InfraredPart[int_] := OnBoundaryPart[int] /.
          MlessToLightCords /. MsiveToLightCords /. SetMless /.
       Setszero /. SetktltAngle//Simplify

 WeightPart[int_] := OutBoundaryPart[int] /. {(kp + km) spU[k, a_] +
   (lp + lm) spU[l, a_] :>
     spU[k + l, a] (km + kp + lp + lm)} /. {spU[p3, p3] -> 1 - be^2,
    spU[p4, p4] -> 1 - be^2} /. {spU[a_, p3] -> 1 - spU[a, p3],
  spU[a_, p4] -> 1 + spU[a, p3]}/.{spU[p3,p1]-> be CT,spU[p4,p1]-> be CT,
                                   spU[p3,p2]->- be CT,spU[p4,p2]->- be CT};


WeightPart[int_] := (((OutBoundaryPart[int]/.{(kp + km) spU[k, a_] +
  (lp + lm) spU[l, a_] :> spU[k + l, a] (km + kp + lp + lm)}
  /. {spU[p3, p3] -> 1 - be^2, spU[p4, p4] -> 1 - be^2,
      spU[p3, p4] -> 1 + be^2})/. {spU[a_, p3] -> 1 - spU[a, p3],
      spU[a_, p4] -> 1 + spU[a, p3]})/.{spU[p3,p1]-> be CT,spU[p3,p2]->- be CT});


End[]


EndPackage[]
