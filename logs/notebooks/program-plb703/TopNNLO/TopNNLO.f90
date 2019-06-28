module TopNNLO
  use TopVar
  use IntVar
  use Integrate
  use TopHSqq
  use TopHSgg
  implicit none

  real(8), parameter, private :: mapping_a_z = 2d0
  real(8), parameter, private :: mapping_a_pt = 1d-2, mapping_a_x = 5d-2

  real(8), private :: NLO_BASE

contains

  subroutine Top_Total_CS(r, r_pim, r_1pi)
    implicit none
    real(8), intent(out) :: r, r_pim, r_1pi
    real(8) :: rr(1)
    call InitScales
    call Cuba(Cuba_CUHRE, 2, 1, Top_NLO_Integrand, rr, 1d-3)
    r = rr(1)
    r_pim = r
    r_1pi = r
    if (top_order > 1) then
       NLO_BASE = r
       Lmu2m2 = 2d0*log(mu_f/mt)
       call Cuba(Cuba_SUAVE, 4, 1, Top_NNLO_Integrand_PIM, rr, 2d-3)
       r_pim = rr(1)
       call Cuba(Cuba_CUHRE, 4, 1, Top_NNLO_Integrand_1PI, rr, 1d-2)
       r_1pi = rr(1)
       r = (r_pim+r_1pi)/2d0
    end if
  end subroutine Top_Total_CS

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine InitScales
    implicit none

    if (mur0 > 0d0) then
       mu_r = mur0
    else
       mu_r = -mur0*mt0
    end if

    if (muf0 > 0d0) then
       mu_f = muf0
    else
       mu_f = -muf0*mt0
    end if

    alphas_mur = AlphasPDF(mu_r)
    Lrf = 2d0*log(mu_r/mu_f)

    mt = mt0
    Lr = 2d0*log(mu_r/mt)

    if (scheme == 1) then
       d1 = 4d0/3d0
       d2 = 8.23656d0 + 23d0*d1*Lr/12d0
    else if (scheme == 2) then
       d1 = alphas_mur*pi*2d0/9d0
       d2 = (23d0*log(3d0*mu_r/4d0/alphas_mur/mt)/3d0 + 181d0/18d0 + d1)*d1
    end if

    prefactor0 = hbar_c2 * alphas_mur**2

    if (top_order > 1) then
       Mttl = 2d0*mt
       Mtth = 0.8d0*Ecms
       taul = Mttl**2/Ecms2
       tauh = Mtth**2/Ecms2
       ptt_max = sqrt(Ecms2/4d0-mt**2)
    end if
  end subroutine InitScales

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine nlo_integrand(y, m, r)
    implicit none
    real(8), intent(in) :: y(2), m
    real(8), intent(out) :: r(2)
    real(8) :: tau, x1, x2, jacob, shat, fqq(0:1), fgg(0:1), fgq(1)
    real(8) :: l, lb, lr, lx, h1, h2
    real(8) :: ffqq, ffgg, ffgq

    real(8), parameter :: a0qq = 0.180899d0
    real(8), parameter :: a1qq = 0.101949d0
    real(8), parameter :: a2qq = -0.234371d0
    real(8), parameter :: a3qq = -0.0109950d0
    real(8), parameter :: a4qq = -0.0185575d0
    real(8), parameter :: a5qq = 0.00907527d0
    real(8), parameter :: a6qq = 0.0160367d0
    real(8), parameter :: a7qq = 0.00786727d0
    
    real(8), parameter :: a0gg = 0.108068d0
    real(8), parameter :: a1gg = -0.114997d0
    real(8), parameter :: a2gg = 0.0428630d0
    real(8), parameter :: a3gg = 0.131429d0
    real(8), parameter :: a4gg = 0.0438768d0
    real(8), parameter :: a5gg = -0.0760996d0
    real(8), parameter :: a6gg = -0.165878d0
    real(8), parameter :: a7gg = -0.158246d0
    
    real(8), parameter :: a0gq = 0.0110549d0
    real(8), parameter :: a1gq = -0.426773d0
    real(8), parameter :: a2gq = -0.00103876d0
    real(8), parameter :: a3gq = 0.450626d0
    real(8), parameter :: a4gq = -0.227229d0
    real(8), parameter :: a5gq = 0.0472502d0
    real(8), parameter :: a6gq = -0.197611d0
    real(8), parameter :: a7gq = -0.0529130d0

    r = 0d0

    prefactor = prefactor0 / m**2
    Lmu2m2 = 2d0*log(mu_f/m)

    tau = 4d0*m**2/Ecms2
    jacob = 1d0
    call mapping_exp(tau, 1d0, y(1), tau, x1, jacob)
    call mapping_exp(tau/x1, 1d0, y(2), tau/x1, x2, jacob)
    shat = x1*x2*Ecms2
    call ff_gen(x1, x2, ffqq, ffgg, ffgq)

    rho = 4d0*m**2/shat
    b = sqrt(1d0-rho)
    x = (1d0-b)/(1d0+b)
    lx = log(x)

    fqq(0) = pi*b*rho*(2d0+rho)/27d0
    fgg(0) = ( (rho**2 + 16d0*rho + 16d0) * (-lx) / b &
         - 28d0 - 31d0*rho ) * pi*b*rho/192d0
    r(1) = fqq(0)*ffqq + fgg(0)*ffgg
    
    if (top_order > 0) then
       l = log(8d0*b**2)
       lb = log(b)
       lr = log(rho)

       fqq(1) = (b*l**2*16d0/3d0 - b*l*82d0/3d0 - pi**2/6d0) * rho/(72d0*pi) &
            + b*rho * (a0qq + b**2*(a1qq*l+a2qq) + b**4*(a3qq*l+a4qq) + a5qq*b**6*l + &
            a6qq*lr + a7qq*lr**2) &
            + fqq(0) * (log(4d0/rho)*2d0/3d0 - 10d0/9d0) / (8d0*pi**2)
       fqq(1) = fqq(1) + Lmu2m2 * ( &
            rho*(-lx)*16d0*pi/81d0 + &
            fqq(0) * (127d0 - 30d0 + 48d0*log(rho/4d0/b**2)) / 9d0 &
            ) / (8d0*pi**2)

       h1 = log((1d0+b)/2d0)**2 - log((1d0-b)/2d0)**2 + 2d0*ddilog((1d0+b)/2d0) &
            - 2d0*ddilog((1d0-b)/2d0)
       h2 = ddilog(2d0*b/(1d0+b)) - ddilog(-2d0*b/(1d0-b))
       fgg(1) = (12d0*b*l**2 - b*l*366d0/7d0 + 11d0*pi**2/42) * 7d0/1536d0/pi &
            + b * (a0gg + b**2*(a1gg*l+a2gg) + a3gg*b**4*l + rho**2*(a4gg*lr + a5gg*lr**2) + &
            rho*(a6gg*lr + a7gg*lr**2)) + ((-lx) - 2d0*b)*rho**2/1024d0/pi
       fgg(1) = fgg(1) + Lmu2m2 * ( &
            (2d0*rho*(59d0*rho**2 + 198d0*rho - 288d0) * (-lx) + &
            12d0*rho*(rho**2 + 16d0*rho + 16d0) * h2 - &
            6d0*rho*(rho**2 - 16d0*rho + 32d0) * h1 - &
            b*(7449d0*rho**2 - 3328d0*rho + 724) * 4d0/15d0 ) * pi/192d0 &
            + 12d0*fgg(0)*log(rho/4d0/b**2) &
            ) / (8d0*pi**2)

       fgq(1) = b * (b**2*(a0gq*lb+a1gq) + b**4*(a2gq*lb+a3gq) + rho**2*(a4gq*lr+a5gq*lr**2) + &
            rho*(a6gq*lr + a7gq*lr**2))
       fgq(1) = fgq(1) + Lmu2m2 * ( &
            rho*(14d0*rho**2 + 27d0*rho - 136d0)*(-lx) * 4d0/9d0 - rho*(2d0-rho)*h1*32d0/3d0 &
            - b*(1319d0*rho**2 - 3468d0*rho + 724d0)*8d0/135d0 &
            ) * pi/192d0 / (8d0*pi**2)

       r(2) = 4d0*pi*alphas_mur * (fqq(1)*ffqq + fgg(1)*ffgg + fgq(1)*ffgq)

       r(2) = r(2) + (alphas_mur/pi) * (23d0*Lrf/6d0) * r(1)
    end if

    r = r * prefactor * jacob
  end subroutine nlo_integrand

  subroutine Top_NLO_Integrand(ndim, y, ncomp, r)
    implicit none
    integer, intent(in) :: ndim, ncomp
    real(8), intent(in) :: y(ndim)
    real(8), intent(out) :: r(ncomp)
    real(8) :: ar, rc(2), rp(2), rm(2), h
    
    call nlo_integrand(y, mt, rc)

    r(1) = rc(1)

    if (top_order > 0) then
       r(1) = r(1) + rc(2)
    end if

    ar = alphas_mur/pi

    if (top_order > 1) then
       r(1) = r(1) + ar * (23d0*Lrf/4d0) * rc(2) &
            + ar**2 * (29d0*Lrf/6d0 - 529d0*Lrf**2/48d0) * rc(1)
    end if

    if (scheme > 0 .and. top_order > 0) then
       h = mt*1d-6
       call nlo_integrand(y, mt+h, rp)
       call nlo_integrand(y, mt-h, rm)
       r(1) = r(1) + mt * ar * d1 * (rp(1)-rm(1))/(2d0*h)
       if (top_order > 1) then
          r(1) = r(1) + mt * ( &
               ar * d1 * (rp(2)-rm(2))/(2d0*h) &
               + ar**2 * d2 * (rp(1)-rm(1))/(2d0*h) &
               + ar**2 * (d1**2*mt/2d0) * (rp(1)-2d0*rc(1)+rm(1))/h**2 &
               )
       end if
    end if
    
  end subroutine Top_NLO_Integrand

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine Top_NNLO_Integrand_PIM(ndim, y, ncomp, r)
    implicit none
    integer, intent(in) :: ndim, ncomp
    real(8), intent(in) :: y(ndim)
    real(8), intent(out) :: r(ncomp)
    real(8) :: jacob, tau, x, z, costh
    real(8) :: fxxfzz_qq, fxxft_qq, fxxfzz_gg, fxxft_gg, ffgq
    real(8) :: TrHSqq(0:4), TrHSgg(0:4)
    real(8) :: rqq, rgg
    real(8) :: dd(0:3), amu
    integer :: i

    jacob = 1d0
    call mapping_exp(taul, tauh, y(4), taul, tau, jacob)
    Mtt = sqrt(tau)*Ecms
    Lh = 2d0*log(Mtt/mu_f)
    call HPLx
    prefactor = prefactor0 * (4d0*pi/3d0) * b/Mtt**2 

    call mapping_exp(tau, 1d0, y(1), tau, x, jacob)
    call mapping_tan_d(0d0, 1d0, y(2), mapping_a_z, z, jacob)

    call mapping_lin(-1d0, 1d0, y(3), 1d0, costh, jacob)
    call HPLyz(costh)

    call gamma_matrix_qq(costh)
    call Top_Hard_qq(1)
    call Top_Soft_qq_PIM(2)

    TrHSqq(4) = ctrace2(matmul(Sqq2(4,:,:),Hqq0))
    TrHSqq(3) = ctrace2(matmul(Sqq2(3,:,:),Hqq0))
    TrHSqq(2) = ctrace2(matmul(Sqq2(2,:,:),Hqq0) + matmul(Sqq1(2,:,:),Hqq1))
    TrHSqq(1) = ctrace2(matmul(Sqq2(1,:,:),Hqq0) + matmul(Sqq1(1,:,:),Hqq1))
    TrHSqq(0) = ctrace2(matmul(Sqq1(0,:,:),Hqq1))

    call gamma_matrix_gg(costh)
    call Top_Hard_gg(1)
    call Top_Soft_gg_PIM(2)

    TrHSgg(4) = ctrace3(matmul(Sgg2(4,:,:),Hgg0))
    TrHSgg(3) = ctrace3(matmul(Sgg2(3,:,:),Hgg0))
    TrHSgg(2) = ctrace3(matmul(Sgg2(2,:,:),Hgg0) + matmul(Sgg1(2,:,:),Hgg1))
    TrHSgg(1) = ctrace3(matmul(Sgg2(1,:,:),Hgg0) + matmul(Sgg1(1,:,:),Hgg1))
    TrHSgg(0) = ctrace3(matmul(Sgg1(0,:,:),Hgg1))
 
    ! fxxfzz = f(x)*f(tau/x/z)/x/z
    if (z > tau/x) then
       call ff_gen(x, tau/x/z, fxxfzz_qq, fxxfzz_gg, ffgq)
       fxxfzz_qq = fxxfzz_qq/x/z
       fxxfzz_gg = fxxfzz_gg/x/z
    else
       fxxfzz_qq = 0d0
       fxxfzz_gg = 0d0
    end if

    ! fxxft = f(x)*f(tau/x)/x
    call ff_gen(x, tau/x, fxxft_qq, fxxft_gg, ffgq)
    fxxft_qq = fxxft_qq/x
    fxxft_gg = fxxft_gg/x

    amu = alphas_mur/4d0/pi

    Ls = log(Mtt**2*(1d0-z)**2/mu_f**2/z)
    do i = 0, 3
       dd(i) = Ls**i/(1d0-z)
    end do

    call Top_Construct_Leading_PIM(TrHSqq, dd, fxxfzz_qq, fxxft_qq, rqq)
    call Top_Construct_Leading_PIM(TrHSgg, dd, fxxfzz_gg, fxxft_gg, rgg)

    r = prefactor * jacob * amu**2 * (rqq/8d0 + rgg*3d0/64d0)
    r = NLO_BASE + r
  end subroutine Top_NNLO_Integrand_PIM

  subroutine Top_Construct_Leading_PIM(TrHS, dd, fxxfzz, fxxft, rr)
    implicit none
    real(8), intent(in) :: TrHS(0:4), dd(0:3), fxxfzz, fxxft
    real(8), intent(out) :: rr
    real(8) :: plus, delta
    
    plus = (8d0*dd(3) - 16d0*pi**2*dd(1) + 128d0*z3*dd(0)) * TrHS(4) &
         + (6d0*dd(2) - 4d0*pi**2*dd(0)) * TrHS(3) &
         + 4d0*dd(1) * TrHS(2) + 2d0*dd(0) * TrHS(1)
    plus = plus*(fxxfzz-fxxft)
    delta = (Lh**4 + 16d0*z3*Lh) * TrHS(4) + (Lh**3 + 4d0*z3) * TrHS(3) &
         + Lh**2 * TrHS(2) + Lh*TrHS(1) + TrHS(0)
    delta = delta*fxxft
    rr = plus + delta
  end subroutine Top_Construct_Leading_PIM

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine map_var_x_s4(y, jacob0, t1, u1, jacob, xx, s4, s4_max, t1hat, u1hat)
    implicit none
    real(8), intent(in) :: y(*), jacob0, t1, u1
    real(8), intent(out) :: jacob, xx, s4, s4_max, t1hat, u1hat
    real(8) :: xx_min
    jacob = jacob0
    xx_min = -u1/(Ecms2+t1)
    call mapping_exp(xx_min, 1d0, y(1), xx_min*mapping_a_x, xx, jacob)
    Mtt = sqrt(-xx**2*t1/(xx*Ecms2+u1))*Ecms
    call HPLx
    t1hat = xx*t1
    u1hat = -Mtt**2-t1hat
    s4_max = xx*(Ecms2+t1) + u1
    call mapping_exp(0d0, s4_max, y(2), s4_max/Mtt**2, s4, jacob)
  end subroutine map_var_x_s4

  subroutine Top_NNLO_Integrand_1PI(ndim, y, ncomp, r)
    implicit none
    integer, intent(in) :: ndim, ncomp
    real(8), intent(in) :: y(ndim)
    real(8), intent(out) :: r(ncomp)
    real(8) :: ptt, m_perp, b_perp, y_max, y_min, y_var
    real(8) :: t1, t1hat, u1, u1hat, costh
    real(8) :: x1, x2, s4, s4_max, x1s4, x10, x2s4, x20
    real(8) :: jacob, jacob0, amu
    real(8) :: fxxfs4_qq, fxxfs4_gg, fxxf0_qq, fxxf0_gg, ffgq
    real(8) :: rqq1, rqq2, rgg

    jacob0 = 1d0
    call mapping_exp(0d0, ptt_max, y(4), ptt_max*mapping_a_pt, ptt, jacob0)
    m_perp = sqrt(ptt**2+mt**2)
    b_perp = sqrt(1d0-4d0*m_perp**2/Ecms2)
    y_max = log((1d0+b_perp)/(1d0-b_perp))/2d0
    y_min = -y_max
    call mapping_lin(y_min, y_max, y(3), 1d0, y_var, jacob0)
    t1 = -Ecms*m_perp*exp(-y_var)
    u1 = -Ecms*m_perp*exp(y_var)

    amu = alphas_mur/4d0/pi
    prefactor = prefactor0 * (16d0*pi/3d0/Ecms2) * ptt

