! This file is compatible with Cuba 2.x

module Integrate
  implicit none

  integer, parameter :: Cuba_VEGAS = 1, Cuba_SUAVE = 2, Cuba_DIVONNE = 3, Cuba_CUHRE = 4

  real(8) :: Cuba_epsabs = 1d-20

  integer :: Cuba_mineval = 0, Cuba_maxeval = 100000000

  ! 0: no output, 1: progress, 2: +input parameters, 3: +subregions
  integer :: Cuba_verbose = 0

  ! 0: use all sets of samples, 4: only use the last set of samples
  integer :: Cuba_last = 4

  ! Vegas and Suave only
  ! 0: smoothing the importance function, 16: no smoothing (for integrand with sharp edges)
  integer :: Cuba_smooth = 0

! Vegas
  integer :: Cuba_nstart = 1000, Cuba_nincrease = 500

! Suave
  integer :: Cuba_nnew = 1000
  real(8) :: Cuba_flatness = 25d0

! Divonne
  integer :: Cuba_key1 = 47, Cuba_key2 = 1, Cuba_key3 = 1, Cuba_maxpass = 5
  real(8) :: Cuba_border = 0d0, Cuba_maxchisq = 10d0, Cuba_mindeviation = .25d0

! Cuhre
  integer :: Cuba_key = 0

contains

  subroutine Cuba(method, ndim, ncomp, integrand, results, epsrel)
    implicit none

    integer :: method, ndim, ncomp
    external :: integrand
    real(8) :: results(*), epsrel

    real(8), allocatable :: error(:), prob(:)

    character*10, parameter :: name(4) = &
         (/ "Vegas  ", "Suave  ", "Divonne", "Cuhre  " /)

    real(8), parameter :: userdata = 0
    integer, parameter :: seed = 0

    integer, parameter :: nbatch = 1000, gridno = 0
    character*(*), parameter :: statefile = ""

    integer, parameter :: ngiven = 0, nextra = 0
    integer :: ldxgiven

    integer c
    integer neval, nregions, fail

    allocate ( error(ncomp), prob(ncomp) )

    if ( method == Cuba_VEGAS ) then

       call vegas(ndim, ncomp, integrand, userdata, &
            epsrel, Cuba_epsabs, Cuba_verbose + Cuba_smooth, seed, &
            Cuba_mineval, Cuba_maxeval, Cuba_nstart, Cuba_nincrease, nbatch, &
            gridno, statefile, &
            neval, fail, results, error, prob)
       nregions = 1

    else if ( method .eq. Cuba_SUAVE ) then

       call suave(ndim, ncomp, integrand, userdata, &
            epsrel, Cuba_epsabs, Cuba_verbose + Cuba_last + Cuba_smooth, seed, &
            Cuba_mineval, Cuba_maxeval, Cuba_nnew, Cuba_flatness, &
            nregions, neval, fail, results, error, prob)

    else if ( method .eq. Cuba_DIVONNE ) then

       ldxgiven = ndim
       call divonne(ndim, ncomp, integrand, userdata, &
            epsrel, Cuba_epsabs, Cuba_verbose, seed, &
            Cuba_mineval, Cuba_maxeval, Cuba_key1, Cuba_key2, Cuba_key3, Cuba_maxpass, &
            Cuba_border, Cuba_maxchisq, Cuba_mindeviation, &
            ngiven, ldxgiven, 0, nextra, 0, &
            nregions, neval, fail, results, error, prob)

    else if ( method .eq. Cuba_CUHRE ) then

       call cuhre(ndim, ncomp, integrand, userdata, &
            epsrel, Cuba_epsabs, Cuba_verbose + Cuba_last, &
            Cuba_mineval, Cuba_maxeval, Cuba_key, &
            nregions, neval, fail, results, error, prob)

    else

       print *, "invalid method ", method
       return

    endif

    if ( fail /= 0 ) then
       print *, "method   =  ", name(method)
       print *, "nregions =", nregions
       print *, "neval    =", neval
       print *, "fail     =", fail
       print '(G20.12," +- ",G20.12,"   p = ",F8.3)', &
            (results(c), error(c), prob(c), c = 1, ncomp)
    endif
    
    deallocate ( error, prob )
  end subroutine Cuba


end module Integrate
