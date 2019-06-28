(*******************************************************************************
 *
 * "Global" symbols used over different packages
 *
 ******************************************************************************)

BeginPackage["Symbols`"]



(*******************************************************************************
 *
 * Coords
 *
 ******************************************************************************)

 x::usage = ""
 lp::usage = ""
 kp::usage = ""
 lm::usage = ""
 km::usage = ""
 kT::usage = ""
 lT::usage = ""

 lpU::usage = ""
 kpU::usage = ""
 kTU::usage = ""
 lTU::usage = ""

 l::usage = ""
 k::usage = ""


 p3p::usage = ""
 p4p::usage = ""
 p3m::usage = ""
 p4m::usage = ""
 p3T::usage = ""
 p4T::usage = ""

 p3::usage = ""
 p4::usage = ""
 p1::usage = ""
 p2::usage = ""

 (*p3= 1/sqrt[1-beta^2](1,beta Cos[theta], beta Sin[theta] hat(nT))*)

 be::usage="parameter of p3"
 CT::usage="parameter of p3"
 ST::usage="parameter of p3"

 phi::usage = ""

 y::usage = ""
 yT::usage = ""
 xT::usage = ""
 xbar::usage = ""
 ybar::usage = ""
 ybarT::usage = ""
 xbarT::usage = ""

 reg31::usage = ""
 reg32::usage = ""

 reg21::usage = ""
 reg22::usage = ""

 (*******************************************************************************
  *
  * Regs
  *
  ******************************************************************************)

 ep::usage = ""
 ap::usage = ""


 (*******************************************************************************
  *
  * Commands that make compatible SecDec with Automating... Module
  *
  ******************************************************************************)

 WE0::usage = ""
 WE0D::usage = ""

 x1::usage = ""
 x2::usage = ""
 x3::usage = ""
 x4::usage = ""
 x5::usage = ""
 x6::usage = ""
 dx::usage = ""

 Er::usage = ""

 (*******************************************************************************
  *                                                                             *
  * Mapping names                                                             *
  *                                                                             *
  ******************************************************************************)

 plusS::usage = ""
 minusS::usage = ""
 withP::usage = ""
 withoutP::usage = ""

 pow::usage = ""
 const::usage = ""

 (*******************************************************************************
  *                                                                             *
  * Scalar product                                                             *
  *                                                                             *
  ******************************************************************************)



 sp::usage = ""
 SetAttributes[sp, {Orderless}];

 spU::usage = ""
 SetAttributes[spU, {Orderless}];


Int::usage = "At the end turns into a Cuba lib, e.g. Suave"


EndPackage[]
