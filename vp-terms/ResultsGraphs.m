resGraphsStandard := {{0, 0, -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 3])/Gamma[1 + ap]), 
  -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 4])/Gamma[1 + ap])}, 
 {0, 0, ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/
     Gamma[2 + ap] + (Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/
     Gamma[1 + ap] - (Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/
     Gamma[1 + ap])*Subscript[S, -3 + d]*w[2, 3], 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[2 + ap] + 
    (Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] - 
    (Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[2, 4]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[3, 1])/Gamma[1 + ap]), 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[2 + ap] + 
    (Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] - 
    (Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[3, 2], 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] + 
    (2*Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[ap] - 
    (2*Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[3, 3], 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] + 
    (2*Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[ap] - 
    (2*Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[3, 4]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[4, 1])/Gamma[1 + ap]), 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[2 + ap] + 
    (Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] - 
    (Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[4, 2], 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] + 
    (2*Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[ap] - 
    (2*Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[4, 3], 
  ((-2*Pi*tnn*Csc[ap*Pi]*Gamma[1 - ep]*Gamma[1 + ap + ep])/Gamma[1 + ap] + 
    (2*Pi*t00*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[ap] - 
    (2*Pi*tkn*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep])/Gamma[1 + ap])*
   Subscript[S, -3 + d]*w[4, 4]}}

resGraphsAlt := {{0, 0, -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 3])/Gamma[1 + ap]), 
  -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 4])/Gamma[1 + ap])}, 
 {0, 0, (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 3])/Gamma[2 + ap], 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 4])/Gamma[2 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[3, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[3, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 4])/Gamma[1 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[4, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[4, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 4])/Gamma[1 + ap]}}

resGraphsMassive := {{0, 0, -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 3])/Gamma[1 + ap]), 
  -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 4])/Gamma[1 + ap])}, 
 {0, 0, (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 3])/Gamma[2 + ap], 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 4])/Gamma[2 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[3, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[3, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 4])/Gamma[1 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[4, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[4, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 4])/Gamma[1 + ap]}}

resGraphsIntegrals := {{0, 0, -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 3])/Gamma[1 + ap]), 
  -((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[1, 4])/Gamma[1 + ap])}, 
 {0, 0, (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 3])/Gamma[2 + ap], 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[2, 4])/Gamma[2 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[3, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[3, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[3, 4])/Gamma[1 + ap]}, 
 {-((Pi*(t00 + tkn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
     Subscript[S, -3 + d]*w[4, 1])/Gamma[1 + ap]), 
  (Pi*((1 + ap)*(t00 - tkn) + 2*ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*
    Gamma[1 + ap + ep]*Subscript[S, -3 + d]*w[4, 2])/Gamma[2 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 3])/Gamma[1 + ap], 
  (2*Pi*(ap*t00 - tkn + ep*tnn)*Csc[ap*Pi]*Gamma[-ep]*Gamma[1 + ap + ep]*
    Subscript[S, -3 + d]*w[4, 4])/Gamma[1 + ap]}}

