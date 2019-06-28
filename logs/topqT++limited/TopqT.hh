#ifndef __TOPQT_H__
#define __TOPQT_H__

#include <iostream>
#include <cmath>
#include <LHAPDF/LHAPDF.h>
#include <heplib/InputDat.hh>
#include <heplib/GSLVegas.hh>
#include <heplib/Histogram.hh>
#include <heplib/Constants.hh>
#include "common.hh"
#include "hsqq.hh"
#include "hsgg.hh"
#include "c1qq2qq.hh"
#include "c1gg2gg.hh"
#include "c1qq2qg.hh"
#include "c1gg2qg.hh"
#include "c2qq2qq.hh"
#include "c2gg2qq.hh"
#include "c2qq2gg.hh"
#include "c2gg2gg.hh"
#include "c2qq2qg.hh"
#include "c2gg2qg.hh"

using namespace std;
using namespace LHAPDF;
using namespace constants;


//-----------------------------------------------------------------------------
class TopqT : public GSLVegas {

  public:

  // constructor
  // dim:   number of dimensions
  // id:    the input card file
  // conts: contribution, "real" or "virt"
  TopqT (size_t dim, InputDat& id, string contr);

  // generic integrand
  double fxn(double *x) { return (this->*_fxnp)(x); }

  /// overriden base class function for updating histograms
  void update_histograms(double *x, double wgt);

  /// overriden base class function for writing histograms
  void write_histograms(unsigned int it, double cum_res, double cum_err,
                        double chi_sq);

  double tau_func(double M, double s, double qT) const { return (M*M+qT*qT)/s; }

  // destructor
  virtual ~TopqT ();

  protected:

  // histograms
  Histogram* hist_qT;
  Histogram* hist_logqT;
  Histogram* hist_M;
  Histogram* hist_pt3;

  private:

  double _alphasQ(double Q) const;

  // pointer to the fxn function
  double (TopqT::*_fxnp)(double*);

  // assing flavour symbol to pdg id number
  string _flavour_symbol (const int i);

  // produce a string with channel symbol based on a pair of pdg ids
  void _append_channel_name(const int i, const int j);

  // integrands
  double _integrand_real(double *x);
  double _integrand_virt(double *x);

  // PDF value
  double fi(int i, double x);

  void _print_info();


  InputDat _id;
  string _contr;
  stringstream _info_stream;
  vector<string> _channel_list;
  map<string,double> _partial;

  // constants read from the Input file
  double mt, Mmax, qTmin, qTmax, s, mu;
  int pdgid, verbose, _nflav, order, _qflav;
  string pdfname, _runstr, _part, _outdir, _channel, _lhapdfver, _prefix;

  // turn on/off histograms
  bool _histlogqT, _histM, _histpt3;
  bool _first_loop;

  // LHAPDF PDF table or object
  #ifdef LHAPDFVER5
   double* _xftab;
  #endif
  #ifdef LHAPDFVER6
    LHAPDF::PDF* _pdf;
  #endif


};
#endif /* __TOPQT_H__ */
