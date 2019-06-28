#! /usr/bin/env python

import sys
import subprocess

config = {"operation" : 0}

config["scheme"] = 0
config["mt"] = 173.1
config["mur"] = -1
config["muf"] = -1
config["with_asmz_error"] = ".true."

schemes = ["pole", "bar", "1s"]

pdfsets = {"MSTW" : "MSTW2008nnlo90cl.LHgrid",
           "CTEQ" : "cteq66.LHgrid",
           "CT10" : "CT10.LHgrid",
           "NNPDF" : "NNPDF21_100.LHgrid"}

pdfsets_asmz = {"MSTW" : ( "MSTW2008nnlo90cl_asmz-90cl.LHgrid",
                           "MSTW2008nnlo90cl_asmz+90cl.LHgrid" ),
                "CTEQ" : ( "cteq66alphas.LHgrid", ),
                "CT10" : ( "CT10as.LHgrid", ),
                "NNPDF" : ( "NNPDF21_as_0117_100.LHgrid",
                            "NNPDF21_as_0121_100.LHgrid" )}

config["exefile"] = "./RunTop"

def PrepareConfigFile(pdfset_asmz):
    if config["energy"] == 1960:
        config["collider"] = "Tevatron"
        config["hadron2"] = -1
    else:
        config["collider"] = "LHC"
        config["hadron2"] = 1

    if len(pdfset_asmz) == 0:
        config["with_asmz_error"] = ".false."

    string = "%(pdfset)s\n" \
        + "%(energy)fd0\n" + "%(hadron2)d\n" \
        + "%(scheme)d\n" + "%(mt)fd0\n" + "%(mur)fd0\n" + "%(muf)fd0\n" \
        + "%(order)d\n" + "%(operation)d\n" \
        + "%(with_asmz_error)s\n"

    if config["with_asmz_error"] == ".true.":
        string += "%d\n" % (len(pdfset_asmz),)
        for a in pdfset_asmz:
            string += "%s\n" % a

    return string % config

def usage(cmd):
    print "Usage: %s operation sqrtS order pdfset scheme [mt] [mur] [muf]" % cmd
    print "operations:"
    print "   0: Total cross section for the given top mass [mt] with scale error and pdf+alphas error"
    print "   1: Top mass dependence of the total cross section with only scale error"
    print "   2: Top mass dependence of the total cross section with scale error and pdf+alphas error"
    print "operations for internal checking: "
    print "  -1: Total cross section for the given top mass [mt] at the given scales [mur] and [muf]"
    print ""
    print "sqrtS: center-of-mass energy of the collider (1960 for Tevatron, others for LHC)"
    print ""
    print "pdfset: MSTW for MSTW2008NNLO, NNPDF for NNPDF2.1, CTEQ for CTEQ6.6, CT10 for CT10"
    print ""
    print "scheme: 0 for pole scheme, 1 for MSbar scheme, 2 for 1S scheme"
    print ""
    print "[mt]: (not used for operation 1 and 2) the top quark mass in the specified scheme"
    print ""
    print "[mur], [muf]: (only useful for operation -1)"
    print "              positive value for fixed value, negative value for multiples of [mt]"

if __name__ == '__main__':
    try:
        config["operation"] = int(sys.argv[1])
        config["energy"] = float(sys.argv[2])
        config["order"] = int(sys.argv[3])
        pdfset = sys.argv[4]
        config["pdfname"] = pdfset

        if config["order"] == 0:
            pdfsets["MSTW"] = "MSTW2008lo90cl.LHgrid"
            pdfsets_asmz["MSTW"] = ()
            # pdfsets["CTEQ"] = "cteq6ll.LHpdf"
            # pdfsets_asmz["CTEQ"] = ()
            # pdfsets["CT10"] = "cteq6ll.LHpdf"
            # pdfsets_asmz["CT10"] = ()
        elif config["order"] == 1:
            pdfsets["MSTW"] = "MSTW2008nlo90cl.LHgrid"
            pdfsets_asmz["MSTW"] = ( "MSTW2008nlo90cl_asmz-90cl.LHgrid",
                                     "MSTW2008nlo90cl_asmz+90cl.LHgrid" )
            
        config["pdfset"] = pdfsets[pdfset]

        config["scheme"] = int(sys.argv[5])
        config["schemename"] = schemes[config["scheme"]]

        if config["operation"] < -1 or config["operation"] > 2 or config["order"] < 0 or config["order"] > 2:
            raise IndexError

        if config["operation"] <= 0:
            config["mt"] = float(sys.argv[6])
            if config["operation"] == -1:
                config["mur"] = float(sys.argv[7])
                config["muf"] = float(sys.argv[8])
            if config["mt"] < 100. or config["mt"] > 300.:
                print "Mass too far from real value!"
                sys.exit()
    except (IndexError, ValueError, KeyError):
        usage(sys.argv[0])
    else:
        try:
            if config["operation"] == -3:
                config["with_asmz_error"] = ".true."
                config["operation"] = 0

            if config["operation"] == 1:
                config["outfile"] = "sigma_mt%(schemename)s_%(energy)d_%(order)d_%(pdfname)s.dat" % config
            elif config["operation"] == 2:
                config["outfile"] = "sigma_mt%(schemename)s_%(energy)d_%(order)d_pdf_%(pdfname)s.dat" % config
            else:
                config["outfile"] = ""

            s = PrepareConfigFile(pdfsets_asmz[pdfset])
            p = subprocess.Popen(["%(exefile)s" % config,
                                  "%(outfile)s" % config],
                                 stdin=subprocess.PIPE)
            p.communicate(s)
        except KeyboardInterrupt:
            pass
