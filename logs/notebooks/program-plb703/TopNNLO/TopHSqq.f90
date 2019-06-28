module TopHSqq
  use TopVar
  use IntVar
  implicit none

  complex(8) :: Hqq1_coeff(0:2,2,2), Hqq2_coeff(1:4,2,2)

contains

!!!!!!!!!! hard !!!!!!!!!!

  subroutine Top_Hard_qq(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: idmat(2,2) = reshape( (/ 1d0, 0d0, 0d0, 1d0 /), (/ 2, 2 /) )
    complex(8) :: gamma0(2,2), gamma1(2,2), temp(2,2)
    integer :: i

    Hqq0 = 0d0

    Hqq0(2,2) = &
         &  + 2d0 + 4d0*xp2 - 8d0*xp3 + 4d0*xp4 + 12d0*yt*xp2 - 16d0*yt*xp3 + 8d0*&
         &    yt*xp4 + 4d0*yt**2*xp2 - 8d0*yt**2*xp3 + 4d0*yt**2*xp4 - 4d0*xp1*&
         &    yt

    Hqq1 = 0d0
    Hqq1_coeff = 0d0

    if (n > 0) then

       Hqq1_coeff(1,1,2) = ( 16d0/9d0*Hmy + 32d0/9d0*Hmy*xp2 - 64d0/9d0*Hmy*xp3 + 32d0/&
            &    9d0*Hmy*xp4 - 16d0/9d0*Hmz - 32d0/9d0*Hmz*xp2 + 64d0/9d0*Hmz*xp3 - &
            &    32d0/9d0*Hmz*xp4 + 32d0/3d0*yt*Hmy*xp2 - 128d0/9d0*yt*Hmy*xp3 + 64d0/&
            &    9d0*yt*Hmy*xp4 - 32d0/3d0*yt*Hmz*xp2 + 128d0/9d0*yt*Hmz*xp3 - 64d0/&
            &    9d0*yt*Hmz*xp4 + 32d0/9d0*yt**2*Hmy*xp2 - 64d0/9d0*yt**2*Hmy*xp3&
            &     + 32d0/9d0*yt**2*Hmy*xp4 - 32d0/9d0*yt**2*Hmz*xp2 + 64d0/9d0*yt**2&
            &    *Hmz*xp3 - 32d0/9d0*yt**2*Hmz*xp4 - 32d0/9d0*xp1*yt*Hmy + 32d0/9d0*&
            &    xp1*yt*Hmz )
       Hqq1_coeff(0,1,2) = - 8d0/9d0*yt**(-1)*Hmy + 8d0/9d0*&
            &    yt**(-1)*Hmy*xp2 + 8d0/9d0*zu**(-1)*Hmz - 8d0/9d0*zu**(-1)*Hmz*&
            &    xp2 - 16d0/9d0*Hmmy + 8d0/9d0*H0my - 32d0/9d0*Hmmx - 64d0/9d0*Hmmx*&
            &    xp2 + 16d0/9d0*Hm0x + 32d0/9d0*Hm0x*xp2 - 16d0/9d0*Hmmz - 64d0/9d0*&
            &    Hmmz*xp2 + 8d0/9d0*H0mz + 32d0/9d0*H0mz*xp2 + 16d0/3d0*H0mx*xm2 - &
            &    16d0/9d0*H0mx*xp2 - 32d0/9d0*H0mx*xm3 + 32d0/9d0*H0mx*xp3 - 8d0/3d0*&
            &    H00x*xm2 + 8d0/9d0*H00x*xp2 + 16d0/9d0*H00x*xm3 - 16d0/9d0*H00x*xp3&
            &     - 16d0/9d0*Hmx - 32d0/9d0*Hmx*xm2 + 8d0/9d0*Hmy + 16d0/9d0*Hmy*xp2&
            &     - 16d0/9d0*Hmy*Hmx - 64d0/9d0*Hmy*Hmx*xp2 + 128d0/9d0*Hmy*Hmx*xp3&
            &     - 64d0/9d0*Hmy*Hmx*xp4 + 16d0/3d0*Hmz*Hmx + 128d0/9d0*Hmz*Hmx*xp2&
            &     - 128d0/9d0*Hmz*Hmx*xp3 + 64d0/9d0*Hmz*Hmx*xp4 + 8d0/9d0*H0x + 16d0/&
            &    9d0*H0x*xm2 + 8d0/9d0*H0x*Hmy + 32d0/9d0*H0x*Hmy*xp2 - 64d0/9d0*H0x*&
            &    Hmy*xp3 + 32d0/9d0*H0x*Hmy*xp4 - 8d0/3d0*H0x*Hmz - 64d0/9d0*H0x*Hmz&
            &    *xp2 + 64d0/9d0*H0x*Hmz*xp3 - 32d0/9d0*H0x*Hmz*xp4 - 32d0/9d0*yt*&
            &    Hmmy*xp2 + 16d0/9d0*yt*H0my*xp2 - 64d0/9d0*yt*Hmmx*xp2 + 32d0/9d0*&
            &    yt*Hm0x*xp2 - 32d0/9d0*yt*Hmmz*xp2 + 16d0/9d0*yt*H0mz*xp2 - 16d0/3d0&
            &    *yt*H0mx*xm2 - 16d0/9d0*yt*H0mx*xp2 + 32d0/9d0*yt*H0mx*xm3 + 32d0/&
            &    9d0*yt*H0mx*xp3 + 8d0/3d0*yt*H00x*xm2 + 8d0/9d0*yt*H00x*xp2 - 16d0/&
            &    9d0*yt*H00x*xm3 - 16d0/9d0*yt*H00x*xp3 + 32d0/9d0*yt*Hmx*xm2 + 8d0/&
            &    9d0*yt*Hmy*xp2 - 160./9d0*yt*Hmy*Hmx*xp2 + 256d0/9d0*yt*Hmy*Hmx*&
            &    xp3 - 128d0/9d0*yt*Hmy*Hmx*xp4 + 8d0/9d0*yt*Hmz*xp2 + 224d0/9d0*yt*&
            &    Hmz*Hmx*xp2 - 256d0/9d0*yt*Hmz*Hmx*xp3 + 128d0/9d0*yt*Hmz*Hmx*xp4&
            &     - 16d0/9d0*yt*H0x*xm2 + 80./9d0*yt*H0x*Hmy*xp2 - 128d0/9d0*yt*H0x&
            &    *Hmy*xp3 + 64d0/9d0*yt*H0x*Hmy*xp4 - 112d0/9d0*yt*H0x*Hmz*xp2 + &
            &    128d0/9d0*yt*H0x*Hmz*xp3 - 64d0/9d0*yt*H0x*Hmz*xp4 - 64d0/9d0*yt**2&
            &    *Hmy*Hmx*xp2 + 128d0/9d0*yt**2*Hmy*Hmx*xp3 - 64d0/9d0*yt**2*Hmy*&
            &    Hmx*xp4 + 64d0/9d0*yt**2*Hmz*Hmx*xp2 - 128d0/9d0*yt**2*Hmz*Hmx*&
            &    xp3 + 64d0/9d0*yt**2*Hmz*Hmx*xp4 + 32d0/9d0*yt**2*H0x*Hmy*xp2 - &
            &    64d0/9d0*yt**2*H0x*Hmy*xp3 + 32d0/9d0*yt**2*H0x*Hmy*xp4 - 32d0/9d0*&
            &    yt**2*H0x*Hmz*xp2 + 64d0/9d0*yt**2*H0x*Hmz*xp3 - 32d0/9d0*yt**2*&
            &    H0x*Hmz*xp4 - 16d0/9d0*xm1*H0mx + 8d0/9d0*xm1*H00x + 32d0/9d0*xm1*&
            &    Hmx - 16d0/9d0*xm1*H0x - 32d0/9d0*xm1*yt*Hmx + 16d0/9d0*xm1*yt*H0x&
            &     - 8d0/9d0*xp1*yt**(-1)*Hmy + 8d0/9d0*xp1*zu**(-1)*Hmz + 64d0/9d0*&
            &    xp1*Hmmx - 32d0/9d0*xp1*Hm0x + 64d0/9d0*xp1*Hmmz - 32d0/9d0*xp1*&
            &    H0mz + 16d0/9d0*xp1*H0mx - 8d0/9d0*xp1*H00x - 16d0/9d0*xp1*Hmy - 64d0&
            &   /9d0*xp1*Hmz*Hmx + 32d0/9d0*xp1*H0x*Hmz + 32d0/9d0*xp1*yt*Hmmy - &
            &    16d0/9d0*xp1*yt*H0my + 64d0/9d0*xp1*yt*Hmmx - 32d0/9d0*xp1*yt*Hm0x&
            &     + 32d0/9d0*xp1*yt*Hmmz - 16d0/9d0*xp1*yt*H0mz - 8d0/9d0*xp1*yt*Hmy&
            &     + 32d0/9d0*xp1*yt*Hmy*Hmx - 8d0/9d0*xp1*yt*Hmz - 32d0/3d0*xp1*yt*&
            &    Hmz*Hmx - 16d0/9d0*xp1*yt*H0x*Hmy + 16d0/3d0*xp1*yt*H0x*Hmz + 8d0/&
            &    9d0*Pi*cI + 16d0/9d0*Pi*cI*xm2 + 16d0/9d0*Pi*cI*Hmx + 32d0/9d0*Pi*cI&
            &    *Hmx*xp2 + 8d0/9d0*Pi*cI*Hmy + 32d0/9d0*Pi*cI*Hmy*xp2 - 64d0/9d0*Pi&
            &    *cI*Hmy*xp3 + 32d0/9d0*Pi*cI*Hmy*xp4 - 8d0/3d0*Pi*cI*Hmz - 64d0/9d0&
            &    *Pi*cI*Hmz*xp2 + 64d0/9d0*Pi*cI*Hmz*xp3 - 32d0/9d0*Pi*cI*Hmz*xp4&
            &     - 8d0/3d0*Pi*cI*H0x*xm2 + 8d0/9d0*Pi*cI*H0x*xp2 + 16d0/9d0*Pi*cI*&
            &    H0x*xm3 - 16d0/9d0*Pi*cI*H0x*xp3 - 16d0/9d0*Pi*cI*yt*xm2 + 32d0/9d0&
            &    *Pi*cI*yt*Hmx*xp2 + 80./9d0*Pi*cI*yt*Hmy*xp2 - 128d0/9d0*Pi*cI*&
            &    yt*Hmy*xp3 + 64d0/9d0*Pi*cI*yt*Hmy*xp4 - 112d0/9d0*Pi*cI*yt*Hmz*&
            &    xp2 + 128d0/9d0*Pi*cI*yt*Hmz*xp3 - 64d0/9d0*Pi*cI*yt*Hmz*xp4 + 8d0/&
            &    3d0*Pi*cI*yt*H0x*xm2 + 8d0/9d0*Pi*cI*yt*H0x*xp2 - 16d0/9d0*Pi*cI*&
            &    yt*H0x*xm3 - 16d0/9d0*Pi*cI*yt*H0x*xp3 + 32d0/9d0*Pi*cI*yt**2*Hmy&
            &    *xp2 - 64d0/9d0*Pi*cI*yt**2*Hmy*xp3 + 32d0/9d0*Pi*cI*yt**2*Hmy*&
            &    xp4 - 32d0/9d0*Pi*cI*yt**2*Hmz*xp2 + 64d0/9d0*Pi*cI*yt**2*Hmz*xp3&
            &     - 32d0/9d0*Pi*cI*yt**2*Hmz*xp4 - 16d0/9d0*Pi*cI*xm1 + 8d0/9d0*Pi*&
            &    cI*xm1*H0x + 16d0/9d0*Pi*cI*xm1*yt - 32d0/9d0*Pi*cI*xp1*Hmx + 32d0/&
            &    9d0*Pi*cI*xp1*Hmz - 8d0/9d0*Pi*cI*xp1*H0x - 32d0/9d0*Pi*cI*xp1*yt*&
            &    Hmx - 16d0/9d0*Pi*cI*xp1*yt*Hmy + 16d0/3d0*Pi*cI*xp1*yt*Hmz - 8d0/&
            &    3d0*z2*xm2 + 8d0/9d0*z2*xp2 + 16d0/9d0*z2*xm3 - 16d0/9d0*z2*xp3 + 8d0/&
            &    3d0*z2*yt*xm2 + 8d0/9d0*z2*yt*xp2 - 16d0/9d0*z2*yt*xm3 - 16d0/9d0*z2&
            &    *yt*xp3 + 8d0/9d0*z2*xm1 - 8d0/9d0*z2*xp1

       do i = 0, 2
          Hqq1_coeff(i,2,1) = conjg(Hqq1_coeff(i,1,2))
       end do

       Hqq1_coeff(2,2,2) = (  - 16d0/3d0 - 32d0/3d0&
            &    *xp2 + 64d0/3d0*xp3 - 32d0/3d0*xp4 - 32d0*yt*xp2 + 128d0/3d0*yt*xp3&
            &     - 64d0/3d0*yt*xp4 - 32d0/3d0*yt**2*xp2 + 64d0/3d0*yt**2*xp3 - 32d0/&
            &    3d0*yt**2*xp4 + 32d0/3d0*xp1*yt )
       Hqq1_coeff(1,2,2) = ( 4d0 + 8d0*xp2 - 16d0*xp3 + 8d0*xp4 - 8d0/3d0*Hmx - 16d0/3d0&
            &    *Hmx*xp2 + 32d0/3d0*Hmx*xp3 - 16d0/3d0*Hmx*xp4 + 56d0/3d0*Hmy + 112d0&
            &   /3d0*Hmy*xp2 - 224d0/3d0*Hmy*xp3 + 112d0/3d0*Hmy*xp4 + 16d0/3d0*Hmz&
            &     + 32d0/3d0*Hmz*xp2 - 64d0/3d0*Hmz*xp3 + 32d0/3d0*Hmz*xp4 + 1d0/3d0*&
            &    H0x*xp2 + 2d0/3d0*H0x*xp3 - 4d0*H0x*xp4 + 8d0/3d0*H0x*xp5 + 24d0*yt&
            &    *xp2 - 32d0*yt*xp3 + 16d0*yt*xp4 - 16d0*yt*Hmx*xp2 + 64d0/3d0*yt*&
            &    Hmx*xp3 - 32d0/3d0*yt*Hmx*xp4 + 112d0*yt*Hmy*xp2 - 448d0/3d0*yt*&
            &    Hmy*xp3 + 224d0/3d0*yt*Hmy*xp4 + 32d0*yt*Hmz*xp2 - 128d0/3d0*yt*&
            &    Hmz*xp3 + 64d0/3d0*yt*Hmz*xp4 - 2d0/3d0*yt*H0x*xp2 + 4d0*yt*H0x*&
            &    xp3 - 8d0*yt*H0x*xp4 + 16d0/3d0*yt*H0x*xp5 + 8d0*yt**2*xp2 - 16d0*&
            &    yt**2*xp3 + 8d0*yt**2*xp4 - 16d0/3d0*yt**2*Hmx*xp2 + 32d0/3d0*&
            &    yt**2*Hmx*xp3 - 16d0/3d0*yt**2*Hmx*xp4 + 112d0/3d0*yt**2*Hmy*xp2&
            &     - 224d0/3d0*yt**2*Hmy*xp3 + 112d0/3d0*yt**2*Hmy*xp4 + 32d0/3d0*&
            &    yt**2*Hmz*xp2 - 64d0/3d0*yt**2*Hmz*xp3 + 32d0/3d0*yt**2*Hmz*xp4&
            &     + 1d0/3d0*yt**2*H0x*xp2 + 2d0/3d0*yt**2*H0x*xp3 - 4d0*yt**2*H0x*&
            &    xp4 + 8d0/3d0*yt**2*H0x*xp5 + 3d0/2d0*xm1*H0x - 1d0/3d0*xm1*yt*H0x&
            &     + 1d0/6d0*xm1*yt**2*H0x + 3d0/2d0*xp1*H0x - 8d0*xp1*yt + 16d0/3d0*&
            &    xp1*yt*Hmx - 112d0/3d0*xp1*yt*Hmy - 32d0/3d0*xp1*yt*Hmz - 1d0/3d0*&
            &    xp1*yt*H0x + 1d0/6d0*xp1*yt**2*H0x )
       Hqq1_coeff(0,2,2) = + 68d0/3d0 - 28d0/3d0*yt**(-1)*Hmy + &
            &    28d0/3d0*yt**(-1)*Hmy*xp2 - 8d0/3d0*zu**(-1)*Hmz + 8d0/3d0*zu**(-1)&
            &    *Hmz*xp2 + 6d0*xm2 + 38d0*xp2 - 64d0*xp3 + 256d0/3d0*xp4 - 64d0*xp5&
            &     + 64d0/3d0*xp6 - 8d0/3d0*Hp0x - 14d0/3d0*Hp0x*xp2 + 12d0*Hp0x*xp3&
            &     - 40./3d0*Hp0x*xp4 + 16d0/3d0*Hp0x*xp5 - 56d0/3d0*Hmmy + 28d0/3d0*&
            &    H0my + 40.*Hmmx + 128d0*Hmmx*xp2 - 640./3d0*Hmmx*xp3 + 320./3d0*&
            &    Hmmx*xp4 - 20.*Hm0x - 64d0*Hm0x*xp2 + 320./3d0*Hm0x*xp3 - 160./&
            &    3d0*Hm0x*xp4 + 16d0/3d0*Hmmz + 64d0/3d0*Hmmz*xp2 - 8d0/3d0*H0mz - 32d0&
            &   /3d0*H0mz*xp2 - 8d0/3d0*H0mx + 83d0*H0mx*xm2 - 30.*H0mx*xp2 - 526d0&
            &   /3d0*H0mx*xm3 + 84d0*H0mx*xp3 + 180.*H0mx*xm4 - 160./3d0*H0mx*&
            &    xp4 - 72d0*H0mx*xm5 - 83d0/2d0*H00x*xm2 + 38d0/3d0*H00x*xp2 + 263d0/&
            &    3d0*H00x*xm3 - 36d0*H00x*xp3 - 90.*H00x*xm4 + 20.*H00x*xp4 + 36d0&
            &    *H00x*xm5 + 8d0/3d0*H00x*xp5 - 12d0*Hmx - 328d0/3d0*Hmx*xm2 + 40./&
            &    3d0*Hmx*xp2 + 144d0*Hmx*xm3 + 64d0/3d0*Hmx*xp3 - 72d0*Hmx*xm4 - 32d0&
            &   /3d0*Hmx*xp4 + 28d0/3d0*Hmy + 56d0/3d0*Hmy*xp2 - 56d0/3d0*Hmy*Hmx - &
            &    224d0/3d0*Hmy*Hmx*xp2 + 448d0/3d0*Hmy*Hmx*xp3 - 224d0/3d0*Hmy*Hmx*&
            &    xp4 - 16d0*Hmz*Hmx - 128d0/3d0*Hmz*Hmx*xp2 + 128d0/3d0*Hmz*Hmx*xp3&
            &     - 64d0/3d0*Hmz*Hmx*xp4 + 20./3d0*H0x + 164d0/3d0*H0x*xm2 - 21d0*&
            &    H0x*xp2 - 72d0*H0x*xm3 + 2d0/3d0*H0x*xp3 + 36d0*H0x*xm4 - 104d0/3d0&
            &    *H0x*xp4 + 272d0/3d0*H0x*xp5 - 224d0/3d0*H0x*xp6 + 64d0/3d0*H0x*xp7&
            &     + 28d0/3d0*H0x*Hmy + 112d0/3d0*H0x*Hmy*xp2 - 224d0/3d0*H0x*Hmy*xp3&
            &     + 112d0/3d0*H0x*Hmy*xp4 + 8d0*H0x*Hmz + 64d0/3d0*H0x*Hmz*xp2 - 64d0&
            &   /3d0*H0x*Hmz*xp3 + 32d0/3d0*H0x*Hmz*xp4 - 12d0*yt*xm2 + 292d0/3d0*&
            &    yt*xp2 - 512d0/3d0*yt*xp3 + 192d0*yt*xp4 - 128d0*yt*xp5 + 128d0/3d0&
            &    *yt*xp6 - 52d0/3d0*yt*Hp0x*xp2 + 88d0/3d0*yt*Hp0x*xp3 - 80./3d0*yt&
            &    *Hp0x*xp4 + 32d0/3d0*yt*Hp0x*xp5 - 112d0/3d0*yt*Hmmy*xp2 + 56d0/3d0&
            &    *yt*H0my*xp2 + 880./3d0*yt*Hmmx*xp2 - 1280./3d0*yt*Hmmx*xp3 + &
            &    640./3d0*yt*Hmmx*xp4 - 440./3d0*yt*Hm0x*xp2 + 640./3d0*yt*Hm0x*&
            &    xp3 - 320./3d0*yt*Hm0x*xp4 + 32d0/3d0*yt*Hmmz*xp2 - 16d0/3d0*yt*&
            &    H0mz*xp2 - 110.*yt*H0mx*xm2 - 176d0/3d0*yt*H0mx*xp2 + 940./3d0*&
            &    yt*H0mx*xm3 + 464d0/3d0*yt*H0mx*xp3 - 360.*yt*H0mx*xm4 - 320./3d0&
            &    *yt*H0mx*xp4 + 144d0*yt*H0mx*xm5 + 55d0*yt*H00x*xm2 + 62d0/3d0*yt&
            &    *H00x*xp2 - 470./3d0*yt*H00x*xm3 - 188d0/3d0*yt*H00x*xp3 + 180.*&
            &    yt*H00x*xm4 + 40.*yt*H00x*xp4 - 72d0*yt*H00x*xm5 + 16d0/3d0*yt*&
            &    H00x*xp5 + 544d0/3d0*yt*Hmx*xm2 + 16d0*yt*Hmx*xp2 - 288d0*yt*Hmx*&
            &    xm3 + 128d0/3d0*yt*Hmx*xp3 + 144d0*yt*Hmx*xm4 - 64d0/3d0*yt*Hmx*&
            &    xp4 + 28d0/3d0*yt*Hmy*xp2 - 560./3d0*yt*Hmy*Hmx*xp2 + 896d0/3d0*yt&
            &    *Hmy*Hmx*xp3 - 448d0/3d0*yt*Hmy*Hmx*xp4 - 8d0/3d0*yt*Hmz*xp2 - &
            &    224d0/3d0*yt*Hmz*Hmx*xp2 + 256d0/3d0*yt*Hmz*Hmx*xp3 - 128d0/3d0*yt*&
            &    Hmz*Hmx*xp4 - 272d0/3d0*yt*H0x*xm2 - 22d0/3d0*yt*H0x*xp2 + 144d0*&
            &    yt*H0x*xm3 + 52d0/3d0*yt*H0x*xp3 - 72d0*yt*H0x*xm4 - 368d0/3d0*yt*&
            &    H0x*xp4 + 608d0/3d0*yt*H0x*xp5 - 448d0/3d0*yt*H0x*xp6 + 128d0/3d0*&
            &    yt*H0x*xp7 + 280./3d0*yt*H0x*Hmy*xp2 - 448d0/3d0*yt*H0x*Hmy*xp3&
            &     + 224d0/3d0*yt*H0x*Hmy*xp4 + 112d0/3d0*yt*H0x*Hmz*xp2 - 128d0/3d0*&
            &    yt*H0x*Hmz*xp3 + 64d0/3d0*yt*H0x*Hmz*xp4 + 6d0*yt**2*xm2 + 82d0/3d0&
            &    *yt**2*xp2 - 64d0*yt**2*xp3 + 256d0/3d0*yt**2*xp4 - 64d0*yt**2*&
            &    xp5 + 64d0/3d0*yt**2*xp6 - 14d0/3d0*yt**2*Hp0x*xp2 + 12d0*yt**2*&
            &    Hp0x*xp3 - 40./3d0*yt**2*Hp0x*xp4 + 16d0/3d0*yt**2*Hp0x*xp5 + &
            &    320./3d0*yt**2*Hmmx*xp2 - 640./3d0*yt**2*Hmmx*xp3 + 320./3d0*&
            &    yt**2*Hmmx*xp4 - 160./3d0*yt**2*Hm0x*xp2 + 320./3d0*yt**2*Hm0x*&
            &    xp3 - 160./3d0*yt**2*Hm0x*xp4 - 9d0*yt**2*H0mx*xm2 + 2d0/3d0*&
            &    yt**2*H0mx*xp2 - 114d0*yt**2*H0mx*xm3 + 212d0/3d0*yt**2*H0mx*xp3&
            &     + 180.*yt**2*H0mx*xm4 - 160./3d0*yt**2*H0mx*xp4 - 72d0*yt**2*&
            &    H0mx*xm5 + 9d0/2d0*yt**2*H00x*xm2 - 8d0/3d0*yt**2*H00x*xp2 + 57d0*&
            &    yt**2*H00x*xm3 - 88d0/3d0*yt**2*H00x*xp3 - 90.*yt**2*H00x*xm4&
            &     + 20.*yt**2*H00x*xp4 + 36d0*yt**2*H00x*xm5 + 8d0/3d0*yt**2*H00x&
            &    *xp5 - 48d0*yt**2*Hmx*xm2 + 40./3d0*yt**2*Hmx*xp2 + 144d0*yt**2*&
            &    Hmx*xm3 + 64d0/3d0*yt**2*Hmx*xp3 - 72d0*yt**2*Hmx*xm4 - 32d0/3d0*&
            &    yt**2*Hmx*xp4 - 224d0/3d0*yt**2*Hmy*Hmx*xp2 + 448d0/3d0*yt**2*Hmy&
            &    *Hmx*xp3 - 224d0/3d0*yt**2*Hmy*Hmx*xp4 - 64d0/3d0*yt**2*Hmz*Hmx*&
            &    xp2 + 128d0/3d0*yt**2*Hmz*Hmx*xp3 - 64d0/3d0*yt**2*Hmz*Hmx*xp4 + &
            &    24d0*yt**2*H0x*xm2 - 5d0*yt**2*H0x*xp2 - 72d0*yt**2*H0x*xm3 - 10.&
            &    *yt**2*H0x*xp3 + 36d0*yt**2*H0x*xm4 - 104d0/3d0*yt**2*H0x*xp4 + &
            &    272d0/3d0*yt**2*H0x*xp5 - 224d0/3d0*yt**2*H0x*xp6 + 64d0/3d0*yt**2*&
            &    H0x*xp7 + 112d0/3d0*yt**2*H0x*Hmy*xp2 - 224d0/3d0*yt**2*H0x*Hmy*&
            &    xp3 + 112d0/3d0*yt**2*H0x*Hmy*xp4 + 32d0/3d0*yt**2*H0x*Hmz*xp2 - &
            &    64d0/3d0*yt**2*H0x*Hmz*xp3 + 32d0/3d0*yt**2*H0x*Hmz*xp4 - 6d0*xm1&
            &     + 3d0*xm1*Hp0x - 337d0/6d0*xm1*H0mx + 355d0/12d0*xm1*H00x + 112d0/&
            &    3d0*xm1*Hmx - 37d0/2d0*xm1*H0x + 12d0*xm1*yt - 2d0/3d0*xm1*yt*Hp0x&
            &     + 9d0*xm1*yt*H0mx - 29d0/6d0*xm1*yt*H00x - 112d0/3d0*xm1*yt*Hmx&
            &     + 55d0/3d0*xm1*yt*H0x - 6d0*xm1*yt**2 + 1d0/3d0*xm1*yt**2*Hp0x - &
            &    3d0/2d0*xm1*yt**2*H0mx + 11d0/12d0*xm1*yt**2*H00x - 24d0*xm1*yt**2&
            &    *Hmx + 73d0/6d0*xm1*yt**2*H0x - 28d0/3d0*xp1*yt**(-1)*Hmy - 8d0/3d0&
            &    *xp1*zu**(-1)*Hmz - 50./3d0*xp1 + 3d0*xp1*Hp0x - 64d0/3d0*xp1*&
            &    Hmmx + 32d0/3d0*xp1*Hm0x - 64d0/3d0*xp1*Hmmz + 32d0/3d0*xp1*H0mz + &
            &    31d0/6d0*xp1*H0mx - 13d0/12d0*xp1*H00x - 24d0*xp1*Hmx - 56d0/3d0*xp1&
            &    *Hmy + 64d0/3d0*xp1*Hmz*Hmx + 97d0/6d0*xp1*H0x - 32d0/3d0*xp1*H0x*&
            &    Hmz - 100./3d0*xp1*yt + 14d0/3d0*xp1*yt*Hp0x + 112d0/3d0*xp1*yt*&
            &    Hmmy - 56d0/3d0*xp1*yt*H0my - 80.*xp1*yt*Hmmx + 40.*xp1*yt*Hm0x&
            &     - 32d0/3d0*xp1*yt*Hmmz + 16d0/3d0*xp1*yt*H0mz + 43d0/3d0*xp1*yt*&
            &    H0mx - 29d0/6d0*xp1*yt*H00x - 112d0/3d0*xp1*yt*Hmx - 28d0/3d0*xp1*&
            &    yt*Hmy + 112d0/3d0*xp1*yt*Hmy*Hmx + 8d0/3d0*xp1*yt*Hmz + 32d0*xp1*&
            &    yt*Hmz*Hmx + 17d0*xp1*yt*H0x - 56d0/3d0*xp1*yt*H0x*Hmy - 16d0*xp1&
            &    *yt*H0x*Hmz - 6d0*xp1*yt**2 + 1d0/3d0*xp1*yt**2*Hp0x - 3d0/2d0*xp1&
            &    *yt**2*H0mx + 11d0/12d0*xp1*yt**2*H00x - 24d0*xp1*yt**2*Hmx + 73d0&
            &   /6d0*xp1*yt**2*H0x - 16d0/3d0*z2 - 83d0/2d0*z2*xm2 + 1d0/3d0*z2*xp2&
            &     + 263d0/3d0*z2*xm3 - 18d0*z2*xp3 - 90.*z2*xm4 + 88d0/3d0*z2*xp4&
            &     + 36d0*z2*xm5 - 32d0/3d0*z2*xp5 + 55d0*z2*yt*xm2 - 8d0*z2*yt*xp2&
            &     - 470./3d0*z2*yt*xm3 - 40.*z2*yt*xp3 + 180.*z2*yt*xm4 + 176d0/&
            &    3d0*z2*yt*xp4 - 72d0*z2*yt*xm5 - 64d0/3d0*z2*yt*xp5 + 9d0/2d0*z2*&
            &    yt**2*xm2 - 15d0*z2*yt**2*xp2 + 57d0*z2*yt**2*xm3 - 34d0/3d0*z2*&
            &    yt**2*xp3 - 90.*z2*yt**2*xm4 + 88d0/3d0*z2*yt**2*xp4 + 36d0*z2*&
            &    yt**2*xm5 - 32d0/3d0*z2*yt**2*xp5 + 265d0/12d0*z2*xm1 - 19d0/6d0*z2&
            &    *xm1*yt + 1d0/12d0*z2*xm1*yt**2 - 103d0/12d0*z2*xp1 + 15d0/2d0*z2*&
            &    xp1*yt + 1d0/12d0*z2*xp1*yt**2


       Hqq1 = Lmu2m2**2 * Hqq1_coeff(2,:,:) + Lmu2m2 * Hqq1_coeff(1,:,:) + Hqq1_coeff(0,:,:)
    end if

    Hqq2_coeff = 0d0

    if (n > 1) then
       gamma0 = gammaHqq0 + gammaCuspF(0)*dcmplx(2d0*Hmx-H0x,-pi)*idmat
       gamma1 = gammaHqq1 + gammaCuspF(1)*dcmplx(2d0*Hmx-H0x,-pi)*idmat

       temp = (-gammaCuspF(0)*Hqq1_coeff(2,:,:)) / 8d0
       Hqq2_coeff(4,:,:) = temp + transpose(conjg(temp))
       temp = (-gammaCuspF(0)*Hqq1_coeff(1,:,:) + matmul(gamma0,Hqq1_coeff(2,:,:)) &
            + 3d0*beta(0)*Hqq1_coeff(2,:,:)) / 6d0
       Hqq2_coeff(3,:,:) = temp + transpose(conjg(temp))
       temp = (-gammaCuspF(0)*Hqq1_coeff(0,:,:) + matmul(gamma0,Hqq1_coeff(1,:,:)) &
            - gammaCuspF(1)*Hqq0 + 3d0*beta(0)*Hqq1_coeff(1,:,:)) / 4d0
       Hqq2_coeff(2,:,:) = temp + transpose(conjg(temp))
       temp = (matmul(gamma0,Hqq1_coeff(0,:,:)) + matmul(gamma1,Hqq0) &
            + 3d0*beta(0)*Hqq1_coeff(0,:,:) + 2d0*beta(1)*Hqq0) / 2d0
       Hqq2_coeff(1,:,:) = temp + transpose(conjg(temp))
    end if
  end subroutine Top_Hard_qq

!!!!!!!!!! soft !!!!!!!!!!

  subroutine Top_Soft_qq_PIM(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: w12qq(2,2) = reshape( (/ -4d0, 0d0, 0d0, 1d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w34qq(2,2) = w12qq
    real(8), parameter :: w33qq(2,2) = reshape( (/ 4d0, 0d0, 0d0, 8d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w44qq(2,2) = w33qq
    real(8), parameter :: w13qq(2,2) = reshape( (/ 0d0, -2d0/3d0, -2d0/3d0, -7d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w24qq(2,2) = w13qq
    real(8), parameter :: w14qq(2,2) = reshape( (/ 0d0, 2d0/3d0, 2d0/3d0, -2d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w23qq(2,2) = w14qq
    real(8), parameter :: idmat(2,2) = reshape( (/ 1d0, 0d0, 0d0, 1d0 /), (/ 2, 2 /) )
    real(8) :: I12, I33, I44, I14, I24, I13, I23, I34
    real(8) :: gamma0(2,2), gamma1(2,2), temp(2,2)

    Sqq1 = 0d0

    if (n > 0) then
       I12 = -1d0
       I33 = 0d0
       I44 = I33
       I13 = -.5d0
       I24 = I13
       I14 = -.5d0
       I23 = I14
       I34 = 0d0
       Sqq1(2,:,:) = I12*w12qq*2 + I34*w34qq*2 + I33*w33qq + I44*w44qq &
            + I13*w13qq*2 + I24*w24qq*2 + I14*w14qq*2 + I23*w23qq*2

       I12 = 0d0
       I33 = -2d0
       I44 = I33
       I13 = -(2d0*Hmy + H0x - 2d0*Hmx)
       I24 = I13
       I14 = -(2d0*Hmz + H0x - 2d0*Hmx)
       I23 = I14
       I34 = log(x)*(1d0+b**2)/b
       Sqq1(1,:,:) = I12*w12qq*2 + I34*w34qq*2 + I33*w33qq + I44*w44qq &
            + I13*w13qq*2 + I24*w24qq*2 + I14*w14qq*2 + I23*w23qq*2

       I12 = -z2
       I33 = -2d0*log(x)/b
       I44 = I33
       I13 = -(2d0*Hmy + H0x - 2d0*Hmx)**2/2d0 - z2/2d0 &
            - 2d0*ddilog((1d0-x*yt)/(1d0+x)) - 2d0*ddilog((x-yt)/(1d0+x))
       I24 = I13
       I14 = -(2d0*Hmz + H0x - 2d0*Hmx)**2/2d0 - z2/2d0 &
            - 2d0*ddilog((1d0-x*zu)/(1d0+x)) - 2d0*ddilog((x-zu)/(1d0+x))
       I23 = I14
       I34 = (H0x**2 + 4d0*H0x*Hpx - 4d0*ddilog(x) + 4d0*z2) * (1d0+b**2)/(2d0*b)
       Sqq1(0,:,:) = I12*w12qq*2 + I34*w34qq*2 + I33*w33qq + I44*w44qq &
            + I13*w13qq*2 + I24*w24qq*2 + I14*w14qq*2 + I23*w23qq*2
    end if

    Sqq2 = 0d0

    if (n > 1) then
       gamma0 = gammaHqq0 + 2d0*gamma_phi_q(0)*idmat
       gamma1 = gammaHqq1 + 2d0*gamma_phi_q(1)*idmat

       temp = Sqq1(2,:,:)*gammaCuspF(0)/8d0
       Sqq2(4,:,:) = temp + transpose(temp)
       temp = (Sqq1(1,:,:)*gammaCuspF(0) + matmul(Sqq1(2,:,:),gamma0) - beta(0)*Sqq1(2,:,:)) / 6d0
       Sqq2(3,:,:) = temp + transpose(temp)
       temp = (Sqq1(0,:,:)*gammaCuspF(0) + matmul(Sqq1(1,:,:),gamma0) &
            + Sqq0*gammaCuspF(1) - beta(0)*Sqq1(1,:,:)) / 4d0
       Sqq2(2,:,:) = temp + transpose(temp)
       temp = (matmul(Sqq1(0,:,:),gamma0) + matmul(Sqq0,gamma1) - beta(0)*Sqq1(0,:,:)) / 2d0
       Sqq2(1,:,:) = temp + transpose(temp)
    end if
  end subroutine Top_Soft_qq_PIM


  subroutine Top_Soft_qq_1PI(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: w12qq(2,2) = reshape( (/ -4d0, 0d0, 0d0, 1d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w34qq(2,2) = w12qq
    real(8), parameter :: w33qq(2,2) = reshape( (/ 4d0, 0d0, 0d0, 8d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w44qq(2,2) = w33qq
    real(8), parameter :: w13qq(2,2) = reshape( (/ 0d0, -2d0/3d0, -2d0/3d0, -7d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w24qq(2,2) = w13qq
    real(8), parameter :: w14qq(2,2) = reshape( (/ 0d0, 2d0/3d0, 2d0/3d0, -2d0/9d0 /), (/ 2, 2 /) )
    real(8), parameter :: w23qq(2,2) = w14qq
    real(8), parameter :: idmat(2,2) = reshape( (/ 1d0, 0d0, 0d0, 1d0 /), (/ 2, 2 /) )
    real(8) :: I12p, I33p, I44p, I14p, I24p, I13p, I23p, I34p
    real(8) :: gamma0(2,2), gamma1(2,2), temp(2,2)

    Sqq1 = 0d0

    if (n > 0) then
       I12p = -1d0
       I33p = 0d0
       I44p = 0d0
       I14p = -.5d0
       I24p = I14p
       I13p = -.5d0
       I23p = -.5d0
       I34p = 0d0
       Sqq1(2,:,:) = I12p*w12qq*2 + I34p*w34qq*2 + I33p*w33qq + I44p*w44qq &
            + I13p*w13qq*2 + I24p*w24qq*2 + I14p*w14qq*2 + I23p*w23qq*2

       I12p = -2d0*(2d0*Hmx - H0x - Hmy - Hmz)
       I33p = -2d0
       I44p = -2d0
       I14p = 0d0
       I24p = I14p
       I13p = -2d0*(Hmy - Hmz)
       I23p = -2d0*(Hmz - Hmy)
       I34p = H0x*(1d0+b**2)/b
       Sqq1(1,:,:) = I12p*w12qq*2 + I34p*w34qq*2 + I33p*w33qq + I44p*w44qq &
            + I13p*w13qq*2 + I24p*w24qq*2 + I14p*w14qq*2 + I23p*w23qq*2
       
       I12p = -(2d0*Hmx - H0x - Hmy - Hmz)**2 - 2d0*ddilog(1d0-(1d0+x)**2/x/(1d0+yt)/(1d0+zu)) - z2
       I33p = -2d0*H0x*(1d0+b**2)/b
       I44p = 4d0
       I14p = -z2/2d0
       I24p = I14p
       I13p = -2d0*(Hmy - Hmz)**2 - z2/2d0 - 2d0*ddilog(1d0-(1d0+yt)/(1d0+zu)/x) - 2d0*ddilog(1d0-(1d0+yt)*x/(1d0+zu))
       I23p = -2d0*(Hmz - Hmy)**2 - z2/2d0 - 2d0*ddilog(1d0-(1d0+zu)/(1d0+yt)/x) - 2d0*ddilog(1d0-(1d0+zu)*x/(1d0+yt))
       I34p = (H0x**2 - 2d0*H0x*(Hmx-Hpx) - ddilog(x**2) + z2) * (1d0+b**2)/b
       Sqq1(0,:,:) = I12p*w12qq*2 + I34p*w34qq*2 + I33p*w33qq + I44p*w44qq &
            + I13p*w13qq*2 + I24p*w24qq*2 + I14p*w14qq*2 + I23p*w23qq*2
    end if

    Sqq2 = 0d0

    if (n > 1) then
       gamma0 = gammaHqq0 + (gammaCuspF(0)*(2d0*Hmx-H0x-Hmy-Hmz) + 2d0*gamma_phi_q(0)) * idmat
       gamma1 = gammaHqq1 + (gammaCuspF(1)*(2d0*Hmx-H0x-Hmy-Hmz) + 2d0*gamma_phi_q(1)) * idmat

       temp = Sqq1(2,:,:)*gammaCuspF(0)/8d0
       Sqq2(4,:,:) = temp + transpose(temp)
       temp = (Sqq1(1,:,:)*gammaCuspF(0) + matmul(Sqq1(2,:,:),gamma0) - beta(0)*Sqq1(2,:,:)) / 6d0
       Sqq2(3,:,:) = temp + transpose(temp)
       temp = (Sqq1(0,:,:)*gammaCuspF(0) + matmul(Sqq1(1,:,:),gamma0) &
            + Sqq0*gammaCuspF(1) - beta(0)*Sqq1(1,:,:)) / 4d0
       Sqq2(2,:,:) = temp + transpose(temp)
       temp = (matmul(Sqq1(0,:,:),gamma0) + matmul(Sqq0,gamma1) - beta(0)*Sqq1(0,:,:)) / 2d0
       Sqq2(1,:,:) = temp + transpose(temp)
    end if
  end subroutine Top_Soft_qq_1PI

!!!!!!!!!! gamma !!!!!!!!!!

  subroutine gamma_matrix_qq(costh)
    implicit none
    real(8), intent(in) :: costh
    real(8), parameter :: mat1(2,2) = reshape( (/ 1d0, 0d0, 0d0, 1d0 /), (/ 2, 2 /) )
    real(8), parameter :: mat2(2,2) = reshape( (/ 0d0, 0d0, 0d0, 1d0 /), (/ 2, 2 /) )
    real(8), parameter :: mat3(2,2) = reshape( (/ 0d0, 1d0, 2d0/9d0, -1d0/3d0 /), (/ 2, 2 /) )
    real(8), parameter :: mat4(2,2) = reshape( (/ 0d0, -3d0, 2d0/3d0, 0d0 /), (/ 2, 2 /) )
    real(8) :: xt, xm
    real(8) :: ltu
    complex(8) :: ltsm

    xm = rho/4d0
    xt = (1d0-b*costh)/2d0
    
    ltsm = log(xt**2/xm) + pi*cI
    ltu = log(xt/(1d0-xt))

    gammaHqq0 = ((4d0/3d0)*gammaCusp34(0) + 2d0*gamma_q(0) + 2d0*gamma_hq(0)) * mat1 &
         + (3d0/2d0) * (gammaCusp(0)*ltsm - gammaCusp34(0)) * mat2 &
         + gammaCusp(0) * 2d0*ltu * mat3
    gammaHqq1 = ((4d0/3d0)*gammaCusp34(1) + 2d0*gamma_q(1) + 2d0*gamma_hq(1)) * mat1 &
         + (3d0/2d0) * (gammaCusp(1)*ltsm - gammaCusp34(1)) * mat2 &
         + gammaCusp(1) * 2d0*ltu * mat3 &
         + 4d0 * 2d0*ltu * g34 * mat4
  end subroutine gamma_matrix_qq

end module TopHSqq
