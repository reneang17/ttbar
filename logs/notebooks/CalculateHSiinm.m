
(*******************************************************************************
 * 
 * Determine HSiinm functions defined as coefficients in as expansion 
 * of Tr[HSii] in HSFunctions.m
 *
 * The HS functions must be real by construction. We do not set cI to zero
 * anywhere but explicitly see that all imaginary terms it cancels. This is
 * additional cross check of our result. 
 *
 * IMPORTANT: The hard function used here comes from Li et al. and is wrong.
 * This file obsolete now in the sense that the topqT++ works direclty with soft
 * and hard functions and multiplies matrices of numbers.
 *
 ******************************************************************************)
Get["CommonFunctions.m"];
mypath = Directory[] <> "/program-prd88"; 
Get[ mypath <> "/setting_sigma.m"];
Get["SoftFunction.m"];
Get["Replacements.m"];


(*******************************************************************************
 * 
 *  LO
 *
 ******************************************************************************)
HSqq0 = Tr[softqq[0].Hqq[0]];
HSgg0 = Tr[softgg[0].Hgg[0]];

hsqq00 = Simplify[HSqq0 //. ReplNotation];
hsgg00 = Simplify[HSgg0 //. ReplNotation];

(*******************************************************************************
 * 
 *  NLO
 *
 ******************************************************************************)
HSqq1 = Tr[softqq[1].Hqq[0] + softqq[0].Hqq[1]];
HSgg1 = Tr[softgg[1].Hgg[0] + softgg[0].Hgg[1]];

hsqq11 = Coefficient[HSqq1, Lp, 1] //. ReplNotation // Simplify;
hsgg11 = Coefficient[HSgg1, Lp, 1] //. ReplNotation // Simplify;

hsqq10 = Coefficient[HSqq1, Lp, 0] //. ReplNotation;
hsgg10 = Coefficient[HSgg1, Lp, 0] //. ReplNotation;

(*******************************************************************************
 * 
 *  NNLO qq
 *
 ******************************************************************************)
 
softqq[2] = softqq2 //. ReplNumbers //. ReplNotation //.
                        ReplLogsu1t1 // Simplify;

HSqq2 = Tr[softqq[2].Hqq[0] + softqq[1].Hqq[1] + softqq[0].Hqq[2]];

hsqq22 = Coefficient[HSqq2, Lp, 2] //. ReplNotation;
hsqq21 = Coefficient[HSqq2, Lp, 1] //. ReplNotation;

(*******************************************************************************
 * 
 *  NNLO gg
 *
 ******************************************************************************)

softgg[2] = softgg2 //. ReplNumbers //. ReplNotation //. 
                        ReplLogsu1t1 // Simplify;

HSgg2 = Tr[softgg[2].Hgg[0] + softgg[1].Hgg[1] + softgg[0].Hgg[2]];
(* Collect provides an efficient way of performing explicit cancellation of all
   imaginary contributions *)
HSgg2 = Collect[HSgg2,cI];

hsgg22 = Coefficient[HSgg2, Lp, 2] //. ReplNotation;
hsgg21 = Coefficient[HSgg2, Lp, 1] //. ReplNotation;

(*******************************************************************************
 * 
 *  Write down the results to a file
 *
 ******************************************************************************)

ListOfFunctions = {{hsqq00, "hsqq00"}, {hsgg00, "hsgg00"},
                   {hsqq11, "hsqq11"}, {hsgg11, "hsgg11"},
                   {hsqq10, "hsqq10"}, {hsgg10, "hsgg10"}, 
		   {hsqq22, "hsqq22"}, {hsqq21, "hsqq21"},
		   {hsgg22, "hsgg22"}, {hsgg21, "hsgg21"}};


SaveFunctions["HSiinm.m", ListOfFunctions];
