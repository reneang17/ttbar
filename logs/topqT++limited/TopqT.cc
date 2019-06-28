#include "TopqT.hh"

using namespace LHAPDF;

#ifdef LHAPDFVER5
extern "C" {
  void initpdf_(const int & i);
  void evolvepdf_(const double & x,const double & Q,const double f[13]);
  double alphaspdf_(const double & Q);
}
#endif

//-----------------------------------------------------------------------------
// Constructor
//-----------------------------------------------------------------------------
TopqT::TopqT (size_t dim, InputDat& id, string contr): GSLVegas(dim), 
                                                      _id(id), _contr(contr),
                                                      _first_loop(true) {

  // initialize variables
  mt       = _id.value<double>("mt");
  Mmax     = _id.value<double>("Mmax");
  qTmin    = _id.value<double>("qTmin");
  qTmax    = _id.value<double>("qTmax");
  s        = pow(_id.value<double>("sqrt"),2);
  mu       = _id.value<double>("mu");

  order    = _id.value<int>("order");
  pdfname  = _id.value<string>("pdfname");
  _runstr  = _id.value<string>("runstr");
  _nflav   = _id.value<int>("nflav");
  verbose  = _id.value<int>("verbose");
  _part    = _id.value<string>("part");
  _outdir  = _id.value<string>("outdir");
  _channel = _id.value<string>("channel");
  _qflav   = _id.value<int>("qflav");
  
  _histlogqT = _id.value<bool>("histlogqT");
  _histM     = _id.value<bool>("histM");
  _histpt3   = _id.value<bool>("histpt3");

  assert(_qflav<=_nflav);
  if (_outdir == "-999") _outdir = ".";
  if (_channel == "-999") _channel = "all";
  set_verbose(verbose);
  set_stage(2);

  // map with partial, subprocess results 
  _partial["all"] = 0.0;
  _partial["gg"] = 0.0;
  _partial["qg"] = 0.0;
  _partial["qbarg"] = 0.0;
  _partial["qqbar"] = 0.0;

  // set up LHAPDF
  #ifdef LHAPDFVER5
  initPDFSet(pdfname,LHAPDF::LHGRID,0);
  initpdf_(0);
  _lhapdfver =  getVersion();
  #endif
  #ifdef LHAPDFVER6
  Info& cfg = LHAPDF::getConfig();
  cfg.set_entry("Verbosity", verbose);
  _pdf = mkPDF(pdfname, 0);
  _lhapdfver =  version();
  #endif

  // choose part
  if (_part == "real") {
    _fxnp = &TopqT::_integrand_real;
  } else if (_part == "virt") {
    _fxnp = &TopqT::_integrand_virt;
  }

  // construct info string and print information
  string part_capital;
  _info_stream << setprecision(10);
  if (_contr == "virt") { part_capital = "VIRTUAL + SUBTRACTION";
  } else if (_contr == "real") { part_capital = "REAL"; }
  _info_stream << "# " << part_capital << " part" << endl;
  _info_stream << "# alphasQ(mZ) = " << _alphasQ(mZ) << endl;
  _info_stream << "# alphasQ(mu) = " << _alphasQ(mu) << endl;
  _info_stream << "# LHAPDF version " << _lhapdfver << endl;
  _info_stream << "# The results will be written in the directory: "
               << _outdir << endl;
  _print_info();
  cout << _id.description() << endl;

  // deal with potential errors
  if (qTmin > qTmax) {
    cerr << "Error: qTmin > qTmax and this is not allowed!" << endl;
    exit(1);
  }

  // initialize histograms
  hist_qT    = new Histogram(0.0,100.0,0.5,true,12);
  hist_logqT = new Histogram(-2.0,4.0,0.2,true);
  hist_M     = new Histogram(0.0,8000.0,20.0,true);
  hist_pt3   = new Histogram(0.0,500.0,5.0,true);
  
}

