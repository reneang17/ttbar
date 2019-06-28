(* ::Package:: *)

(************************************************************************************************
 *   Generates the (kp,lp,kT,lT) coordinates Mapped to the hypercube in different ways,         *
 *   These files are called when the different changes of variables  for the Weights            *
 *   are produced.                                                                              *
 ************************************************************************************************)

BeginPackage["GenMappedCoords`", {"Mappings`","Symbols`"}];

Print["GenMappedCoords"];
Print["by R. Angeles, C. Czakon, S. Sapeta"];


 (******************************************************************************
  *      List of updates                                                       *
  *   -                                                                        *
  *   -                                                                         *
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



Begin["`Private`"]


(****************************************************************************
 *                                                                          *
 * common                                                                   *
 *                                                                          *
 ***************************************************************************)


 (*CoFunction to creae strings whose name contains vector entries*)

 ToStringVec[inputvec_] := Module[{output,ic},
   output = ToString[_];
   For[ic = 1, ic < Length[inputvec] + 1, ic++ ,
    output = ToString[output] <> ToString[inputvec[[ic]]] <> ToString[_]
     ];
   Return[output]
   ]

  (******************************************************************************
   *                                                                            *
   *  Evaluate deltas								* 
   *                                                                          	*
   *****************************************************************************)

EvDeltas[a_]:=Module[{int,eta,rawcoords},
int=a;
(*Integrate deltas*)
int=int/.{lm->lT^2/lp,km->kT^2/kp};
int=int/.{phi->ArcCos[1-2 eta]};
int=int/.{eta-> (-1+kT^2+2 kT lT+lT^2)/(4 kT lT)};
Return[int//Simplify]
]

maindir=DirectoryName[FindFile["GenMappedCoords.m"]];




  (***************************************************************************
   *                                                                         *
   * Module that creates unit coordinate evaluated on-shell.		     *                  
   * Commented because it looks unneccesary  				     *
   *                                                                         *
   ***************************************************************************)


  (****************************************************************************
   *                                                                          *
   * Module that creates mappings for cases "with" exact gluon prop           *
   *                                                                          *
   ***************************************************************************)



Module[{rawcoords,MappedCoordsTemp,per,AuxVec,AuxSeq,c1,c0},


rawcoords = {kp,lp,kT,lT} ;

SetDirectory[ToString[maindir]];
CreateDirectory[ToString[CoordsMappedwithP]];

SetDirectory[ToString[maindir]<>ToString[CoordsMappedwithP]];

per= { {0,2}, {0,2,3}, {0,2,3}};


For[c0[1]=1,c0[1]<Length[per[[1]]]+1,c0[1]++,
    For[c0[2]=1,c0[2]<Length[per[[2]]]+1,c0[2]++,
        For[c0[3]=1,c0[3]<Length[per[[3]]]+1,c0[3]++,

        For[c1[1]=1,c1[1]<Length[per[[1]]]+1,c1[1]++,
            For[c1[2]=1,c1[2]<Length[per[[2]]]+1,c1[2]++,
                For[c1[3]=1,c1[3]<Length[per[[3]]]+1,c1[3]++,

        AuxVec={
        per[[1]][[ c0[1] ]],
        per[[2]][[ c0[2] ]],
        per[[3]][[ c0[3] ]],
        per[[1]][[ c1[1] ]],
        per[[2]][[ c1[2] ]],
        per[[3]][[ c1[3] ]]};

        AuxSeq=Sequence@@ AuxVec;

        CPrint[AuxSeq,(*unitlkplus*)1,lala,0,1];

        MinMapsWith[AuxSeq,rawcoords,MappedCoordsTemp,0,1,0];
        CPrint[MappedCoordsTemp[1]];
        Write["Maps"<>ToString[ToStringVec[AuxVec]]<>".dat",
        MappedCoordsTemp[1]/.{x-> x[1],y-> x[2], xT-> x[3], yT-> x[4]}];
        Close["Maps"<>ToString[ToStringVec[AuxVec]]<>".dat"];
        Clear[MappedCoordsTemp];

   (*Begin:Closing For funcs*)
                    ]
                ]
            ]
          ]
        ]
    ]
    (*End:Closing For funcs*)


Print["Mappings of kplpkTlT written for case with Exact gluon prop"];
SetDirectory[maindir];

(*Module Ends*)
]


(************************************************************************                    
*									*
* Module that creates mappings for cases "without" exact gluon prop     *
*                                                                       *
*************************************************************************)


Module[{rawcoords,MappedCoordsTemp,per,AuxVec,AuxSeq,c1,c0},


rawcoords = {kp,lp,kT,lT} ;


SetDirectory[ToString[maindir]];
CreateDirectory[ToString[CoordsMappedwithoutP]];

SetDirectory[ToString[maindir]<>ToString[CoordsMappedwithoutP]];

per= { {0,2,3}, {0,2,3}};


    For[c0[1]=1,c0[1]<Length[per[[1]]]+1,c0[1]++,
        For[c0[2]=1,c0[2]<Length[per[[2]]]+1,c0[2]++,

            For[c1[1]=1,c1[1]<Length[per[[1]]]+1,c1[1]++,
                For[c1[2]=1,c1[2]<Length[per[[2]]]+1,c1[2]++,

        AuxVec={
        per[[1]][[ c0[1] ]],
        per[[2]][[ c0[2] ]],
        per[[1]][[ c1[1] ]],
        per[[2]][[ c1[2] ]]};

        AuxSeq=Sequence@@ AuxVec;

        CPrint[AuxSeq,(*unitlkplus*)1,lala,0,1];

        MinMapsWithout[AuxSeq,rawcoords,MappedCoordsTemp,0,1,0];
        CPrint[MappedCoordsTemp[1]];
        Write["Maps"<>ToString[ToStringVec[AuxVec]]<>".dat",
        MappedCoordsTemp[1]/.{x-> x[1],y-> x[2], xT-> x[3], yT-> x[4]}];
        Close["Maps"<>ToString[ToStringVec[AuxVec]]<>".dat"];
        Clear[MappedCoordsTemp];

   (*Begin:Closing For funcs*)
                    ]
                ]
          ]
        ]
    (*End:Closing For funcs*)


Print["Mappings of kplpkTlT written for case withOUT Exact gluon prop"];
SetDirectory[maindir];

(*Module Ends*)
]




Print["Success"];


End[]


EndPackage[]
