#include <iostream>
#include <stdlib.h>
#include <string>
#include <heplib/InputDat.hh>
#include "TopqT.hh"
#include "common.hh"

using namespace std;


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

  // get parameters from the card file and initialize variables
  InputDat inputdat(argv[1]);

  int itmx1  = inputdat.value<int>("itmx1");
  int itmx2  = inputdat.value<int>("itmx2");
  int ncall1 = inputdat.value<int>("ncall1");
  int ncall2 = inputdat.value<int>("ncall2");

  // set seed
  string seed = inputdat.value<string>("seed");
  if (seed == "-999") seed = "0";
  setenv("GSL_RNG_SEED", seed.c_str(),1);

  string part = inputdat.value<string>("part");
  if (part == "virt") {
    inputdat.warning_off("qTmax");
  }
  
  // integration -----------------------------------------------------
  TopqT *topqT;

  double xlo[5] = {0.0,0.0,0.0,0.0,0.0};
  double xup[5] = {1.0,1.0,1.0,1.0,1.0};

  // REAL contribution 
  //
  // here, qT is integrated between qTmin and qTmax
  if (part == "real") {

    topqT  = new TopqT (5,inputdat,"real");
    topqT->integrate(itmx1,ncall1,xlo,xup);
    topqT->integrate(itmx2,ncall2,xlo,xup);
    delete topqT;

  // VIRTUAL + SUBTRACTION contribution
  //
  // here, qT is integrated between 0 and qTmax; however, because of
  // properties of the '*' distribution (see my notes) the subtraction part is
  // in practice integrated between qTmax and mu; this integration has been
  // already pefromed in mathematica and the corresponding limits are
  // substituted  in function used here
  } else if (part == "virt") {

    topqT  = new TopqT (4,inputdat,"virt");
    topqT->integrate(itmx1,ncall1,xlo,xup);
    topqT->integrate(itmx2,ncall2,xlo,xup);
    delete topqT;
  }

}