//-----------------------------------------------------------------------------
// Destructor
//-----------------------------------------------------------------------------
TopqT::~TopqT () {

  double sum =_partial["gg"]+_partial["qg"]+_partial["qbarg"]+_partial["qqbar"];

  cout << "#------------------------------------" << endl;
  cout << "# Contribution from subprocesses:" << endl;
  printf("# gg     %10.2f   %6.2f%%\n",_partial["gg"]/_partial["all"]*result(), 
                                      _partial["gg"]/_partial["all"]*100);
  printf("# qg     %10.2f   %6.2f%%\n",_partial["qg"]/_partial["all"]*result(),
                                      _partial["qg"]/_partial["all"]*100);
  printf("# qbarg  %10.2f   %6.2f%%\n",_partial["qbarg"]/_partial["all"]*result(),
                                      _partial["qbarg"]/_partial["all"]*100);
  printf("# qqbar  %10.2f   %6.2f%%\n",_partial["qqbar"]/_partial["all"]*result(),
                                      _partial["qqbar"]/_partial["all"]*100);
  printf("#                     -------\n");
  printf("# sum    %10.2f   %6.2f%%\n",sum/_partial["all"]*result(),
                                      sum/_partial["all"]*100);
  cout << "#------------------------------------" << endl;

  cout << "# Output written to: " << _prefix + "_qT.dat" << endl;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
double TopqT::_alphasQ(double Q) const {
  #ifdef LHAPDFVER5
  return alphaspdf_(Q);
  #endif
  #ifdef LHAPDFVER6
  return _pdf->alphasQ(Q);
  #endif
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
double TopqT::fi(int i, double x) {

  #ifdef COMPMATH
  return 1.0/pow(x,2);
  #endif

  double val;
  if (x > 1 || x < 0) {
    val = 0.0;
  } else {
    #ifdef LHAPDFVER5
    return _xftab[i+6]/x;
    #endif
    #ifdef LHAPDFVER6
    val = (_pdf->xfxQ2(i, x, mu*mu))/x;
    #endif
  }
  return val;
}


//-----------------------------------------------------------------------------
// assing flavour symbol to pdg id number
//-----------------------------------------------------------------------------
string TopqT::_flavour_symbol (const int i) {
  char flavlist[5] =  {'d','u','s','c','b'};
  string symbol;
  if (i>0) { 
    if(_qflav>-6) { 
      symbol  = flavlist[_qflav-1];
    } else {
      symbol = "q";
    }
  } else if (i<0) { 
    symbol = "q\u0305"; 
    if(_qflav>-6) { 
      stringstream sstr;
      sstr << flavlist[_qflav-1] << "\u0305";
      symbol  = sstr.str();
    } else {
      symbol = "q\u0305"; 
    }
  } else if (i==0){ symbol = "g"; }
  return symbol;
}


//-----------------------------------------------------------------------------
// produce a string with channel symbol based on a pair of pdg ids
//-----------------------------------------------------------------------------
void TopqT::_append_channel_name(const int i, const int j) {

  if (_first_loop == false) return;

  stringstream this_channel;
  string a = _flavour_symbol(i);
  string b = _flavour_symbol(j);
  this_channel << a << " " << b;

  if (!(find(_channel_list.begin(), _channel_list.end(),
            this_channel.str()) != _channel_list.end())) {
    _channel_list.push_back(this_channel.str());
    cout << " " << this_channel.str() << endl << endl;
  }

}


//-----------------------------------------------------------------------------
// VIRTUAL + SUBTRACTION part integrand
//-----------------------------------------------------------------------------
double TopqT::_integrand_virt(double *xvec) {

  double x = xvec[0];
  double z = xvec[1];
  double M = 2*mt+xvec[2]*(Mmax-2*mt);
  double theta = PI*xvec[3];
  double Jac = PI*(Mmax-2*mt)*sin(theta);
  double val = 0.0, val_qg=0.0, val_qbarg = 0.0, val_gg = 0.0, val_qqbar = 0.0;
  double qT2max = pow(qTmax,2);

  // auxiliary variables
  double tau = tau_func(M,s,0);

  if (tau>1) {return 0.0;}

  #ifdef LHAPDFVER5
  double fiztab[13];
  double fixtab[13];
  double fjxtab[13];
  evolvepdf_(tau/(x*z),mu,fiztab);
  evolvepdf_(tau/x,mu,fixtab);
  evolvepdf_(x,mu,fjxtab);
  #endif

  // common variables
  #ifndef COMPMATH
  double beta = sqrt(1-4*mt*mt/(M*M));
  double fac  = 8*PI*beta*M/(3*pow(s,2)*tau);
  #endif

  for (int i=-_nflav;i<=_nflav;i++) {
    for (int j=-_nflav;j<=_nflav;j++) {
      //
      if ((_qflav > -6) && (i != _qflav) && (j != _qflav)) continue;
      // pdfs
      #ifdef LHAPDFVER5
      _xftab = fiztab;
      #endif
      double fiz = fi(i,tau/(x*z));
      #ifdef LHAPDFVER5
      _xftab = fixtab;
      #endif
      double fix = fi(i,tau/x);
      #ifdef LHAPDFVER5
      _xftab = fjxtab;
      #endif
      double fjx = fi(j,x);
      // luminosities
      double lum1 = fix*fjx;
      double lum2 = fiz*fjx;
      //------------------------------------------------------------------------
      // matrix elements squared
      //------------------------------------------------------------------------

      // --- gluon-gluon -------------------------------------------------------
      if ((i==0 && j == 0) &&
          ((_channel=="all" || _channel== "gg"))) {
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_gg += c1gg2gg_virt_d(z,M,theta,mt,mu,qT2max)/dg*lum1 +
                    c1gg2gg_virt_r(z,M,theta,mt,mu,qT2max)/dg*lum2 + 
                    (c1gg2gg_virt_p(z,M,theta,mt,mu,qT2max,z)*lum2-
                     c1gg2gg_virt_p(1,M,theta,mt,mu,qT2max,z)*lum1)/dg;
	// NNLO
	} else if (order == 2) {
	}
      // --- quark-gluon -------------------------------------------------------
      } else if (((i>0 && j==0) || (i==0 && j>0)) &&
      //} else if (((i>0 && j==0)) &&
                 ((_channel=="all" || _channel== "qg" || _channel=="offdiag"))) {
	_append_channel_name(i,j);
	// NLO
        if (order==1) {
          val_qg += (c1qq2qg_virt_r(z,M,theta,mt,mu,qT2max)/dq+
	            (c1gg2qg_virt_r(z,M,theta,mt,mu,qT2max))/dg)*lum2;
	// NNLO
        } else if (order==2) {
          val_qg += (c2qq2qg_virt_r(z,M,theta,mt,mu,qT2max)/dq+
	            (c2gg2qg_virt_r(z,M,theta,mt,mu,qT2max))/dg)*lum2;
        }
      // --- anti-quark-gluon --------------------------------------------------
      } else if ((((i<0 && j==0) || (i==0 && j<0))) &&  
                 ((_channel=="all" || _channel== "qbarg" || _channel=="offdiag")))  {
	_append_channel_name(i,j);
	// NLO
        if (order==1) {
          val_qbarg += (c1qq2qg_virt_r(z,M,theta,mt,mu,qT2max)/dq+
	               (c1gg2qg_virt_r(z,M,theta,mt,mu,qT2max))/dg)*lum2;
	// NNLO
        } else if (order==2) {
          val_qbarg += (c2qq2qg_virt_r(z,M,theta,mt,mu,qT2max)/dq+
	               (c2gg2qg_virt_r(z,M,theta,mt,mu,qT2max))/dg)*lum2;
        }
      // --- quark-anti-quark --------------------------------------------------
      } else if (((i>0 && j==-i) || (i<0 && j==-i)) &&  
                 ((_channel=="all" || _channel== "qqbar"))) {
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_qqbar += c1qq2qq_virt_d(z,M,theta,mt,mu,qT2max)/dq*lum1 +
                       c1qq2qq_virt_r(z,M,theta,mt,mu,qT2max)/dq*lum2 + 
                       (c1qq2qq_virt_p(z,M,theta,mt,mu,qT2max,z)*lum2-
                        c1qq2qq_virt_p(1,M,theta,mt,mu,qT2max,z)*lum1)/dq;
	// NNLO
	} else if (order == 2) {
	}
      // --- quark-quark -------------------------------------------------------
      } else if (i>0 && j>0) {
        continue;
      // --- anti-quark-anti-quark ---------------------------------------------
      } else if (i<0 && j<0) {
        continue;
      }
    }
  }
  _first_loop = false;
  
  _partial["gg"]    +=  val_gg;
  _partial["qg"]    +=  val_qg;
  _partial["qbarg"] +=  val_qbarg;
  _partial["qqbar"] +=  val_qqbar;
  
  // final collection
  val = val_gg+val_qg+val_qbarg+val_qqbar;
  _partial["all"] += val;
  val *= Jac;
  #ifndef COMPMATH
  val *= HeavisideTheta(1-tau)*fac/x;
  val *= pow(_alphasQ(mu)/(4.0*PI),order);
  val *= pow(_alphasQ(mu),2)*3.0/8.0;
  val *= fbGeV2;
  #endif

  return val;

}
 
