(*******************************************************************************
 * 
 * Integrate HSiinm functions. 
 * 
 * To be compared with topqT++limited/tests/hsintegration
 *
 * Example
 *
 *   $ math -run -noprompt < CheckHSiinmIntegration.m hsqq10 3
 *
 ******************************************************************************)


(*******************************************************************************
 * 
 * Initialization
 *
 ******************************************************************************)

ResetCuba[] := Block[{pwd = Directory[]},
  SetDirectory["/home/sapeta/heptools/Cuba-4.2/bin"];
  Install["Vegas"];
  Install["Suave"];
  SetDirectory[pwd];
]

ResetCuba[];

Get["QCDFunctions.m"];
Get["Replacements.m"];
Get["HSiinm.m"]

(*******************************************************************************
 * 
 * Generic integrand function
 *
 ******************************************************************************)

IntegrandBase[func_] := Block[
  {
  fac = 1.0,
  (* Replacements *)
  ReplNumerics = {CF -> 4/3, TF -> 1/2, Nc -> 3, CA -> 3, mt -> 173.2, nf -> 5,
                 sqrts -> 8000, tau -> M*M/sqrts^2}, 
  ReplIntegrand = {\[Theta] -> theta, Li2[arg_] -> PolyLog[2, arg], 
                   \[Beta]t -> beta, xs ->  (1 - beta)/(1 + beta), 
                   t1 -> -(M mt (1 - beta Cos[theta]))/Sqrt[1 - beta^2],
                   u1 -> -(M mt (1 + beta Cos[theta]))/Sqrt[1 - beta^2], 
                   beta -> Sqrt[1 - 4 mt^2/M^2], mu -> mt}
  },

  fac = (func) //. ReplIntegrand /. ReplNumerics;
  fac = fac*Sin[theta] //. ReplNumerics;

  Return[fac];
]


(*******************************************************************************
 * 
 * Parameters
 *
 ******************************************************************************)

ReplNumbers = {Nc -> 3, mt -> 173.2, sqrts -> 8000};
Mmin = 2*mt /. ReplNumbers;
Mmax = 8000;
part = Take[$CommandLine,{4,4}][[1]];
precision = ToExpression[Take[$CommandLine,{5,5}][[1]]];

(*******************************************************************************
 * 
 * Integrands
 *
 ******************************************************************************)

Integrand[thetaL_, ML_] := Block[{fac},
   fac = IntegrandBase[ToExpression[part]] /. ReplNumbers;
   Return[fac //. {theta -> thetaL, M -> ML}];
];


(*******************************************************************************
 * 
 * Numerical integration
 *
 ******************************************************************************)

IntOptions = Sequence[Verbose -> 0, MaxPoints -> 5000000, 
                      PrecisionGoal -> precision];


(*******************************************************************************
 * 
 * Print information and integrate
 *
 ******************************************************************************)
Print["------------------------------------------------------------------------"]
Print[IntOptions];
Print["Mmin = ", Mmin];
Print["Mmax = ", Mmax];
Print["sqrts = ", sqrts/.ReplNumbers];
Print[part];

res = Suave[Re[Integrand[theta, M]], {theta, 0, Pi}, {M, Mmin, Mmax},
IntOptions]//AbsoluteTiming;

Print[res];