!!! dx1 ds4
    call map_var_x_s4(y, jacob0, t1, u1, jacob, x1, s4, s4_max, t1hat, u1hat)
    costh = (t1hat-u1hat)/(Mtt**2*b)
    call HPLyz(costh)

    x2s4 = (s4-t1hat)/(x1*Ecms2+u1)
    x20 = (-t1hat)/(x1*Ecms2+u1)
    call ff_gen(x1, x2s4, fxxfs4_qq, fxxfs4_gg, ffgq)
    fxxfs4_qq = fxxfs4_qq/x1/(s4-t1hat)
    fxxfs4_gg = fxxfs4_gg/x1/(s4-t1hat)
    call ff_gen(x1, x20, fxxf0_qq, fxxf0_gg, ffgq)
    fxxf0_qq = fxxf0_qq/x1/(-t1hat)
    fxxf0_gg = fxxf0_gg/x1/(-t1hat)

    call Top_Construct_Leading_1PI_qq(costh, s4, s4_max, fxxfs4_qq, fxxf0_qq, rqq1)
    rqq1 = rqq1*jacob

    call Top_Construct_Leading_1PI_gg(costh, s4, s4_max, fxxfs4_gg, fxxf0_gg, rgg)
    rgg = rgg*jacob

!!! dx2 ds4
    call map_var_x_s4(y, jacob0, u1, t1, jacob, x2, s4, s4_max, u1hat, t1hat)
    costh = (t1hat-u1hat)/(Mtt**2*b)
    call HPLyz(costh)

    x1s4 = (s4-u1hat)/(x2*Ecms2+t1)
    x10 = (-u1hat)/(x2*Ecms2+t1)
    call ff_gen(x1s4, x2, fxxfs4_qq, fxxfs4_gg, ffgq)
    fxxfs4_qq = fxxfs4_qq/x2/(s4-u1hat)
    call ff_gen(x10, x2, fxxf0_qq, fxxf0_gg, ffgq)
    fxxf0_qq = fxxf0_qq/x2/(-u1hat)

    call Top_Construct_Leading_1PI_qq(costh, s4, s4_max, fxxfs4_qq, fxxf0_qq, rqq2)
    rqq2 = rqq2*jacob

    r = prefactor * amu**2 * ((rqq1+rqq2)/2d0/8d0 + rgg*3d0/64d0)
    r = NLO_BASE + r
  end subroutine Top_NNLO_Integrand_1PI

  subroutine Top_Construct_Leading_1PI(TrHS, s4, s4_max, fxxfs4, fxxf0, r)
    implicit none
    real(8), intent(in) :: TrHS(0:4)
    real(8), intent(in) :: s4, s4_max, fxxfs4, fxxf0
    real(8), intent(out) :: r
    real(8) :: plus, delta, reg, dd(0:3), Lmax, dd_max(0:3), L4
    integer :: i

    Ls = log(s4/mt**2)
    Lmax = log(s4_max/mt**2)
    L4 = log(1d0+s4/mt**2)
    do i = 0, 3
       dd(i) = Ls**i/s4
       dd_max(i) = Lmax**(i+1)/(i+1)
    end do

    plus = (64d0*dd(3) - 96d0*Lmu2m2*dd(2) + (48d0*Lmu2m2**2 - 32d0*pi**2)*dd(1) + &
         (-8d0*Lmu2m2**3 + 16d0*pi**2*Lmu2m2 + 128d0*z3)*dd(0)) * TrHS(4) &
         + (24d0*dd(2) - 24d0*Lmu2m2*dd(1) + (6d0*Lmu2m2**2 - 4d0*pi**2)*dd(0)) * TrHS(3) &
         + (8d0*dd(1) - 4d0*Lmu2m2*dd(0)) * TrHS(2) + 2d0*dd(0) * TrHS(1)
    plus = plus*(fxxfs4-fxxf0)
    delta = (64d0*dd_max(3) - 96d0*Lmu2m2*dd_max(2) + (48d0*Lmu2m2**2 - 32d0*pi**2)*dd_max(1) + &
         (-8d0*Lmu2m2**3 + 16d0*pi**2*Lmu2m2 + 128d0*z3)*dd_max(0)) * TrHS(4) &
         + (24d0*dd_max(2) - 24d0*Lmu2m2*dd_max(1) + (6d0*Lmu2m2**2 - 4d0*pi**2)*dd_max(0)) * TrHS(3) &
         + (8d0*dd_max(1) - 4d0*Lmu2m2*dd_max(0)) * TrHS(2) + 2d0*dd_max(0) * TrHS(1)
    delta = delta &
            + (Lmu2m2**4 - 4d0*pi**2*Lmu2m2**2 - 64d0*z3*Lmu2m2 + 4d0*pi**4/15d0) * TrHS(4) &
            + (-Lmu2m2**3 + 2d0*pi**2*Lmu2m2 + 16d0*z3) * TrHS(3) &
            + (Lmu2m2**2 - 4d0*z2) * TrHS(2) - Lmu2m2 * TrHS(1) + TrHS(0)
    delta = delta*fxxf0/s4_max
    reg = -8d0*L4*(L4**2 - 3d0*L4*(2d0*Ls-Lmu2m2) + 3d0*(2d0*Ls-Lmu2m2)**2 - 2d0*pi**2) * TrHS(4) &
         - 6d0*L4*(-L4 + 2d0*(2d0*Ls-Lmu2m2)) * TrHS(3) - 4d0*L4 * TrHS(2)
    reg = reg*fxxfs4/s4
    r = plus + delta + reg
  end subroutine Top_Construct_Leading_1PI

  subroutine Top_Construct_Leading_1PI_qq(costh, s4, s4_max, fxxfs4, fxxf0, r)
    implicit none
    real(8), intent(in) :: costh, s4, s4_max, fxxfs4, fxxf0
    real(8), intent(out) :: r
    real(8) :: TrHSqq(0:4)

    call gamma_matrix_qq(costh)
    call Top_Hard_qq(1)
    call Top_Soft_qq_1PI(2)

    TrHSqq(4) = ctrace2(matmul(Sqq2(4,:,:),Hqq0))
    TrHSqq(3) = ctrace2(matmul(Sqq2(3,:,:),Hqq0))
    TrHSqq(2) = ctrace2(matmul(Sqq2(2,:,:),Hqq0) + matmul(Sqq1(2,:,:),Hqq1))
    TrHSqq(1) = ctrace2(matmul(Sqq2(1,:,:),Hqq0) + matmul(Sqq1(1,:,:),Hqq1))
    TrHSqq(0) = ctrace2(matmul(Sqq1(0,:,:),Hqq1))

    call Top_Construct_Leading_1PI(TrHSqq, s4, s4_max, fxxfs4, fxxf0, r)
  end subroutine Top_Construct_Leading_1PI_qq

  subroutine Top_Construct_Leading_1PI_gg(costh, s4, s4_max, fxxfs4, fxxf0, r)
    implicit none
    real(8), intent(in) :: costh, s4, s4_max, fxxfs4, fxxf0
    real(8), intent(out) :: r
    real(8) :: TrHSgg(0:4)

    call gamma_matrix_gg(costh)
    call Top_Hard_gg(1)
    call Top_Soft_gg_1PI(2)

    TrHSgg(4) = ctrace3(matmul(Sgg2(4,:,:),Hgg0))
    TrHSgg(3) = ctrace3(matmul(Sgg2(3,:,:),Hgg0))
    TrHSgg(2) = ctrace3(matmul(Sgg2(2,:,:),Hgg0) + matmul(Sgg1(2,:,:),Hgg1))
    TrHSgg(1) = ctrace3(matmul(Sgg2(1,:,:),Hgg0) + matmul(Sgg1(1,:,:),Hgg1))
    TrHSgg(0) = ctrace3(matmul(Sgg1(0,:,:),Hgg1))

    call Top_Construct_Leading_1PI(TrHSgg, s4, s4_max, fxxfs4, fxxf0, r)
  end subroutine Top_Construct_Leading_1PI_gg

end module TopNNLO
