(*******************************************************************************
 * 
 * Calculate total cross sections directly in Mathematica
 *
 * Usage :
 *
 *   $ math -run -noprompt < CalculateTotalCrossSections.m part precision
 *
 *   where 
 *
 *     'part'       - string = qg, qq, gg
 *     'precision'  - exponent of relative precision goal, hence 10^-{precision}
 *
 ******************************************************************************)


(*******************************************************************************
 * 
 * Initialization
 *
 ******************************************************************************)

ResetCuba[] := Block[{pwd = Directory[]},
  SetDirectory["/home/sapeta/heptools/Cuba-4.2/bin"];
  (*
  Install["Vegas"];
  Install["Divonne"];
  Install["Cuhre"];
  *)
  Install["Suave"];
  SetDirectory[pwd];
]

ResetCuba[];

Get["QCDFunctions.m"];
Get["PartonicCrossSectionsLimited.m"];
Get["Replacements.m"];
Get["HSiinm.m"]

(*******************************************************************************
 * 
 * Generic integrand function
 * 
 * Arguments
 *
 *   func    -   one of the Cnii2ab functions
 *   type    -   real or virt
 *
 ******************************************************************************)

Integrand[func_, type_] := Block[
  {
  fac = 1.0,
  (* Replacements *)
  ReplNumerics = {CF -> 4/3, TF -> 1/2, Nc -> 3, CA -> 3, mt -> 173.2, nf -> 5,
                 sqrts -> 8000, tau -> M*M/sqrts^2  }, 
  ReplIntegrand = {\[Theta] -> theta, Li2[arg_] -> PolyLog[2, arg], 
                   \[Beta]t -> beta, xs ->  (1 - beta)/(1 + beta), 
                   t1 -> -(M mt (1 - beta Cos[theta]))/Sqrt[1 - beta^2],
                   u1 -> -(M mt (1 + beta Cos[theta]))/Sqrt[1 - beta^2], 
                   beta -> Sqrt[1 - 4 mt^2/M^2], mu -> mt}
  },

  (* REAL part *)
  If[type == real,
    fac = (func[z]) //. ReplqT //.ReplHShs /. star[arg_] -> arg //. 
           delta[qT2] -> 0 //. ReplIntegrand /. ReplNumerics;
  ];

  (* VIRT part *)
  If[type == virt,
    fac = (func[z]) //. ReplIntegratedqT //.ReplHShs
           //. ReplIntegrand /. ReplNumerics;
  ];

  fac = fac*pdf[tau/(x z)]*pdf[x]*Sin[theta] //. ReplNumerics;
  
  (* Explicit forms of delta and plus distirbutions 
  
     For those cases where the corresponding terms exist. It turns out 
     that one saves a lot of time by skipping this step when possible. 
     Hence the If statements.
   *)

  If[(Coefficient[fac,DiracDelta[-1+z]] =!= 0),
    fac = (Expand[fac])//. F_ DiracDelta[-1 + z] :> ReplaceAll[F, z:>1]
  ];
  If[(Coefficient[fac,plus[1/(1-z)]] =!= 0),
    fac = (Expand[fac])//. F_ plus[1/(1-z)] :> 1/(1-z) (F-ReplaceAll[F, z:>1])
  ];


  Return[fac];
]


(*******************************************************************************
 * 
 * Parameters
 *
 ******************************************************************************)

dq = Nc;
dg = Nc*Nc - 1;
ReplNumbers = {Nc -> 3, mt -> 173.2, sqrts -> 8000};
Mmin = 2*mt /. ReplNumbers;
Mmax = 8000;
qTmin = 1.0;
part = Take[$CommandLine,{4,4}][[1]];
precision = ToExpression[Take[$CommandLine,{5,5}][[1]]];
(*
part = "real2_qg";
precision = 1;
*)

(*******************************************************************************
 * 
 * Integrands
 *
 ******************************************************************************)

Integrand1RealQG[zL_, xL_, thetaL_, ML_, qT2L_] := Block[{fac = 1.0},
   fac = 2*(Integrand[C1qq2qg,real]/dq+Integrand[C1gg2qg,real]/dg)/.ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qT2L}];
];

