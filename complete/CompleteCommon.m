
(*
 *
 *)
NtoM = (2* E^(2*ep*EulerGamma)*(E^(-EulerGamma + Lp/2))^(2*(ap + 2*ep))*
      Sqrt[Pi]*Gamma[-ap - 2*ep]*Gamma[1 - ep]^2)/(Gamma[1 - 2*ep]*
      Gamma[1/2 - ep]*Gamma[1 + ap + ep]) /. Lp -> 0 // FullSimplify;

NtoMseries = Series[NtoM, {ap, 0, 2}, {ep, 0, 3}] // Normal // N;

(*
 *
 *)
replfunc[beta_, theta_, repl_] := Cases[repl, 
   HoldPattern[col[arg1_][beta, theta][arg2_] -> rhs__], -1] /. 
   {col[arg1_][__][ arg2_] :>  
   ToExpression[ToString[arg1] <> "int" <> ToString[arg2]]}

(*
 *
 *)
Replf = Table[f[i, j] -> 
        Coefficient[Coefficient[NtoMseries /. {ap -> 0, mu -> 1}, ep, i], 
        Lp, j], {i, -1, 1}, {j, -1, 2}] // Flatten;

(*
 *
 *)
ReplParameters = {ap -> 0 , mu -> 1, Lp -> 0, Nc -> 3};
