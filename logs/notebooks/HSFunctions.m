(*******************************************************************************
 * 
 * Notation and conventions
 *
 *   as = alpas/(4 pi)
 *
 ******************************************************************************)


(*******************************************************************************
 *
 *  HS^{(n,m)} functions
 *
 ******************************************************************************)

TrHSqq[LT_] := HSqq00 + 
               as (HSqq10 + HSqq11 LT) +
               as^2 (HSqq20 + HSqq21 LT + HSqq22 LT^2)

TrHSgg[LT_] := HSgg00 + 
               as (HSgg10 + HSgg11 LT) +
               as^2 (HSgg20 + HSgg21 LT + HSgg22 LT^2)