Integrand1RealQQ[zL_, xL_, thetaL_, ML_, qT2L_] := Block[{fac = 1.0},
   fac = 2*Integrand[C1qq2qq, real]/dq /. ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qT2L}];
];

Integrand1RealGG[zL_, xL_, thetaL_, ML_, qT2L_] := Block[{fac = 1.0},
   fac = Integrand[C1gg2gg, real]/dg /. ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qT2L}];
];

Integrand1VirtQG[zL_, xL_, thetaL_, ML_] := Block[{fac = 1.0},
   fac = 2*(Integrand[C1qq2qg,virt]/dq + Integrand[C1gg2qg,virt]/dg)/.ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qTmax^2}];
];

Integrand1VirtQQ[zL_, xL_, thetaL_, ML_] := Block[{fac = 1.0},
   fac = 2*Integrand[C1qq2qq, virt]/dq /. ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qTmax^2}];
];

Integrand1VirtGG[zL_, xL_, thetaL_, ML_] := Block[{fac = 1.0},
   fac = Integrand[C1gg2gg, virt]/dg /. ReplNumbers;
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qTmax^2}];
];

Integrand2RealQG[zL_, xL_, thetaL_, ML_, qT2L_] := Block[{fac = 1.0},
   fac = 2*(Integrand[C2gg2qg,real]/dg)/.ReplNumbers;
   (*
   fac = 2*(Integrand[C2qq2qg,real]/dq+Integrand[C2gg2qg,real]/dg)/.ReplNumbers;
   *)
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qT2L}];
];

Integrand2VirtQG[zL_, xL_, thetaL_, ML_] := Block[{fac = 1.0},
   fac = 2*(Integrand[C2qq2qg,virt]/dq+Integrand[C2gg2qg,virt]/dg)/.ReplNumbers;
   (*
   fac = 2*(Integrand[C2qq2qg,virt]/dq)/.ReplNumbers;
   *)
   Return[fac //. {z -> zL, x -> xL, theta -> thetaL, M -> ML, qT2 -> qTmax^2}];
];

(*******************************************************************************
 * 
 * Numerical integration
 *
 ******************************************************************************)

IntOptions = Sequence[Verbose -> 0, MaxPoints -> 10000000, 
                      PrecisionGoal -> precision];

pdf[x_] := 1/(x*x)

(*******************************************************************************
 * 
 * Print information and integrate
 *
 ******************************************************************************)
If [part == "real1_qg", FUNC = Integrand1RealQG];
If [part == "real1_qq", FUNC = Integrand1RealQQ];
If [part == "real1_gg", FUNC = Integrand1RealGG];
If [part == "virt1_qg", FUNC = Integrand1VirtQG];
If [part == "virt1_qq", FUNC = Integrand1VirtQQ];
If [part == "virt1_gg", FUNC = Integrand1VirtGG];
If [part == "real2_qg", FUNC = Integrand2RealQG];
If [part == "virt2_qg", FUNC = Integrand2VirtQG];

If [StringTake[part,{1,4}] == "real", qTmax = 100.0];
If [StringTake[part,{1,4}] == "virt", qTmax = 1.0];

Print["------------------------------------------------------------------------"]
Print[IntOptions];
Print["Mmin = ", Mmin];
Print["Mmax = ", Mmax];
Print["qTmin = ", qTmin];
Print["qTmax = ", qTmax];
Print["sqrts = ", sqrts/.ReplNumbers];
Print[part];


If [StringTake[part,{1,4}] == "real",
    res=Int[FUNC[z, x, theta, M, qT2], {z, 0, 1}, {theta, 0, Pi}, 
            {qT2, qTmin^2, qTmax^2}, {M, Mmin, Mmax}, {x, 0, 1}, IntOptions] /.
            Int -> Suave // AbsoluteTiming
];

If [StringTake[part,{1,4}] == "virt",
    res=Int[FUNC[z, x, theta, M], {z, 0, 1}, {theta, 0, Pi}, 
            {M, Mmin, Mmax}, {x, 0, 1}, IntOptions] /.
            Int -> Suave // AbsoluteTiming
];

Print[res];
