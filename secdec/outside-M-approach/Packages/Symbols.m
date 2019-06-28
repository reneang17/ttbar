(* ::Package:: *)

(*******************************************************************************
 *
 * "Global" symbols used over different packages
 *
 ******************************************************************************)

BeginPackage["Symbols`"]

Print["Symbols"];

(*******************************************************************************
 *									       *
 * Input integral. Any input integral should be expressed in terms of scalar   *
 * products (sp[,]) of the following vectors				       *
 *									       *
 ******************************************************************************)

 sp::usage = ""
 SetAttributes[sp, {Orderless}];

 l::usage = ""
 k::usage = ""

 p3::usage = ""
 p4::usage = ""
 p1::usage = ""
 p2::usage = ""


(*******************************************************************************
 *									       *
 * Respective light cone coordinates					       *
 *									       *
 ******************************************************************************)

 lp::usage = ""
 kp::usage = ""
 lm::usage = ""
 km::usage = ""
 kT::usage = ""
 lT::usage = ""

 p3p::usage = ""
 p4p::usage = ""
 p3m::usage = ""
 p4m::usage = ""
 p3T::usage = ""
 p4T::usage = ""

 (*Normalised by the energy, e.g. lpU=lp/l_0*)

 lpU::usage = ""
 kpU::usage = ""
 kTU::usage = ""
 lTU::usage = ""

 phi::usage = "hat{kt} . hat{lt} = cos(phi) "
 
 Lp::usage = "From Fourier transform"

(********************************************************************************
*										*
*  In the tt rest frame, p3 can be parametrized as				*
*										*
*   p3= 1/sqrt[1-beta^2](1,beta Cos[theta], beta Sin[theta] hat(nT))		*
*										*
********************************************************************************)


 be::usage="beta"
 CT::usage="Cos[theta]"
 ST::usage="Sin[theta]"
 ST5::usage=""

(********************************************************************************
*										*
* Varibles used during Mappings to hypercube. See soft-function.tex     	*
*										*
********************************************************************************)


 x::usage = "kp to x/(1-x).
             Also used to denote variables x[i] on the hypercube"
 y::usage = ""
 yT::usage = ""
 xT::usage = ""
 xbar::usage = ""
 ybar::usage = ""
 ybarT::usage = ""
 xbarT::usage = ""


 (*******************************************************************************
  *										*
  *  Auxiliary variables used in WeightSubs module. ToDo: comment and test      *
  *										*
  ******************************************************************************)

 reg31::usage = ""
 reg32::usage = ""

 reg21::usage = ""
 reg22::usage = ""

 (*******************************************************************************
  *										*
  * Regulartors									*
  *										*
  ******************************************************************************)

 ep::usage = ""
 ap::usage = ""


 (*******************************************************************************
  *
  * Commands that make compatible SecDec with Automating... Module
  *
  ******************************************************************************)

 WE0::usage = "Undefined symbolic function to represent weight part of input."
 dx::usage = "An argument of WEO, it is used to deal with cases in which the weight blows out
              upon explicit evaluation. In such cases, we Taylor  expand dx around 0, 
	      otherwiese is set to zero."

 
(* WE0D::usage = "" *)

 (*******************************************************************************
  *										*
  * Integrations variables in Cuba. Obtained by changin x[i] to xi		*
  *										*
  ******************************************************************************)


 x1::usage = ""
 x2::usage = ""
 x3::usage = ""
 x4::usage = ""
 x5::usage = ""
 x6::usage = ""


 (*******************************************************************************
  *                                                                             *
  * Vars to transfer information about how to integrate delta^2 and		* 
  * which mappings are necessary                                                 *
  *                                                                             *
  ******************************************************************************)

 plusS::usage = ""
 minusS::usage = ""
 withP::usage = ""
 withoutP::usage = ""


 (*******************************************************************************
  *                                                                             *
  * Objects to prepare mapped integrand for SecDec				*
  *                                                                             *
  ******************************************************************************)

 pow::usage = "Undefined function"
 const::usage = "Undefined function"

 (*******************************************************************************
  *                                                                             *
  * Unitary scalar product used to abbreviate Weight part                       *
  *                                                                             *
  ******************************************************************************)

 spU::usage = ""
 SetAttributes[spU, {Orderless}];


 (*******************************************************************************
  *                                                                             *
  * Other functions 
  *                                                                             *
  ******************************************************************************)

Int::usage = "At the end turns into a Cuba lib, e.g. Suave"

Er::usage = "Absolute error that comes out from Int -> Vegas"

EndPackage[]
