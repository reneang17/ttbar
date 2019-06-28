module IntVar
  use TopVar
  implicit none

  real(8), parameter :: pi = 3.1415926535897932385d0
  real(8), parameter :: gammaE = 0.57721566490153286061d0
  real(8), parameter :: hbar_c2 = 3.8937966d8 ! GeV^2 pb
  real(8), parameter :: z2 = 1.6449340668482264365d0
  real(8), parameter :: z3 = 1.2020569031595942854d0
  complex(8), parameter :: cI = (0d0, 1d0)

  real(8) :: alphas_mur, mu_r, mu_f
  real(8) :: mt, Lmu2m2, Lrf, Lr, d1, d2

  real(8) :: prefactor0, prefactor
  real(8) :: rho, b, x

  real(8) :: Lh, Ls
  real(8) :: taul, tauh, Mtt, Mttl, Mtth
  real(8) :: ptt_max

  real(8) :: yt, zu, yt1, zu1
  real(8) :: xp1, xp2, xp3, xp4, xp5, xp6, xp7
  real(8) :: xm1, xm2, xm3, xm4, xm5

  real(8) :: beta(0:2)
  real(8) :: gammaCusp(0:2), gammaCuspF(0:2), gammaCuspA(0:2)
  real(8) :: gamma_phi_q(0:1), gamma_phi_g(0:1)
  real(8) :: gamma_q(0:1), gamma_g(0:1), gamma_hq(0:1)
  complex(8) :: gammaCusp34(0:1), g34
  complex(8) :: gammaHqq0(2,2), gammaHqq1(2,2), gammaHgg0(3,3), gammaHgg1(3,3)

  complex(8) :: Hqq0(2,2), Hqq1(2,2)
  real(8) :: Sqq0(2,2) = reshape( (/ 3d0, 0d0, 0d0, 2d0/3d0 /), (/ 2, 2 /) )
  real(8) :: Sqq1(0:2,2,2), Sqq2(1:4,2,2)

  complex(8) :: Hgg0(3,3), Hgg1(3,3)
  real(8) :: Sgg0(3,3) = &
       reshape( (/ 3d0, 0d0, 0d0, 0d0, 3d0/2d0, 0d0, 0d0, 0d0, 5d0/6d0 /), (/ 3, 3 /) )
  real(8) :: Sgg1(0:2,3,3), Sgg2(1:4,3,3)

  real(8) :: Hmx, H0x, Hpx, Hmmx, Hm0x, H00x, H0mx, H0px, Hp0x
  real(8) :: Hmy, Hmz, Hmmy, H0my, Hmmz, H0mz

  real(8), external :: AlphasPDF, ddilog, dzerox
  complex(8), external :: wgplg

  real(8), private :: mtpole
  integer, private :: mass_order