//-----------------------------------------------------------------------------
// REAL part integrand
//-----------------------------------------------------------------------------
double TopqT::_integrand_real(double *xvec) {

  double x = xvec[0];
  double z = xvec[1];
  double M = 2*mt+xvec[2]*(Mmax-2*mt);
  double theta = PI*xvec[3];
  double qT2 = pow(qTmin + xvec[4]*(qTmax-qTmin),2);
  double Jac = PI*(Mmax-2*mt)*(qTmax-qTmin)*sqrt(qT2)*2*sin(theta);
  //double qT2 = pow(qTmin,2) + xvec[4]*(pow(qTmax,2)-pow(qTmin,2));
  //double Jac = PI*(Mmax-2*mt)*(pow(qTmax,2)-pow(qTmin,2))*sin(theta);
  double val = 0.0, val_qg=0.0, val_qbarg = 0.0, val_gg = 0.0, val_qqbar = 0.0;

  // auxiliary variables
  double tau =  M*M/s;

  if (tau>1) {return 0.0;}

  #ifdef LHAPDFVER5
  double fiztab[13];
  double fixtab[13];
  double fjxtab[13];
  evolvepdf_(tau/(x*z),mu,fiztab);
  evolvepdf_(tau/x,mu,fixtab);
  evolvepdf_(x,mu,fjxtab);
  #endif

  // common variables
  #ifndef COMPMATH
  double beta = sqrt(1-4*mt*mt/(M*M));
  double fac  = 8*PI*beta*M/(3*pow(s,2)*tau);
  #endif


  for (int i=-_nflav;i<=_nflav;i++) {
    for (int j=-_nflav;j<=_nflav;j++) {
      // 
      if ((_qflav > -6) && (i != _qflav) && (j != _qflav)) continue;
      // luminosities
      #ifdef LHAPDFVER5
      _xftab = fiztab;
      #endif
      double fiz = fi(i,tau/(x*z));
      #ifdef LHAPDFVER5
      _xftab = fixtab;
      #endif
      double fix = fi(i,tau/x);
      #ifdef LHAPDFVER5
      _xftab = fjxtab;
      #endif
      double fjx = fi(j,x);
      double lum1 = fix*fjx;            // delta
      double lum2 = fiz*fjx;            // reagular
      //------------------------------------------------------------------------
      // matrix elements squared
      //------------------------------------------------------------------------

      // --- gluon-gluon -------------------------------------------------------
      if ((i==0 && j == 0) && 
          ((_channel=="all" || _channel== "gg"))) {
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_gg += c1gg2gg_real_d(z,M,theta,mt,mu,qT2)/dg*lum1 +
                    c1gg2gg_real_r(z,M,theta,mt,mu,qT2)/dg*lum2 + 
                    (c1gg2gg_real_p(z,M,theta,mt,mu,qT2,z)*lum2-
                     c1gg2gg_real_p(1,M,theta,mt,mu,qT2,z)*lum1)/dg;
	// NNLO
	} else if (order == 2) {
          val_gg += c2gg2gg_real_d(z,M,theta,mt,mu,qT2)/dg*lum1+
                    c2gg2gg_real_r(z,M,theta,mt,mu,qT2)/dg*lum2+
                    c2qq2gg_real_r(z,M,theta,mt,mu,qT2)/dq*lum2+
                    (c2gg2gg_real_p(z,M,theta,mt,mu,qT2,z)*lum2-
                     c2gg2gg_real_p(1,M,theta,mt,mu,qT2,z)*lum1)/dg;
	}
      // --- quark-gluon -------------------------------------------------------
      } else if (((i>0 && j==0) || (i==0 && j>0)) &&
                 ((_channel=="all"||_channel== "qg" || _channel=="offdiag"))) {
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_qg += (c1qq2qg_real_r(z,M,theta,mt,mu,qT2)/dq +
                     c1gg2qg_real_r(z,M,theta,mt,mu,qT2)/dg)*lum2;
	// NNLO
	} else if (order == 2) {
          val_qg += (c2qq2qg_real_r(z,M,theta,mt,mu,qT2)/dq +
                     c2gg2qg_real_r(z,M,theta,mt,mu,qT2)/dg)*lum2;
	}
      // --- anti-quark-gluon --------------------------------------------------
      } else if ((((i<0 && j==0) || (i==0 && j<0))) &&
                ((_channel=="all"|| _channel== "qbarg"|| _channel=="offdiag"))){
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_qbarg += (c1qq2qg_real_r(z,M,theta,mt,mu,qT2)/dq +
                        c1gg2qg_real_r(z,M,theta,mt,mu,qT2)/dg)*lum2;
	// NNLO
	} else if (order == 2) {
          val_qbarg += (c2qq2qg_real_r(z,M,theta,mt,mu,qT2)/dq +
                        c2gg2qg_real_r(z,M,theta,mt,mu,qT2)/dg)*lum2;
	}
      // --- quark-anti-quark --------------------------------------------------
      } else if (((i>0 && j==-i) || (i<0 && j==-i)) && 
                 ((_channel=="all" || _channel== "qqbar"))) {
	_append_channel_name(i,j);
	// NLO
	if (order == 1) {
          val_qqbar += c1qq2qq_real_d(z,M,theta,mt,mu,qT2)/dq*lum1 +
                       c1qq2qq_real_r(z,M,theta,mt,mu,qT2)/dq*lum2 + 
                       (c1qq2qq_real_p(z,M,theta,mt,mu,qT2,z)*lum2-
                        c1qq2qq_real_p(1,M,theta,mt,mu,qT2,z)*lum1)/dq;
	// NNLO
	} else if (order == 2) {
          val_qqbar += c2qq2qq_real_d(z,M,theta,mt,mu,qT2)/dq*lum1+
                       c2qq2qq_real_r(z,M,theta,mt,mu,qT2)/dq*lum2+
                       c2gg2qq_real_r(z,M,theta,mt,mu,qT2)/dg*lum2+
                       (c2qq2qq_real_p(z,M,theta,mt,mu,qT2,z)*lum2-
                        c2qq2qq_real_p(1,M,theta,mt,mu,qT2,z)*lum1)/dq;
	}
      // --- quark-quark -------------------------------------------------------
      } else if ((i>0 && j>0)) {
        continue;
      // --- anti-quark-anti-quark ---------------------------------------------
      } else if ((i<0 && j<0)) {
        continue;
      }
    }
  }
  _first_loop = false;


  _partial["gg"]    +=  val_gg;
  _partial["qg"]    +=  val_qg;
  _partial["qbarg"] +=  val_qbarg;
  _partial["qqbar"] +=  val_qqbar;

  // final collection
  val = val_gg+val_qg+val_qbarg+val_qqbar;
  _partial["all"] += val;
  val *= Jac;
  #ifndef COMPMATH
  val *= HeavisideTheta(1-tau)*fac/x;
  val *= pow(_alphasQ(mu)/(4.0*PI),order);
  val *= pow(_alphasQ(mu),2)*3.0/8.0;
  val *= fbGeV2;
  #endif

  return val;

}



