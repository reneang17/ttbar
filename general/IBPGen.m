(* ::Package:: *)

Off[General::spell1];
Off[General::spell];
MakeList[x_] := If[Head[x] === Plus, Apply[List, x, {0}], x]
NumCoeff[x_] := Module[{ii},
    x /. Join[Table[Internal[[ii]] -> 1, {ii, 1, Length[Internal]}],
        Table[External[[ii]] -> 1, {ii, 1, Length[External]}]]
    ]
KillInt[x_] := Module[{ii},
    x /. Table[Internal[[ii]] -> 0, {ii, 1, Length[Internal]}]
    ]
SquaresEv[] := Module[{ii, jj, kk},
    DeleteCases[
      Map[(If[KillInt[##] === 0, ##, 0]) &,
        Union[Map[(##/NumCoeff[##]) &,
            Union[Flatten[
                Map[MakeList,
                  Union[DeleteCases[
                      Flatten[
                        Join[Table[
                            Expand[
                              D[Propagators[[jj]], Internal[[ii]]]*
                                External[[kk]]], {ii, 1,
                              Length[Internal]}, {jj, 1,
                              Length[Propagators]}, {kk, 1,
                              Length[External]}],
                          Table[Expand[
                              D[Propagators[[jj]], Internal[[ii]]]*
                                Internal[[kk]]], {ii, 1,
                              Length[Internal]}, {jj, 1,
                              Length[Propagators]}, {kk, 1,
                              Length[Internal]}]]], 0]], {1}]]], {1}]], {1}],
      0]
    ]
ClearIBP[] := Module[{temp},
    Unprotect[Internal, External, Propagators, IBPPrepared, BackMatrix,
      Squares];
    Internal = {};
    External = {};
    Propagators = {};
    Squares = {};
    BackMatrix = {};
    IBPPrepared = False;
    ]
PrepareIBP[] := Module[{M1, V1, FullMatrix},
    If[IBPPrepared, Print["Already prepared"]; Return[]];
    Propagators = Map[Expand, Propagators, {1}];
    Squares = SquaresEv[];
    Print[Squares, Propagators]
    If[Length[Squares] < Length[Propagators],
      Print["Linearly dependant propagators. Perform reduction first"];
      Return[]];
    If[Length[Squares] > Length[Propagators],
      Print["Not enough propagators. Add irreducible nominators" ]; Return[]];
    M1 = Table[
        Coefficient[Propagators[[ii]], Squares[[jj]]], {ii, 1,
          Length[Propagators]}, {jj, 1, Length[Squares]}];
    V1 = Propagators - M1.Squares;
    FullMatrix =
      Append[Table[Append[M1[[ii]], V1[[ii]]], {ii, 1, Length[M1]}],
        Table[If[ii === Length[M1[[1]]] + 1, 1, 0], {ii, 1,
            Length[M1[[1]]] + 1}]];
    BackMatrix = Inverse[FullMatrix];
    Print[MatrixForm[FullMatrix]];
    IBPPrepared = True;
    Print["Prepared"];
    Protect[Internal, External, Propagators, IBPPrepared, BackMatrix,
      Squares];
    ]
SquaresCoeffs[x_] := Module[{ii},
    (* If[Not[IBPPrepared], Print["Use IBPPrepare[] first"]; Return[]]; *)
    Table[Coefficient[x, Squares[[ii]]], {ii, 1, Length[Squares]}]
    ]
YRepr[x_] := Module[{temp},
    If[Not[IBPPrepared], Print["Use IBPPrepare[] first"]; Return[]];
    If[x==0,Return[0]];
    temp = SquaresCoeffs[x];
    temp = Append[temp, Expand[x - temp.Squares]];
    temp = temp.BackMatrix;
    Sum[temp[[ii]]*Ym[ii], {ii, 1, Length[temp] - 1}] + Last[temp]
    ]
IBP[x_, y_] := Module[{kk},
    If[Not[IBPPrepared], Print["Use IBPPrepare[] first"]; Return[]];
    (Expand[
            Sum[If[D[Propagators[[kk]], x] === 0,
                0, -a[kk]YRepr[D[Propagators[[kk]], x]*y]*Y[kk]], {kk, 1,
                Length[Propagators]}]] /.
          Table[Y[kk]*Ym[kk] -> 1, {kk, 1, Length[Propagators]}]) + D[y, x]*d
    ]
YReprmod[x_] := Module[{temp},
    If[x==0,Return[0]];
    temp = SquaresCoeffs[x];
    Print["<<<<<<<<<<<<",x, temp,">>>>>>>>>>>"];
    temp = Append[temp, Expand[x - temp.Squares]];
    Print[temp];
    (* temp = temp.BackMatrix;
    Sum[temp[[ii]]*Ym[ii], {ii, 1, Length[temp] - 1}] + Last[temp] *)
    ]
IBPmod[x_, y_, sq_] := Module[{kk},
   (* If[Not[IBPPrepared], Print["Use IBPPrepare[] first"]; Return[]]; *)
   Squares = sq;
   Print[Squares];
    (Expand[
            Sum[If[D[Propagators[[kk]], x] === 0,
                0, -a[kk]YReprmod[D[Propagators[[kk]], x]*y]*Y[kk]], {kk, 1,
                Length[Propagators]}]] /.
          Table[Y[kk]*Ym[kk] -> 1, {kk, 1, Length[Propagators]}]) + D[y, x]*d
    ]

IBPmod2[x_, y_] := Module[{kk},
   (* If[Not[IBPPrepared], Print["Use IBPPrepare[] first"]; Return[]]; *)
    (Expand[
            Sum[If[D[Propagators[[kk]], x] === 0,
                0, -a[kk]D[Propagators[[kk]], x]*y]*Y[kk], {kk, 1,
                Length[Propagators]}]] /.
          Table[Y[kk]*Ym[kk] -> 1, {kk, 1, Length[Propagators]}]) + D[y, x]*d
    ]

(* Work in progress *)
Lorentz[MomList_, p1_] := Module[{kk},

    (Expand[
            Sum[If[D[Propagators[[kk]], MomList[[ll]]] === 0,
                0, -a[kk]D[Propagators[[kk]], MomList[[ll]]]]*Y[kk], {kk, 1,
                Length[Propagators]}, {ll,1,Length[MomList]}]]/. 
		k-> sp[k,p1]
		(*/.
          Table[Y[kk]*Ym[kk] -> 1, {kk, 1, Length[Propagators]}]
	  *)
	  ) (*+ D[y, x]*d *)
    ]

ClearIBP[];
On[General::spell1];
On[General::spell];