contains

  function ctrace2(mat) result(tr)
    implicit none
    complex(8), intent(in) :: mat(2,2)
    complex(8) :: tr
    tr = mat(1,1) + mat(2,2)
  end function ctrace2

  function ctrace3(mat) result(tr)
    implicit none
    complex(8), intent(in) :: mat(3,3)
    complex(8) :: tr
    tr = mat(1,1) + mat(2,2) + mat(3,3)
  end function ctrace3

  subroutine Top_UpdateCoeff
    implicit none
    integer :: nf = 5
    beta(0) = 11d0 - 0.6666667d0 * nf
    beta(1) = 102d0 - 12.66667d0 * nf
    beta(2) = 1428.5d0 - 279.6111d0 * nf + 6.018519d0 * nf**2
    gammaCusp(0) = 4d0
    gammaCusp(1) = 49.85492d0 - 4.444444d0 * nf
    gammaCusp(2) = 881.174d0 - 137.3906d0 * nf - 0.592593d0 * nf**2
    gammaCuspF(0) = 5.333333d0
    gammaCuspF(1) = 66.47322d0 - 5.925926d0 * nf
    gammaCuspF(2) = 1174.898d0 - 183.1874d0 * nf - 0.7901235d0 * nf**2
    gammaCuspA(0) = 12d0
    gammaCuspA(1) = 149.5647d0 - 13.33333d0 * nf
    gammaCuspA(2) = 2643.521d0 - 412.1717d0 * nf - 1.777778d0 * nf**2
    gamma_q(0) = -4d0
    gamma_q(1) = -37.41087d0 + 7.596367d0 * nf
    gamma_g(0) = -11d0 + 0.6666667d0 * nf
    gamma_g(1) = -154.7468d0 + 13.59902d0 * nf
    gamma_hq(0) = -2.666667d0
    gamma_hq(1) = -36.46952d0 + 2.962963d0 * nf
    gamma_phi_q(0) = 4d0
    gamma_phi_q(1) = 68.99990d0 - 6.293099d0 * nf
    gamma_phi_g(0) = 11d0 - 0.6666667d0 * nf
    gamma_phi_g(1) = 225.8221d0 - 10.66667d0 * nf
  end subroutine Top_UpdateCoeff

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  function MSbarMass(mbar0, mu, order) result(mbar)
    implicit none
    real(8), intent(in) :: mbar0, mu
    integer, intent(in) :: order
    real(8) :: mbar
    real(8) :: a, L
    a = AlphasPDF(mbar0)/pi
    L = 2d0*log(mu/mbar0)
    mbar = 1d0
    if (order > 0) then
       mbar = mbar - a*L
    end if
    if (order > 1) then
       mbar = mbar + a**2 * (11d0*L**2/8d0 - 27d0*L/8d0)
    end if
    if (order > 2) then
       mbar = mbar + a**3 * (-33d0*L**3/16d0 + 323d0*L**2/32d0 + (-6161d0/576d0 + 5d0*z3)*L)
    end if
    mbar = mbar0*mbar
  end function MSbarMass

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine ff_gen(x_1, x_2, ffqq, ffgg, ffgq)
    implicit none
    real(8), intent(in) :: x_1, x_2
    real(8), intent(out) :: ffqq, ffgg, ffgq
    real(8) :: pdf1(-6:6), pdf2(-6:6)
    integer :: i

    call evolvePDF(x_1, mu_f, pdf1)
    call evolvePDF(x_2, mu_f, pdf2)

    ffgg = pdf1(0)*pdf2(0)/x_1/x_2

    ffqq = 0d0
    ffgq = 0d0
    do i = 1, 5
       ffqq = ffqq + pdf1(hadron1*(i)) * pdf2(hadron2*(-i)) &
            + pdf1(hadron1*(-i)) * pdf2(hadron2*(i))
       ffgq = ffgq + 2d0*pdf1(0)*(pdf2(hadron2*(i)) + pdf2(hadron2*(-i)))
    end do
    ffqq = ffqq/x_1/x_2
    ffgq = ffgq/x_1/x_2
  end subroutine ff_gen

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine HPLx
    implicit none

    rho = 4d0*mt**2/Mtt**2
    b = sqrt(1d0-rho)
    x = (1d0-b)/(1d0+b)

    xp1 = 1d0/(x+1d0)
    xp2 = xp1**2
    xp3 = xp1**3
    xp4 = xp1**4
    xp5 = xp1**5
    xp6 = xp1**6
    xp7 = xp1**7

    xm1 = 1d0/(1d0-x)
    xm2 = xm1**2
    xm3 = xm1**3
    xm4 = xm1**4
    xm5 = xm1**5

    Hmx = log(1d0+x)
    H0x = log(x)
    Hpx = -log(1d0-x)
    Hmmx = Hmx**2/2d0
    H0mx = -ddilog(-x)
    Hm0x = -H0mx + H0x*Hmx
    H00x = H0x**2/2d0
    H0px = ddilog(x)
    Hp0x = -H0px + H0x*Hpx

    call Update_g34
  end subroutine HPLx

  subroutine Update_g34
    implicit none
    real(8) :: xpxm, Li2x2, Li3x2
    complex(8) :: lx

    xpxm = (1d0+x**2)/(1d0-x**2)
    lx = log(x) + pi*cI
    gammaCusp34(0) = -gammaCusp(0) * xpxm * lx

    Li2x2 = ddilog(x**2)
    Li3x2 = wgplg(2,1,x**2)
    gammaCusp34(1) = -gammaCusp(1) * xpxm * lx &
         + 24d0 * ( &
         xpxm**2 * (Li3x2 - lx*Li2x2 - z3 - z2*lx - lx**3/3d0) &
         + xpxm * (Li2x2 + 2d0*lx*log(1d0-x**2) - z2*(1d0-lx) - lx**2 + lx**3/3d0) &
         + z2 + z3 + lx**2 &
         )
    g34 = xpxm * (lx**2 - 2d0*lx*log(1d0-x**2) - Li2x2 + z2) - lx**2 - z2
  end subroutine Update_g34

  subroutine HPLyz(costh)
    implicit none
    real(8), intent(in) :: costh
    real(8) :: xm, xt

    xm = rho/4d0
    xt = (1d0-b*costh)/2d0
    yt = (xt-xm)/xm
    zu = (1d0-xt-xm)/xm
    yt1 = yt + 1d0
    zu1 = zu + 1d0

    Hmy = log(1d0+yt)
    Hmmy = Hmy**2/2d0
    H0my = -ddilog(-yt)
    Hmz = log(1d0+zu)
    Hmmz = Hmz**2/2d0
    H0mz = -ddilog(-zu)
  end subroutine HPLyz

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine mapping_lin(l, u, y, a, x_y, jac)
    implicit none
    real(8), intent(in) :: l, u, y, a
    real(8), intent(out) :: x_y, jac
    x_y = l + (u-l)*y
    jac = jac * (u-l)
  end subroutine mapping_lin

  subroutine mapping_exp(l, u, y, a, x_y, jac)
    implicit none
    real(8), intent(in) :: l, u, y, a
    real(8), intent(out) :: x_y
    real(8), intent(inout) :: jac
    real(8) :: b, c
    c = l-a
    b = (u-c)/a
    x_y = c + a*b**y
    jac = jac * a*b**y * log(b)
  end subroutine mapping_exp

  subroutine mapping_tan_d(l, u, y, a, x_y, jac)
    implicit none
    real(8), intent(in) :: l, u, y, a
    real(8), intent(out) :: x_y
    real(8), intent(out) :: jac
    x_y = (u+l)/2d0 + ((u-l)/2d0)*atan(a*(2d0*y-1d0))/atan(a)
    jac = jac * a*(u-l)/atan(a)/(1d0+a**2*(2d0*y-1)**2)
  end subroutine mapping_tan_d

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  function ConvertFromPole(mpole, order) result(m)
    implicit none
    real(8), intent(in) :: mpole
    integer, intent(in) :: order
    real(8) :: m
    mtpole = mpole
    mass_order = order
    m = DZEROX(120d0, 220d0, 1d-8, 10000, Find_mass, 1)
  end function ConvertFromPole

  function Find_mass(m) result(zero)
    implicit none
    real(8), intent(in) :: m
    real(8) :: zero
    real(8) :: alpha, mpole, d
    alpha = AlphasPDF(m)

    mpole = m
    
    if (mass_order > 0) then
       if (scheme == 1) then
          mpole = mpole + m*alpha/pi * (4d0/3d0)
       else if (scheme == 2) then
          d = 2d0*pi*alpha/9d0
          mpole = mpole + m*alpha/pi * d
       end if
    end if

    if (mass_order > 1) then
       if (scheme == 1) then
          mpole = mpole + m*alpha**2/pi**2 * (8.23656d0)
       else if (scheme == 2) then
          mpole = mpole + m*alpha**2/pi**2 * (23d0*log(3d0/4d0/alpha)/3d0 + 181d0/18d0 + d)*d
       end if
    end if

    zero = mpole - mtpole
  end function Find_mass

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  function ConvertFromPole2(mpole, order) result(m)
    implicit none
    real(8), intent(in) :: mpole
    integer, intent(in) :: order
    real(8) :: m
    mtpole = mpole
    mass_order = order
    m = DZEROX(120d0, 220d0, 1d-8, 10000, Find_mass2, 1)
  end function ConvertFromPole2

  function Find_mass2(m) result(zero)
    implicit none
    real(8), intent(in) :: m
    real(8) :: zero
    real(8) :: alpha, mbar, L, d
    alpha = AlphasPDF(m)
    L = 2d0*log(m/mtpole)

    mbar = mtpole

    if (mass_order > 0) then
       if (scheme == 1) then
          mbar = mbar - mtpole*alpha/pi * (L + 4d0/3d0)
       else if (scheme == 2) then
          d = pi*alpha*2d0/9d0
          mbar = mbar - mtpole*alpha/pi * d
       end if
    end if

    if (mass_order > 1) then
       if (scheme == 1) then
          mbar = mbar - mtpole*alpha**2/pi**2 * (13d0*L**2/24d0 + 331d0*L/72d0 + 8d0/9d0 + 8.23656d0)
       else if (scheme == 2) then
          mbar = mbar - mtpole*alpha**2/pi**2 * (23d0*log(3d0*m/4d0/alpha/mtpole)/3d0 + 181d0/18d0)*d
       end if
    end if

    zero = mbar - m
  end function Find_mass2

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  function ConvertFromPole3(mpole, order) result(m)
    implicit none
    real(8), intent(in) :: mpole
    integer, intent(in) :: order
    real(8) :: m
    real(8) :: alpha, d
    alpha = AlphasPDF(mpole)
    m = mpole
    if (order > 0) then
       d = pi*alpha*2d0/9d0
       m = m - mpole*alpha/pi * d
    end if
    if (order > 1) then
       m = m - mpole*alpha**2/pi**2 * (23d0*log(3d0/4d0/alpha)/3d0 + 181d0/18d0) * d
    end if
  end function ConvertFromPole3

end module IntVar
