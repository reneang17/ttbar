#! /usr/bin/env python

import sys
import subprocess

config = {"operation" : 0}

config["order"] = 2

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

    string = "%(pdfset)s\n" \
        + "%(energy)fd0\n" + "%(hadron2)d\n" \
        + "%(scheme)d\n" + "%(mt)fd0\n" + "%(mur)fd0\n" + "%(muf)fd0\n" \
        "%(order)d\n" + "%(operation)d\n" \
        + "%(with_asmz_error)s\n"

    if config["with_asmz_error"] == ".true.":
        string += "%d\n" % (len(pdfset_asmz),)
        for a in pdfset_asmz:
            string += "%s\n" % a

    return string % config

def usage(cmd):
    print "Usage: %s sqrtS scheme mt [pdfset]" % cmd
    print ""
    print "      sqrtS: center-of-mass energy of the collider (1960 for Tevatron, others for LHC)"
    print "     scheme: 0 for pole scheme, 1 for MSbar scheme, 2 for 1S scheme"
    print "         mt: the top quark mass in the specified scheme"
    print "   [pdfset]: MSTW for MSTW2008NNLO (default), NNPDF for NNPDF2.1, CTEQ for CTEQ6.6, CT10 for CT10"

if __name__ == '__main__':
    try:
        config["energy"] = float(sys.argv[1])
        config["scheme"] = int(sys.argv[2])
        config["schemename"] = schemes[config["scheme"]]
        config["mt"] = float(sys.argv[3])
        if len(sys.argv) > 4:
            pdfset = sys.argv[4]
        else:
            pdfset = "MSTW"
        config["pdfset"] = pdfsets[pdfset]
        if config["mt"] < 100. or config["mt"] > 300.:
            print "Mass too far from real value!"
            sys.exit()
    except (IndexError, ValueError, KeyError):
        usage(sys.argv[0])
    else:
        try:
            config["outfile"] = ""
            s = PrepareConfigFile(pdfsets_asmz[pdfset])
            p = subprocess.Popen(["%(exefile)s" % config,
                                  "%(outfile)s" % config],
                                 stdin=subprocess.PIPE)
            p.communicate(s)
        except KeyboardInterrupt:
            pass
