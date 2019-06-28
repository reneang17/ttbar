//
//
// These results are to be compared with numbers from CheckHSiinmIntegration.nb
//
// Example:
//  
//     $ ./hsintegration hsqq10
//

#include <iostream>
#include <string>
#include <heplib/MathematicaC.hh>
#include <heplib/GSLVegas.hh>
#include "../common.hh"
#include "../hsqq00.hh"
#include "../hsgg00.hh"
#include "../hsqq10.hh"
#include "../hsgg10.hh"
#include "../hsqq11.hh"
#include "../hsgg11.hh"
#include "../hsqq22.hh"
#include "../hsqq21.hh"

using namespace std;

double mt = 173.2;
double mu = mt;

//-----------------------------------------------------------------------------
class HSInt: public GSLVegas {
  
  public:  
  
  // constructor
  HSInt(size_t dim, double Mmax, string name) : GSLVegas(dim), _Mmax(Mmax),
                                                _name(name) {
  }

  // integrand
  double fxn(double *xvec) {
 
    double M = 2*mt+xvec[2]*(_Mmax-2*mt);
    double theta = PI*xvec[3];
    double Jac = PI*(_Mmax-2*mt)*sin(theta);
    double val = 0.0;

    if (_name        == "hsqq00") {
      val = hsqq00(M, theta, mt, mu);
    } else if (_name == "hsqq10") {
      val = hsqq10(M, theta, mt, mu);
    } else if (_name == "hsqq11") {
      val = hsqq11(M, theta, mt, mu);
    } else if (_name == "hsgg00") {
      val = hsgg00(M, theta, mt, mu);
    } else if (_name == "hsgg10") {
      val = hsgg10(M, theta, mt, mu);
    } else if (_name == "hsgg11") {
      val = hsgg11(M, theta, mt, mu);
    } else if (_name == "hsqq22") {
      val = hsqq22(M, theta, mt, mu);
    } else if (_name == "hsqq21") {
      val = hsqq21(M, theta, mt, mu);
    }

    val *= Jac;
    return val;
  }

  private:
  double _Mmax;
  string _name;

};


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

  double xlo[5] = {0.0,0.0,0.0,0.0,0.0};
  double xup[5] = {1.0,1.0,1.0,1.0,1.0};
  const double itmx1  = 10;
  const double ncall1 = 500000;
  const double itmx2  = 10;
  const double ncall2 = 5000000;
  
  HSInt *hsint;

  hsint  = new HSInt (4,8000, argv[1]);
  hsint->integrate(itmx1,ncall1,xlo,xup);
  hsint->integrate(itmx2,ncall2,xlo,xup);

}