//-----------------------------------------------------------------------------
void TopqT::update_histograms(double *xvec, double wgt) {

  // variables
  double qT;
  if (_contr == "real") {
    qT = qTmin + xvec[4]*(qTmax-qTmin);
  } else {
    qT = QTTECH;
  }

  // qT
  hist_qT->add_entry(qT,wgt);

  // log(qT)
  double logqT = log(qT);
  hist_logqT->add_entry(logqT,wgt);

  // M_tt
  double M = 2*mt+xvec[2]*(Mmax-2*mt);
  hist_M->add_entry(M,wgt);

  // pt3
  //double qT = qTmin + xvec[4]*(qTmax-qTmin);
  double theta = PI*xvec[3];
  double beta = sqrt(1-4*pow(mt,2)/pow(M,2));
  double pt3sqr = 1.0/4.0*pow(M,4)/(pow(M,2)+pow(qT,2))*(1-pow(beta,2)*pow(cos(theta),2))-pow(mt,2);
  hist_pt3->add_entry(sqrt(pt3sqr),wgt);
}

//-----------------------------------------------------------------------------
// write the histograms 
// Normalization:
//    The histogram objects contain results accumulated across all the
//    interations that is why they need to be divided by the number of
//    iterations; we also divide them by the bin size and that gives 
//    the results in [mub/GeV].
void TopqT::write_histograms(unsigned int it, double cum_res, 
                             double cum_err, double chi_sq) {

  _prefix = _outdir + "/hist_" + _contr + "_" + _runstr;
  {
    string name = _prefix + "_qT.dat";
    double norm = 1.0/it/hist_qT->bin_size();
    stringstream sstr;
    sstr << setprecision(10);
    sstr << "# Iteration: " << it << endl;
    sstr << "# Integral: " << cum_res << " +/- " <<  cum_err << " fb" << endl;
    sstr << "# LHAPDF version: " << _lhapdfver << endl;
    sstr << _id.description();
    hist_qT->write(name, norm, sstr.str());
  }
  if (_histlogqT) {
    string name = _prefix + "_logqT.dat";
    double norm = 1.0/it/hist_logqT->bin_size();
    hist_logqT->write(name, norm);
  }
  if (_histM) {
    string name = _prefix + "_M.dat";
    double norm = 1.0/it/hist_M->bin_size();
    hist_M->write(name, norm);
  }
  if (_histpt3) {
    string name = _prefix + "_pt3.dat";
    double norm = 1.0/it/hist_pt3->bin_size();
    hist_pt3->write(name, norm);
  }

}

//-----------------------------------------------------------------------------
// Print welcome string with useful info
void TopqT::_print_info() {

  string line = "#-------------------------------------------------------------------------------";
  cout << line << endl;
  cout << "#" <<endl;
  cout << "# topqT++ " << endl;
  cout << "#" <<endl;
  cout << _info_stream.str();
  cout << "#" <<endl;
  cout << line << endl;

}
