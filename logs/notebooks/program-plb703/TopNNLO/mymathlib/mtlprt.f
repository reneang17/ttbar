*
* $Id: mtlprt.F,v 1.1.1.1 1996/04/01 15:02:52 mclareni Exp $
*
* $Log: mtlprt.F,v $
* Revision 1.1.1.1  1996/04/01 15:02:52  mclareni
* Mathlib gen
*
*
      SUBROUTINE MTLPRT(NAME,ERC,TEXT)
      CHARACTER*(*) NAME,ERC,TEXT
      WRITE(  *,100) ERC(1:4),NAME,ERC,TEXT(1:LT)
      RETURN
100   FORMAT(7X,'***** CERN ',A,1X,A,' ERROR ',A,': ',A)
      END
