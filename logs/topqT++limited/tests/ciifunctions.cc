//
//
// These results are to be compared with CheckCiiFunctions.nb
//
//
#include <iostream>
#include <heplib/MathematicaC.hh>
#include "../common.hh"
#include "../hsqq00.hh"
#include "../hsgg00.hh"
#include "../hsqq10.hh"
#include "../hsgg10.hh"
#include "../hsqq11.hh"
#include "../hsgg11.hh"
#include "../hsqq22.hh"
#include "../hsqq21.hh"
#include "../c1qq2qg.hh"
#include "../c1gg2qg.hh"
#include "../c1qq2qq.hh"
#include "../c1gg2gg.hh"
#include "../c2gg2qg.hh"
#include "../c2qq2qg.hh"
#include "../c2qq2qq.hh"
#include "../c2gg2qq.hh"

using namespace std;


//-----------------------------------------------------------------------------
int main(int argc, char ** argv) {

   double z  = 0.3;
   double M  = 8000;
   double th = 0.01;
   double mt = 173.2;
   double mu = mt;
   double qT2 = 5.0;

   cout << "///////////////////////////////////////////////" << endl;
   cout << "//////////////// NLO REAL /////////////////////" << endl;
   cout << "///////////////////////////////////////////////" << endl;
   
   cout << "C1_{qq <- qg}" << endl;
   cout << c1qq2qg_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qg_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qg_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{gg <- qg}" << endl;
   cout << c1gg2qg_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2qg_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2qg_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{qq <- qq}" << endl;
   cout << c1qq2qq_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qq_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qq_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{gg <- gg}" << endl;
   cout << c1gg2gg_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2gg_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2gg_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "///////////////////////////////////////////////" << endl;
   cout << "//////////////// NLO VIRT /////////////////////" << endl;
   cout << "///////////////////////////////////////////////" << endl;

   cout << "C1_{qq <- qg}" << endl;
   cout << c1qq2qg_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qg_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qg_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{gg <- qg}" << endl;
   cout << c1gg2qg_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2qg_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2qg_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{qq <- qq}" << endl;
   cout << c1qq2qq_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qq_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1qq2qq_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{gg <- gg}" << endl;
   cout << c1gg2gg_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2gg_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c1gg2gg_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "///////////////////////////////////////////////" << endl;
   cout << "/////////////// NNLO REAL /////////////////////" << endl;
   cout << "///////////////////////////////////////////////" << endl;
   
   cout << "C2_{qq <- qg}" << endl;
   cout << c2qq2qg_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qg_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qg_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C2_{gg <- qg}" << endl;
   cout << c2gg2qg_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qg_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qg_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C1_{qq <- qq}" << endl;
   cout << c2qq2qq_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qq_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qq_real_p(z, M, th, mt, mu, qT2,z) << endl;
   cout << endl;

   cout << "C1_{gg <- qq}" << endl;
   cout << c2gg2qq_real_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qq_real_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qq_real_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "///////////////////////////////////////////////" << endl;
   cout << "/////////////// NNLO VIRT /////////////////////" << endl;
   cout << "///////////////////////////////////////////////" << endl;
   
   cout << "C2_{qq <- qg}" << endl;
   cout << c2qq2qg_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qg_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2qq2qg_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;

   cout << "C2_{gg <- qg}" << endl;
   cout << c2gg2qg_virt_d(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qg_virt_r(z, M, th, mt, mu, qT2) << "\t\t"
        << c2gg2qg_virt_p(z, M, th, mt, mu, qT2) << endl;
   cout << endl;


}
