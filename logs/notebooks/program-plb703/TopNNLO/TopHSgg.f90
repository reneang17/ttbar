module TopHSgg
  use TopVar
  use IntVar
  implicit none

  complex(8) :: Hgg1_coeff(0:2,3,3), Hgg2_coeff(1:4,3,3)

contains

!!!!!!!!!! hard !!!!!!!!!!

  subroutine Top_Hard_gg(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: idmat(3,3) = reshape( (/ 1d0, 0d0, 0d0, 0d0, 1d0, 0d0, 0d0, 0d0, 1d0 /), (/ 3, 3 /) )
    complex(8) :: gamma0(3,3), gamma1(3,3), temp(3,3)
    integer :: i

    Hgg0(1,1) = &
         &  - 1d0/9d0 + 1d0/18d0*x**(-1)*yt1**(-1) + 1d0/18d0*x**(-1)*zu1**(-1)&
         &     - 2d0/9d0*yt1**(-2) + 1d0/3d0*yt1**(-1) + 4d0/9d0*yt1**(-1)*xp2 - &
         &    2d0/9d0*zu1**(-2) + 1d0/3d0*zu1**(-1) + 4d0/9d0*zu1**(-1)*xp2 - 4d0/&
         &    9d0*xp1*yt1**(-1) - 4d0/9d0*xp1*zu1**(-1) + 1d0/18d0*x*yt1**(-1)&
         &     + 1d0/18d0*x*zu1**(-1)

    Hgg0(1,2) = &
         &  - 1d0/3d0 + 1d0/6d0*x**(-1)*yt1**(-1) - 1d0/6d0*x**(-1)*zu1**(-1) - 2d0&
         &   /3d0*yt1**(-2) + yt1**(-1) + 2d0/3d0*zu1**(-2) - zu1**(-1) - 2d0/&
         &    3d0*xp2 - 2d0/3d0*yt*xp2 + 2d0/3d0*xp1 + 2d0/3d0*xp1*yt + 1d0/6d0*x*&
         &    yt1**(-1) - 1d0/6d0*x*zu1**(-1)

    Hgg0(1,3) = &
         &  - 1d0/3d0 + 1d0/6d0*x**(-1)*yt1**(-1) + 1d0/6d0*x**(-1)*zu1**(-1) - 2d0&
         &   /3d0*yt1**(-2) + yt1**(-1) + 4d0/3d0*yt1**(-1)*xp2 - 2d0/3d0*&
         &    zu1**(-2) + zu1**(-1) + 4d0/3d0*zu1**(-1)*xp2 - 4d0/3d0*xp1*&
         &    yt1**(-1) - 4d0/3d0*xp1*zu1**(-1) + 1d0/6d0*x*yt1**(-1) + 1d0/6d0*x&
         &    *zu1**(-1)

    Hgg0(2,1) = conjg(Hgg0(1,2))

    Hgg0(2,2) = &
         &  - 3d0 + 1d0/2d0*x**(-1)*yt1**(-1) + 1d0/2d0*x**(-1)*zu1**(-1) - 2d0*&
         &    yt1**(-2) + 3d0*yt1**(-1) - 4d0*yt1**(-1)*xp2 - 2d0*zu1**(-2) + &
         &    3d0*zu1**(-1) - 4d0*zu1**(-1)*xp2 + 8d0*xp3 - 4d0*xp4 - 12d0*yt*&
         &    xp2 + 16d0*yt*xp3 - 8d0*yt*xp4 - 4d0*yt**2*xp2 + 8d0*yt**2*xp3 - &
         &    4d0*yt**2*xp4 + 4d0*xp1*yt1**(-1) + 4d0*xp1*zu1**(-1) - 4d0*xp1&
         &     + 4d0*xp1*yt + 1d0/2d0*x*yt1**(-1) + 1d0/2d0*x*zu1**(-1)

    Hgg0(2,3) = &
         &  - 1d0 + 1d0/2d0*x**(-1)*yt1**(-1) - 1d0/2d0*x**(-1)*zu1**(-1) - 2d0*&
         &    yt1**(-2) + 3d0*yt1**(-1) + 2d0*zu1**(-2) - 3d0*zu1**(-1) - 2d0*&
         &    xp2 - 2d0*yt*xp2 + 2d0*xp1 + 2d0*xp1*yt + 1d0/2d0*x*yt1**(-1) - 1d0/&
         &    2d0*x*zu1**(-1)

    Hgg0(3,1) = conjg(Hgg0(1,3))

    Hgg0(3,2) = conjg(Hgg0(2,3))

    Hgg0(3,3) = &
         &  - 1d0 + 1d0/2d0*x**(-1)*yt1**(-1) + 1d0/2d0*x**(-1)*zu1**(-1) - 2d0*&
         &    yt1**(-2) + 3d0*yt1**(-1) + 4d0*yt1**(-1)*xp2 - 2d0*zu1**(-2) + &
         &    3d0*zu1**(-1) + 4d0*zu1**(-1)*xp2 - 4d0*xp1*yt1**(-1) - 4d0*xp1*&
         &    zu1**(-1) + 1d0/2d0*x*yt1**(-1) + 1d0/2d0*x*zu1**(-1)

    Hgg1 = 0d0
    Hgg1_coeff = 0d0

    if (n > 0) then

       Hgg1_coeff(2,1,1) = ( 2d0/3d0 - 1d0/3d0*&
            &    x**(-1)*yt1**(-1) - 1d0/3d0*x**(-1)*zu1**(-1) + 4d0/3d0*yt1**(-2)&
            &     - 2d0*yt1**(-1) - 8d0/3d0*yt1**(-1)*xp2 + 4d0/3d0*zu1**(-2) - 2d0*&
            &    zu1**(-1) - 8d0/3d0*zu1**(-1)*xp2 + 8d0/3d0*xp1*yt1**(-1) + 8d0/3d0&
            &    *xp1*zu1**(-1) - 1d0/3d0*x*yt1**(-1) - 1d0/3d0*x*zu1**(-1) )
       Hgg1_coeff(1,1,1) = ( 16d0/27d0 - 8d0/27d0*x**(-1)*yt1**(-1) + 4d0/3d0*x**(-1)&
            &    *yt1**(-1)*Hmx + 2d0/3d0*x**(-1)*yt1**(-1)*Hmy - 2d0/3d0*x**(-1)*&
            &    yt1**(-1)*Hmz - 26d0/27d0*x**(-1)*yt1**(-1)*H0x - 8d0/27d0*&
            &    x**(-1)*zu1**(-1) + 4d0/3d0*x**(-1)*zu1**(-1)*Hmx - 2d0/3d0*&
            &    x**(-1)*zu1**(-1)*Hmy + 2d0/3d0*x**(-1)*zu1**(-1)*Hmz - 26d0/27d0&
            &    *x**(-1)*zu1**(-1)*H0x + 32d0/27d0*yt1**(-2) - 16d0/3d0*yt1**(-2)&
            &    *Hmx - 8d0/3d0*yt1**(-2)*Hmy + 8d0/3d0*yt1**(-2)*Hmz + 40./27d0*&
            &    yt1**(-2)*H0x - 16d0/9d0*yt1**(-1) - 64d0/27d0*yt1**(-1)*xp2 + 8d0&
            &    *yt1**(-1)*Hmx + 32d0/3d0*yt1**(-1)*Hmx*xp2 + 4d0*yt1**(-1)*Hmy&
            &     - 4d0*yt1**(-1)*Hmz - 20./9d0*yt1**(-1)*H0x - 16d0/9d0*yt1**(-1)&
            &    *H0x*xp2 - 64d0/27d0*yt1**(-1)*H0x*xp3 + 32d0/27d0*zu1**(-2) - 16d0&
            &   /3d0*zu1**(-2)*Hmx + 8d0/3d0*zu1**(-2)*Hmy - 8d0/3d0*zu1**(-2)*Hmz&
            &     + 40./27d0*zu1**(-2)*H0x - 16d0/9d0*zu1**(-1) - 64d0/27d0*&
            &    zu1**(-1)*xp2 + 8d0*zu1**(-1)*Hmx + 32d0/3d0*zu1**(-1)*Hmx*xp2&
            &     - 4d0*zu1**(-1)*Hmy + 4d0*zu1**(-1)*Hmz - 20./9d0*zu1**(-1)*H0x&
            &     - 16d0/9d0*zu1**(-1)*H0x*xp2 - 64d0/27d0*zu1**(-1)*H0x*xp3 - 8d0/&
            &    3d0*Hmx - 4d0/3d0*Hmy - 8d0/3d0*Hmy*xp2 + 4d0/3d0*Hmz + 8d0/3d0*Hmz*&
            &    xp2 + 20./27d0*H0x - 8d0/3d0*yt*Hmy*xp2 + 8d0/3d0*yt*Hmz*xp2 + 32d0/&
            &    27d0*xm1*yt1**(-2)*H0x - 16d0/9d0*xm1*yt1**(-1)*H0x + 32d0/27d0*&
            &    xm1*zu1**(-2)*H0x - 16d0/9d0*xm1*zu1**(-1)*H0x + 16d0/27d0*xm1*&
            &    H0x + 32d0/27d0*xp1*yt1**(-2)*H0x + 64d0/27d0*xp1*yt1**(-1) - 32d0/&
            &    3d0*xp1*yt1**(-1)*Hmx + 64d0/27d0*xp1*yt1**(-1)*H0x + 32d0/27d0*&
            &    xp1*zu1**(-2)*H0x + 64d0/27d0*xp1*zu1**(-1) - 32d0/3d0*xp1*&
            &    zu1**(-1)*Hmx + 64d0/27d0*xp1*zu1**(-1)*H0x + 8d0/3d0*xp1*Hmy - 8d0&
            &   /3d0*xp1*Hmz + 16d0/27d0*xp1*H0x + 8d0/3d0*xp1*yt*Hmy - 8d0/3d0*xp1*&
            &    yt*Hmz - 8d0/27d0*x*yt1**(-1) + 4d0/3d0*x*yt1**(-1)*Hmx + 2d0/3d0*x&
            &    *yt1**(-1)*Hmy - 2d0/3d0*x*yt1**(-1)*Hmz - 10./27d0*x*yt1**(-1)*&
            &    H0x - 8d0/27d0*x*zu1**(-1) + 4d0/3d0*x*zu1**(-1)*Hmx - 2d0/3d0*x*&
            &    zu1**(-1)*Hmy + 2d0/3d0*x*zu1**(-1)*Hmz - 10./27d0*x*zu1**(-1)*&
            &    H0x )
       Hgg1_coeff(0,1,1) = + 8d0/9d0 - 4d0/27d0*x**(-1)*yt**(-1)&
            &    *Hmy - 2d0/27d0*x**(-1)*yt1**(-3)*H0my + 2d0/27d0*x**(-1)*&
            &    yt1**(-2) - 2d0/27d0*x**(-1)*yt1**(-2)*Hmy - 4d0/9d0*x**(-1)*&
            &    yt1**(-1) - 16d0/27d0*x**(-1)*yt1**(-1)*Hp0x - 2d0/3d0*x**(-1)*&
            &    yt1**(-1)*Hmmy + 8d0/27d0*x**(-1)*yt1**(-1)*H0my - 4d0*x**(-1)*&
            &    yt1**(-1)*Hmmx + 10./9d0*x**(-1)*yt1**(-1)*Hm0x - 2d0*x**(-1)*&
            &    yt1**(-1)*Hmmz + 34d0/27d0*x**(-1)*yt1**(-1)*H0mz + 8d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0mx - 20./27d0*x**(-1)*yt1**(-1)*H00x + 16d0/&
            &    27d0*x**(-1)*yt1**(-1)*Hmy - 4d0/3d0*x**(-1)*yt1**(-1)*Hmy*Hmx&
            &     + 8d0/3d0*x**(-1)*yt1**(-1)*Hmz*Hmx + 2d0/3d0*x**(-1)*yt1**(-1)*&
            &    Hmz*Hmy + 26d0/27d0*x**(-1)*yt1**(-1)*H0x*Hmy - 20./27d0*x**(-1)&
            &    *yt1**(-1)*H0x*Hmz - 2d0/27d0*x**(-1)*zu1**(-3)*H0mz + 2d0/27d0*&
            &    x**(-1)*zu1**(-2) - 2d0/27d0*x**(-1)*zu1**(-2)*Hmz - 4d0/9d0*&
            &    x**(-1)*zu1**(-1) - 16d0/27d0*x**(-1)*zu1**(-1)*Hp0x - 2d0*&
            &    x**(-1)*zu1**(-1)*Hmmy + 34d0/27d0*x**(-1)*zu1**(-1)*H0my - 4d0*&
            &    x**(-1)*zu1**(-1)*Hmmx + 10./9d0*x**(-1)*zu1**(-1)*Hm0x - 2d0/3d0&
            &    *x**(-1)*zu1**(-1)*Hmmz + 8d0/27d0*x**(-1)*zu1**(-1)*H0mz + 8d0/&
            &    3d0*x**(-1)*zu1**(-1)*H0mx - 20./27d0*x**(-1)*zu1**(-1)*H00x + &
            &    8d0/3d0*x**(-1)*zu1**(-1)*Hmy*Hmx + 16d0/27d0*x**(-1)*zu1**(-1)*&
            &    Hmz - 4d0/3d0*x**(-1)*zu1**(-1)*Hmz*Hmx + 2d0/3d0*x**(-1)*&
            &    zu1**(-1)*Hmz*Hmy - 20./27d0*x**(-1)*zu1**(-1)*H0x*Hmy + 26d0/&
            &    27d0*x**(-1)*zu1**(-1)*H0x*Hmz - 8d0/27d0*yt**(-2)*zu1**(-1)*Hmy&
            &     - 4d0/27d0*yt**(-2)*Hmy + 8d0/27d0*yt**(-1)*zu1**(-1) + 28d0/27d0*&
            &    yt**(-1)*zu1**(-1)*Hmy + 4d0/27d0*yt**(-1) + 10./27d0*yt**(-1)*&
            &    Hmy - 8d0/27d0*zu**(-2)*yt1**(-1)*Hmz - 4d0/27d0*zu**(-2)*Hmz + 8d0&
            &   /27d0*zu**(-1)*yt1**(-1) + 28d0/27d0*zu**(-1)*yt1**(-1)*Hmz + 4d0/&
            &    27d0*zu**(-1) + 10./27d0*zu**(-1)*Hmz - 4d0/27d0*yt1**(-3)*H0my&
            &     + 68d0/27d0*yt1**(-2) - 64d0/27d0*yt1**(-2)*Hp0x - 2d0/27d0*&
            &    yt1**(-2)*H0my - 64d0/27d0*yt1**(-2)*Hm0x - 68d0/27d0*yt1**(-2)*&
            &    Hmy + 32d0/3d0*yt1**(-2)*Hmy*Hmx - 16d0/3d0*yt1**(-2)*Hmz*Hmy - &
            &    80./27d0*yt1**(-2)*H0x*Hmy - 32d0/9d0*yt1**(-1) - 128d0/27d0*&
            &    yt1**(-1)*xp2 + 32d0/9d0*yt1**(-1)*Hp0x + 64d0/9d0*yt1**(-1)*Hp0x&
            &    *xp2 - 128d0/27d0*yt1**(-1)*Hp0x*xp3 - 4d0*yt1**(-1)*Hmmy + 16d0/&
            &    3d0*yt1**(-1)*Hmmy*xp2 + 2d0*yt1**(-1)*H0my - 2d0/9d0*yt1**(-1)*&
            &    H0my*xp2 - 40./3d0*yt1**(-1)*Hmmx + 292d0/27d0*yt1**(-1)*Hm0x + &
            &    64d0/9d0*yt1**(-1)*Hm0x*xp2 - 128d0/27d0*yt1**(-1)*Hm0x*xp3 - 4d0/&
            &    3d0*yt1**(-1)*Hmmz + 16d0/3d0*yt1**(-1)*Hmmz*xp2 + 22d0/9d0*&
            &    yt1**(-1)*H0mz - 2d0/9d0*yt1**(-1)*H0mz*xp2 + 20./3d0*yt1**(-1)*&
            &    H0mx + 16d0*yt1**(-1)*H0mx*xm2 - 32d0/3d0*yt1**(-1)*H0mx*xm3 - &
            &    74d0/27d0*yt1**(-1)*H00x - 8d0*yt1**(-1)*H00x*xm2 + 32d0/27d0*&
            &    yt1**(-1)*H00x*xp2 + 16d0/3d0*yt1**(-1)*H00x*xm3 - 8d0/3d0*&
            &    yt1**(-1)*Hmx - 32d0/3d0*yt1**(-1)*Hmx*xm2 + 62d0/27d0*yt1**(-1)*&
            &    Hmy + 64d0/27d0*yt1**(-1)*Hmy*xp2 - 8d0*yt1**(-1)*Hmy*Hmx - 32d0/&
            &    3d0*yt1**(-1)*Hmy*Hmx*xp2 + 34d0/27d0*yt1**(-1)*Hmz + 64d0/27d0*&
            &    yt1**(-1)*Hmz*xp2 + 16d0/3d0*yt1**(-1)*Hmz*Hmx - 32d0/3d0*&
            &    yt1**(-1)*Hmz*Hmx*xp2 + 4d0*yt1**(-1)*Hmz*Hmy + 16d0/3d0*&
            &    yt1**(-1)*Hmz*Hmy*xp2 + 52d0/27d0*yt1**(-1)*H0x + 16d0/3d0*&
            &    yt1**(-1)*H0x*xm2 + 20./9d0*yt1**(-1)*H0x*Hmy + 16d0/9d0*&
            &    yt1**(-1)*H0x*Hmy*xp2 + 64d0/27d0*yt1**(-1)*H0x*Hmy*xp3 - 136d0/&
            &    27d0*yt1**(-1)*H0x*Hmz + 16d0/9d0*yt1**(-1)*H0x*Hmz*xp2 + 64d0/27d0&
            &    *yt1**(-1)*H0x*Hmz*xp3 - 4d0/27d0*zu1**(-3)*H0mz + 68d0/27d0*&
            &    zu1**(-2) - 64d0/27d0*zu1**(-2)*Hp0x - 64d0/27d0*zu1**(-2)*Hm0x&
            &     - 2d0/27d0*zu1**(-2)*H0mz - 68d0/27d0*zu1**(-2)*Hmz + 32d0/3d0*&
            &    zu1**(-2)*Hmz*Hmx - 16d0/3d0*zu1**(-2)*Hmz*Hmy - 80./27d0*&
            &    zu1**(-2)*H0x*Hmz - 32d0/9d0*zu1**(-1) - 128d0/27d0*zu1**(-1)*xp2&
            &     + 32d0/9d0*zu1**(-1)*Hp0x + 64d0/9d0*zu1**(-1)*Hp0x*xp2 - 128d0/&
            &    27d0*zu1**(-1)*Hp0x*xp3 - 4d0/3d0*zu1**(-1)*Hmmy + 16d0/3d0*&
            &    zu1**(-1)*Hmmy*xp2 + 22d0/9d0*zu1**(-1)*H0my - 2d0/9d0*zu1**(-1)*&
            &    H0my*xp2 - 40./3d0*zu1**(-1)*Hmmx + 292d0/27d0*zu1**(-1)*Hm0x + &
            &    64d0/9d0*zu1**(-1)*Hm0x*xp2 - 128d0/27d0*zu1**(-1)*Hm0x*xp3 - 4d0*&
            &    zu1**(-1)*Hmmz + 16d0/3d0*zu1**(-1)*Hmmz*xp2 + 2d0*zu1**(-1)*&
            &    H0mz - 2d0/9d0*zu1**(-1)*H0mz*xp2 + 20./3d0*zu1**(-1)*H0mx + 16d0&
            &    *zu1**(-1)*H0mx*xm2 - 32d0/3d0*zu1**(-1)*H0mx*xm3 - 74d0/27d0*&
            &    zu1**(-1)*H00x - 8d0*zu1**(-1)*H00x*xm2 + 32d0/27d0*zu1**(-1)*&
            &    H00x*xp2 + 16d0/3d0*zu1**(-1)*H00x*xm3 - 8d0/3d0*zu1**(-1)*Hmx - &
            &    32d0/3d0*zu1**(-1)*Hmx*xm2 + 34d0/27d0*zu1**(-1)*Hmy + 64d0/27d0*&
            &    zu1**(-1)*Hmy*xp2 + 16d0/3d0*zu1**(-1)*Hmy*Hmx - 32d0/3d0*&
            &    zu1**(-1)*Hmy*Hmx*xp2 + 62d0/27d0*zu1**(-1)*Hmz + 64d0/27d0*&
            &    zu1**(-1)*Hmz*xp2 - 8d0*zu1**(-1)*Hmz*Hmx - 32d0/3d0*zu1**(-1)*&
            &    Hmz*Hmx*xp2 + 4d0*zu1**(-1)*Hmz*Hmy + 16d0/3d0*zu1**(-1)*Hmz*Hmy&
            &    *xp2 + 52d0/27d0*zu1**(-1)*H0x + 16d0/3d0*zu1**(-1)*H0x*xm2 - 136d0&
            &   /27d0*zu1**(-1)*H0x*Hmy + 16d0/9d0*zu1**(-1)*H0x*Hmy*xp2 + 64d0/&
            &    27d0*zu1**(-1)*H0x*Hmy*xp3 + 20./9d0*zu1**(-1)*H0x*Hmz + 16d0/9d0&
            &    *zu1**(-1)*H0x*Hmz*xp2 + 64d0/27d0*zu1**(-1)*H0x*Hmz*xp3 - 32d0/&
            &    27d0*Hp0x + 4d0*Hmmy - 44d0/27d0*H0my + 32d0/3d0*Hmmx - 160./27d0*&
            &    Hm0x + 4d0*Hmmz - 44d0/27d0*H0mz - 8d0/3d0*H0mx - 16d0*H0mx*xm2 + &
            &    32d0/3d0*H0mx*xm3 + 20./27d0*H00x + 8d0*H00x*xm2 - 16d0/3d0*H00x*&
            &    xm3 + 8d0/3d0*Hmx + 32d0/3d0*Hmx*xm2 - 22d0/27d0*Hmy + 16d0/3d0*Hmy*&
            &    Hmx*xp2 - 26d0/27d0*Hmz - 16d0/3d0*Hmz*Hmx - 16d0/3d0*Hmz*Hmx*xp2&
            &     - 4d0/3d0*Hmz*Hmy - 52d0/27d0*H0x - 16d0/3d0*H0x*xm2 + 8d0/27d0*H0x*&
            &    Hmy - 8d0/3d0*H0x*Hmy*xp2 + 80./27d0*H0x*Hmz + 8d0/3d0*H0x*Hmz*xp2&
            &     - 4d0/27d0*yt*zu**(-1)*Hmz + 16d0/3d0*yt*Hmy*Hmx*xp2 - 16d0/3d0*yt&
            &    *Hmz*Hmx*xp2 - 8d0/3d0*yt*H0x*Hmy*xp2 + 8d0/3d0*yt*H0x*Hmz*xp2 + &
            &    64d0/27d0*xm1*yt1**(-2)*Hp0x + 64d0/27d0*xm1*yt1**(-2)*Hm0x - 64d0/&
            &    27d0*xm1*yt1**(-2)*H0x*Hmy - 32d0/9d0*xm1*yt1**(-1)*Hp0x - 32d0/9d0&
            &    *xm1*yt1**(-1)*Hm0x - 8d0/3d0*xm1*yt1**(-1)*H0mx + 4d0/3d0*xm1*&
            &    yt1**(-1)*H00x + 32d0/3d0*xm1*yt1**(-1)*Hmx - 176d0/27d0*xm1*&
            &    yt1**(-1)*H0x + 16d0/9d0*xm1*yt1**(-1)*H0x*Hmy + 16d0/9d0*xm1*&
            &    yt1**(-1)*H0x*Hmz + 64d0/27d0*xm1*zu1**(-2)*Hp0x + 64d0/27d0*xm1*&
            &    zu1**(-2)*Hm0x - 64d0/27d0*xm1*zu1**(-2)*H0x*Hmz - 32d0/9d0*xm1*&
            &    zu1**(-1)*Hp0x - 32d0/9d0*xm1*zu1**(-1)*Hm0x - 8d0/3d0*xm1*&
            &    zu1**(-1)*H0mx + 4d0/3d0*xm1*zu1**(-1)*H00x + 32d0/3d0*xm1*&
            &    zu1**(-1)*Hmx - 176d0/27d0*xm1*zu1**(-1)*H0x + 16d0/9d0*xm1*&
            &    zu1**(-1)*H0x*Hmy + 16d0/9d0*xm1*zu1**(-1)*H0x*Hmz + 32d0/27d0*&
            &    xm1*Hp0x + 32d0/27d0*xm1*Hm0x + 8d0/3d0*xm1*H0mx - 4d0/3d0*xm1*H00x&
            &     - 32d0/3d0*xm1*Hmx + 176d0/27d0*xm1*H0x - 16d0/27d0*xm1*H0x*Hmy - &
            &    16d0/27d0*xm1*H0x*Hmz + 64d0/27d0*xp1*yt1**(-2)*Hp0x + 64d0/27d0*&
            &    xp1*yt1**(-2)*Hm0x - 64d0/27d0*xp1*yt1**(-2)*H0x*Hmy + 128d0/27d0&
            &    *xp1*yt1**(-1) - 160./27d0*xp1*yt1**(-1)*Hp0x - 16d0/3d0*xp1*&
            &    yt1**(-1)*Hmmy + 2d0/9d0*xp1*yt1**(-1)*H0my - 64d0/9d0*xp1*&
            &    yt1**(-1)*Hm0x - 16d0/3d0*xp1*yt1**(-1)*Hmmz + 2d0/9d0*xp1*&
            &    yt1**(-1)*H0mz - 8d0/3d0*xp1*yt1**(-1)*H0mx + 20./27d0*xp1*&
            &    yt1**(-1)*H00x - 64d0/27d0*xp1*yt1**(-1)*Hmy + 32d0/3d0*xp1*&
            &    yt1**(-1)*Hmy*Hmx - 64d0/27d0*xp1*yt1**(-1)*Hmz + 32d0/3d0*xp1*&
            &    yt1**(-1)*Hmz*Hmx - 16d0/3d0*xp1*yt1**(-1)*Hmz*Hmy - 64d0/27d0*&
            &    xp1*yt1**(-1)*H0x*Hmy - 32d0/27d0*xp1*yt1**(-1)*H0x*Hmz + 64d0/&
            &    27d0*xp1*zu1**(-2)*Hp0x + 64d0/27d0*xp1*zu1**(-2)*Hm0x - 64d0/27d0&
            &    *xp1*zu1**(-2)*H0x*Hmz + 128d0/27d0*xp1*zu1**(-1) - 160./27d0*&
            &    xp1*zu1**(-1)*Hp0x - 16d0/3d0*xp1*zu1**(-1)*Hmmy + 2d0/9d0*xp1*&
            &    zu1**(-1)*H0my - 64d0/9d0*xp1*zu1**(-1)*Hm0x - 16d0/3d0*xp1*&
            &    zu1**(-1)*Hmmz + 2d0/9d0*xp1*zu1**(-1)*H0mz - 8d0/3d0*xp1*&
            &    zu1**(-1)*H0mx + 20./27d0*xp1*zu1**(-1)*H00x - 64d0/27d0*xp1*&
            &    zu1**(-1)*Hmy + 32d0/3d0*xp1*zu1**(-1)*Hmy*Hmx - 64d0/27d0*xp1*&
            &    zu1**(-1)*Hmz + 32d0/3d0*xp1*zu1**(-1)*Hmz*Hmx - 16d0/3d0*xp1*&
            &    zu1**(-1)*Hmz*Hmy - 32d0/27d0*xp1*zu1**(-1)*H0x*Hmy - 64d0/27d0*&
            &    xp1*zu1**(-1)*H0x*Hmz + 32d0/27d0*xp1*Hp0x - 8d0/3d0*xp1*H0mx + &
            &    52d0/27d0*xp1*H00x - 16d0/3d0*xp1*Hmy*Hmx + 16d0/3d0*xp1*Hmz*Hmx + &
            &    8d0/3d0*xp1*H0x*Hmy - 8d0/3d0*xp1*H0x*Hmz - 16d0/3d0*xp1*yt*Hmy*Hmx&
            &     + 16d0/3d0*xp1*yt*Hmz*Hmx + 8d0/3d0*xp1*yt*H0x*Hmy - 8d0/3d0*xp1*&
            &    yt*H0x*Hmz - 4d0/27d0*x*yt**(-1)*Hmy - 2d0/27d0*x*yt1**(-3)*H0my&
            &     + 2d0/27d0*x*yt1**(-2) - 2d0/27d0*x*yt1**(-2)*Hmy - 4d0/9d0*x*&
            &    yt1**(-1) + 16d0/27d0*x*yt1**(-1)*Hp0x - 2d0/3d0*x*yt1**(-1)*Hmmy&
            &     + 8d0/27d0*x*yt1**(-1)*H0my - 4d0*x*yt1**(-1)*Hmmx + 26d0/9d0*x*&
            &    yt1**(-1)*Hm0x - 2d0*x*yt1**(-1)*Hmmz + 34d0/27d0*x*yt1**(-1)*&
            &    H0mz + 4d0/3d0*x*yt1**(-1)*H0mx - 10./27d0*x*yt1**(-1)*H00x + 16d0&
            &   /27d0*x*yt1**(-1)*Hmy - 4d0/3d0*x*yt1**(-1)*Hmy*Hmx + 8d0/3d0*x*&
            &    yt1**(-1)*Hmz*Hmx + 2d0/3d0*x*yt1**(-1)*Hmz*Hmy + 10./27d0*x*&
            &    yt1**(-1)*H0x*Hmy - 52d0/27d0*x*yt1**(-1)*H0x*Hmz - 2d0/27d0*x*&
            &    zu1**(-3)*H0mz + 2d0/27d0*x*zu1**(-2) - 2d0/27d0*x*zu1**(-2)*Hmz&
            &     - 4d0/9d0*x*zu1**(-1) + 16d0/27d0*x*zu1**(-1)*Hp0x - 2d0*x*&
            &    zu1**(-1)*Hmmy + 34d0/27d0*x*zu1**(-1)*H0my - 4d0*x*zu1**(-1)*&
            &    Hmmx + 26d0/9d0*x*zu1**(-1)*Hm0x - 2d0/3d0*x*zu1**(-1)*Hmmz + 8d0/&
            &    27d0*x*zu1**(-1)*H0mz + 4d0/3d0*x*zu1**(-1)*H0mx - 10./27d0*x*&
            &    zu1**(-1)*H00x + 8d0/3d0*x*zu1**(-1)*Hmy*Hmx + 16d0/27d0*x*&
            &    zu1**(-1)*Hmz - 4d0/3d0*x*zu1**(-1)*Hmz*Hmx + 2d0/3d0*x*zu1**(-1)&
            &    *Hmz*Hmy - 52d0/27d0*x*zu1**(-1)*H0x*Hmy + 10./27d0*x*zu1**(-1)*&
            &    H0x*Hmz - 2d0/27d0*z2*x**(-1)*yt1**(-3) - 1d0/27d0*z2*x**(-1)*&
            &    yt1**(-1) - 2d0/27d0*z2*x**(-1)*zu1**(-3) - 1d0/27d0*z2*x**(-1)*&
            &    zu1**(-1) - 4d0/27d0*z2*yt1**(-3) + 58d0/27d0*z2*yt1**(-2) + 20./&
            &    27d0*z2*yt1**(-1) - 8d0*z2*yt1**(-1)*xm2 + 4d0*z2*yt1**(-1)*xp2&
            &     + 16d0/3d0*z2*yt1**(-1)*xm3 + 64d0/9d0*z2*yt1**(-1)*xp3 - 4d0/27d0&
            &    *z2*zu1**(-3) + 58d0/27d0*z2*zu1**(-2) + 20./27d0*z2*zu1**(-1)&
            &     - 8d0*z2*zu1**(-1)*xm2 + 4d0*z2*zu1**(-1)*xp2 + 16d0/3d0*z2*&
            &    zu1**(-1)*xm3 + 64d0/9d0*z2*zu1**(-1)*xp3 + 46d0/27d0*z2 + 8d0*z2*&
            &    xm2 - 16d0/3d0*z2*xm3 - 32d0/9d0*z2*xm1*yt1**(-2) + 20./3d0*z2*xm1&
            &    *yt1**(-1) - 32d0/9d0*z2*xm1*zu1**(-2) + 20./3d0*z2*xm1*&
            &    zu1**(-1) - 28d0/9d0*z2*xm1 - 32d0/9d0*z2*xp1*yt1**(-2) - 136d0/27d0&
            &    *z2*xp1*yt1**(-1) - 32d0/9d0*z2*xp1*zu1**(-2) - 136d0/27d0*z2*xp1&
            &    *zu1**(-1) - 28d0/27d0*z2*xp1 - 2d0/27d0*z2*x*yt1**(-3) - 23d0/27d0&
            &    *z2*x*yt1**(-1) - 2d0/27d0*z2*x*zu1**(-3) - 23d0/27d0*z2*x*&
            &    zu1**(-1)


       Hgg1_coeff(2,1,2) = ( 2d0 - x**(-1)*&
            &    yt1**(-1) + x**(-1)*zu1**(-1) + 4d0*yt1**(-2) - 6d0*yt1**(-1)&
            &     - 4d0*zu1**(-2) + 6d0*zu1**(-1) + 4d0*xp2 + 4d0*yt*xp2 - 4d0*xp1&
            &     - 4d0*xp1*yt - x*yt1**(-1) + x*zu1**(-1) )
       Hgg1_coeff(1,1,2) = ( 16d0/9d0 - 8d0/9d0*x**(-1)*yt1**(-1) + 3d0*x**(-1)*&
            &    yt1**(-1)*Hmx + 2d0*x**(-1)*yt1**(-1)*Hmy - x**(-1)*yt1**(-1)*&
            &    Hmz - 17d0/9d0*x**(-1)*yt1**(-1)*H0x + 8d0/9d0*x**(-1)*zu1**(-1)&
            &     - 3d0*x**(-1)*zu1**(-1)*Hmx + x**(-1)*zu1**(-1)*Hmy - 2d0*&
            &    x**(-1)*zu1**(-1)*Hmz + 17d0/9d0*x**(-1)*zu1**(-1)*H0x + 32d0/9d0&
            &    *yt1**(-2) - 12d0*yt1**(-2)*Hmx - 8d0*yt1**(-2)*Hmy + 4d0*&
            &    yt1**(-2)*Hmz + 40./9d0*yt1**(-2)*H0x - 16d0/3d0*yt1**(-1) + 18d0&
            &    *yt1**(-1)*Hmx + 12d0*yt1**(-1)*Hmy - 4d0*yt1**(-1)*Hmy*xp2 - 6d0&
            &    *yt1**(-1)*Hmz + 4d0*yt1**(-1)*Hmz*xp2 - 20./3d0*yt1**(-1)*H0x&
            &     - 32d0/9d0*zu1**(-2) + 12d0*zu1**(-2)*Hmx - 4d0*zu1**(-2)*Hmy + &
            &    8d0*zu1**(-2)*Hmz - 40./9d0*zu1**(-2)*H0x + 16d0/3d0*zu1**(-1) - &
            &    18d0*zu1**(-1)*Hmx + 6d0*zu1**(-1)*Hmy - 4d0*zu1**(-1)*Hmy*xp2&
            &     - 12d0*zu1**(-1)*Hmz + 4d0*zu1**(-1)*Hmz*xp2 + 20./3d0*&
            &    zu1**(-1)*H0x + 32d0/9d0*xp2 - 6d0*Hmx - 12d0*Hmx*xp2 - 8d0*Hmy - &
            &    2d0*Hmy*xp2 + 16d0*Hmy*xp3 - 8d0*Hmy*xp4 + 6d0*Hmz - 2d0*Hmz*xp2&
            &     - 16d0*Hmz*xp3 + 8d0*Hmz*xp4 + 20./9d0*H0x + 11d0/3d0*H0x*xp2 + &
            &    14d0/9d0*H0x*xp3 + 32d0/9d0*yt*xp2 - 12d0*yt*Hmx*xp2 - 26d0*yt*Hmy*&
            &    xp2 + 32d0*yt*Hmy*xp3 - 16d0*yt*Hmy*xp4 + 22d0*yt*Hmz*xp2 - 32d0*&
            &    yt*Hmz*xp3 + 16d0*yt*Hmz*xp4 + 11d0/3d0*yt*H0x*xp2 + 14d0/9d0*yt*&
            &    H0x*xp3 - 8d0*yt**2*Hmy*xp2 + 16d0*yt**2*Hmy*xp3 - 8d0*yt**2*Hmy&
            &    *xp4 + 8d0*yt**2*Hmz*xp2 - 16d0*yt**2*Hmz*xp3 + 8d0*yt**2*Hmz*&
            &    xp4 + 14d0/9d0*xm1*yt1**(-2)*H0x - 28d0/9d0*xm1*yt1**(-1)*H0x - &
            &    14d0/9d0*xm1*zu1**(-2)*H0x + 28d0/9d0*xm1*zu1**(-1)*H0x + 7d0/18d0*&
            &    xm1*H0x - 7d0/18d0*xm1*yt*H0x + 14d0/9d0*xp1*yt1**(-2)*H0x + 4d0*&
            &    xp1*yt1**(-1)*Hmy - 4d0*xp1*yt1**(-1)*Hmz - 14d0/9d0*xp1*&
            &    yt1**(-1)*H0x - 14d0/9d0*xp1*zu1**(-2)*H0x + 4d0*xp1*zu1**(-1)*&
            &    Hmy - 4d0*xp1*zu1**(-1)*Hmz + 14d0/9d0*xp1*zu1**(-1)*H0x - 32d0/9d0&
            &    *xp1 + 12d0*xp1*Hmx - 6d0*xp1*Hmy + 10.*xp1*Hmz - 73d0/18d0*xp1*&
            &    H0x - 32d0/9d0*xp1*yt + 12d0*xp1*yt*Hmx + 10.*xp1*yt*Hmy - 6d0*&
            &    xp1*yt*Hmz - 29d0/6d0*xp1*yt*H0x - 8d0/9d0*x*yt1**(-1) + 3d0*x*&
            &    yt1**(-1)*Hmx + 2d0*x*yt1**(-1)*Hmy - x*yt1**(-1)*Hmz - 10./9d0&
            &    *x*yt1**(-1)*H0x + 8d0/9d0*x*zu1**(-1) - 3d0*x*zu1**(-1)*Hmx + x&
            &    *zu1**(-1)*Hmy - 2d0*x*zu1**(-1)*Hmz + 10./9d0*x*zu1**(-1)*H0x&
            &     - Pi*cI*x**(-1)*yt1**(-1) + Pi*cI*x**(-1)*zu1**(-1) - Pi*cI*&
            &    xp2 + 2d0*Pi*cI*xp3 - Pi*cI*yt*xp2 + 2d0*Pi*cI*yt*xp3 + 2d0*Pi*&
            &    cI*xm1*yt1**(-2) - 4d0*Pi*cI*xm1*yt1**(-1) - 2d0*Pi*cI*xm1*&
            &    zu1**(-2) + 4d0*Pi*cI*xm1*zu1**(-1) + 1d0/2d0*Pi*cI*xm1 - 1d0/2d0*&
            &    Pi*cI*xm1*yt + 2d0*Pi*cI*xp1*yt1**(-2) - 2d0*Pi*cI*xp1*&
            &    yt1**(-1) - 2d0*Pi*cI*xp1*zu1**(-2) + 2d0*Pi*cI*xp1*zu1**(-1)&
            &     + 1d0/2d0*Pi*cI*xp1 - 1d0/2d0*Pi*cI*xp1*yt )
       Hgg1_coeff(0,1,2) = + 19d0/9d0 - 4d0/9d0*x**(-1)*yt**(-1)&
            &    *Hmy - 2d0/9d0*x**(-1)*yt1**(-3)*H0my + 2d0/9d0*x**(-1)*yt1**(-2)&
            &     - 2d0/9d0*x**(-1)*yt1**(-2)*Hmy - 4d0/3d0*x**(-1)*yt1**(-1) - 7d0/&
            &    9d0*x**(-1)*yt1**(-1)*Hp0x - 2d0*x**(-1)*yt1**(-1)*Hmmy + 8d0/9d0&
            &    *x**(-1)*yt1**(-1)*H0my - 5d0*x**(-1)*yt1**(-1)*Hmmx + 10./9d0*&
            &    x**(-1)*yt1**(-1)*Hm0x - x**(-1)*yt1**(-1)*Hmmz + x**(-1)*&
            &    yt1**(-1)*H0mz + 2d0*x**(-1)*yt1**(-1)*H0mx + 16d0/9d0*x**(-1)*&
            &    yt1**(-1)*Hmy - 3d0*x**(-1)*yt1**(-1)*Hmy*Hmx + 2d0*x**(-1)*&
            &    yt1**(-1)*Hmz*Hmx + x**(-1)*yt1**(-1)*Hmz*Hmy + 17d0/9d0*&
            &    x**(-1)*yt1**(-1)*H0x*Hmy + 2d0/9d0*x**(-1)*zu1**(-3)*H0mz - 2d0/&
            &    9d0*x**(-1)*zu1**(-2) + 2d0/9d0*x**(-1)*zu1**(-2)*Hmz + 4d0/3d0*&
            &    x**(-1)*zu1**(-1) + 7d0/9d0*x**(-1)*zu1**(-1)*Hp0x + x**(-1)*&
            &    zu1**(-1)*Hmmy - x**(-1)*zu1**(-1)*H0my + 5d0*x**(-1)*&
            &    zu1**(-1)*Hmmx - 10./9d0*x**(-1)*zu1**(-1)*Hm0x + 2d0*x**(-1)*&
            &    zu1**(-1)*Hmmz - 8d0/9d0*x**(-1)*zu1**(-1)*H0mz - 2d0*x**(-1)*&
            &    zu1**(-1)*H0mx - 2d0*x**(-1)*zu1**(-1)*Hmy*Hmx - 16d0/9d0*&
            &    x**(-1)*zu1**(-1)*Hmz + 3d0*x**(-1)*zu1**(-1)*Hmz*Hmx - &
            &    x**(-1)*zu1**(-1)*Hmz*Hmy - 17d0/9d0*x**(-1)*zu1**(-1)*H0x*Hmz&
            &     - 4d0/9d0*yt**(-2)*Hmy + 4d0/9d0*yt**(-2)*Hmy*xp2 + 4d0/9d0*&
            &    yt**(-1) - 4d0/9d0*yt**(-1)*xp2 + 14d0/9d0*yt**(-1)*Hmy - 14d0/9d0*&
            &    yt**(-1)*Hmy*xp2 + 4d0/9d0*zu**(-2)*Hmz - 4d0/9d0*zu**(-2)*Hmz*&
            &    xp2 - 4d0/9d0*zu**(-1) + 4d0/9d0*zu**(-1)*xp2 - 14d0/9d0*zu**(-1)*&
            &    Hmz + 14d0/9d0*zu**(-1)*Hmz*xp2 - 4d0/9d0*yt1**(-3)*H0my + 68d0/9d0&
            &    *yt1**(-2) - 28d0/9d0*yt1**(-2)*Hp0x - 28d0/9d0*yt1**(-2)*Hm0x - &
            &    68d0/9d0*yt1**(-2)*Hmy + 24d0*yt1**(-2)*Hmy*Hmx - 8d0*yt1**(-2)*&
            &    Hmz*Hmy - 80./9d0*yt1**(-2)*H0x*Hmy - 86d0/9d0*yt1**(-1) + 4d0*&
            &    yt1**(-1)*xm2 - 8d0/3d0*yt1**(-1)*xp2 + 14d0/3d0*yt1**(-1)*Hp0x&
            &     - 12d0*yt1**(-1)*Hmmy + 8d0*yt1**(-1)*Hmmy*xp2 + 6d0*yt1**(-1)*&
            &    H0my - 8d0/9d0*yt1**(-1)*H0my*xp2 - 22d0*yt1**(-1)*Hmmx + 52d0/3d0&
            &    *yt1**(-1)*Hm0x + 2d0*yt1**(-1)*Hmmz + 8d0*yt1**(-1)*Hmmz*xp2&
            &     + 2d0*yt1**(-1)*H0mz + 17d0*yt1**(-1)*H0mx + 54d0*yt1**(-1)*&
            &    H0mx*xm2 - 116d0*yt1**(-1)*H0mx*xm3 + 120.*yt1**(-1)*H0mx*xm4&
            &     - 48d0*yt1**(-1)*H0mx*xm5 - 47d0/6d0*yt1**(-1)*H00x - 27d0*&
            &    yt1**(-1)*H00x*xm2 + 10./9d0*yt1**(-1)*H00x*xp2 + 58d0*&
            &    yt1**(-1)*H00x*xm3 - 60.*yt1**(-1)*H00x*xm4 + 24d0*yt1**(-1)*&
            &    H00x*xm5 - yt1**(-1)*Hmx - 72d0*yt1**(-1)*Hmx*xm2 + 96d0*&
            &    yt1**(-1)*Hmx*xm3 - 48d0*yt1**(-1)*Hmx*xm4 + 64d0/9d0*yt1**(-1)*&
            &    Hmy - 18d0*yt1**(-1)*Hmy*Hmx + 8d0*yt1**(-1)*Hmy*Hmx*xp2 + 4d0*&
            &    yt1**(-1)*Hmz*Hmx - 8d0*yt1**(-1)*Hmz*Hmx*xp2 + 6d0*yt1**(-1)*&
            &    Hmz*Hmy - 8d0*yt1**(-1)*Hmz*Hmy*xp2 + 11d0/9d0*yt1**(-1)*H0x + &
            &    36d0*yt1**(-1)*H0x*xm2 + 4d0*yt1**(-1)*H0x*xp2 - 48d0*yt1**(-1)*&
            &    H0x*xm3 - 8d0/3d0*yt1**(-1)*H0x*xp3 + 24d0*yt1**(-1)*H0x*xm4 + &
            &    20./3d0*yt1**(-1)*H0x*Hmy + 2d0*yt1**(-1)*H0x*Hmy*xp2 - 4d0*&
            &    yt1**(-1)*H0x*Hmy*xp3 - 6d0*yt1**(-1)*H0x*Hmz - 2d0*yt1**(-1)*&
            &    H0x*Hmz*xp2 + 4d0*yt1**(-1)*H0x*Hmz*xp3 + 4d0/9d0*zu1**(-3)*H0mz&
            &     - 68d0/9d0*zu1**(-2) + 28d0/9d0*zu1**(-2)*Hp0x + 28d0/9d0*&
            &    zu1**(-2)*Hm0x + 68d0/9d0*zu1**(-2)*Hmz - 24d0*zu1**(-2)*Hmz*Hmx&
            &     + 8d0*zu1**(-2)*Hmz*Hmy + 80./9d0*zu1**(-2)*H0x*Hmz + 86d0/9d0*&
            &    zu1**(-1) - 4d0*zu1**(-1)*xm2 + 8d0/3d0*zu1**(-1)*xp2 - 14d0/3d0*&
            &    zu1**(-1)*Hp0x - 2d0*zu1**(-1)*Hmmy - 8d0*zu1**(-1)*Hmmy*xp2 - &
            &    2d0*zu1**(-1)*H0my + 22d0*zu1**(-1)*Hmmx - 52d0/3d0*zu1**(-1)*&
            &    Hm0x + 12d0*zu1**(-1)*Hmmz - 8d0*zu1**(-1)*Hmmz*xp2 - 6d0*&
            &    zu1**(-1)*H0mz + 8d0/9d0*zu1**(-1)*H0mz*xp2 - 17d0*zu1**(-1)*&
            &    H0mx - 54d0*zu1**(-1)*H0mx*xm2 + 116d0*zu1**(-1)*H0mx*xm3 - 120.&
            &    *zu1**(-1)*H0mx*xm4 + 48d0*zu1**(-1)*H0mx*xm5 + 47d0/6d0*&
            &    zu1**(-1)*H00x + 27d0*zu1**(-1)*H00x*xm2 - 10./9d0*zu1**(-1)*&
            &    H00x*xp2 - 58d0*zu1**(-1)*H00x*xm3 + 60.*zu1**(-1)*H00x*xm4 - &
            &    24d0*zu1**(-1)*H00x*xm5 + zu1**(-1)*Hmx + 72d0*zu1**(-1)*Hmx*&
            &    xm2 - 96d0*zu1**(-1)*Hmx*xm3 + 48d0*zu1**(-1)*Hmx*xm4 - 4d0*&
            &    zu1**(-1)*Hmy*Hmx + 8d0*zu1**(-1)*Hmy*Hmx*xp2 - 64d0/9d0*&
            &    zu1**(-1)*Hmz + 18d0*zu1**(-1)*Hmz*Hmx - 8d0*zu1**(-1)*Hmz*Hmx*&
            &    xp2 - 6d0*zu1**(-1)*Hmz*Hmy + 8d0*zu1**(-1)*Hmz*Hmy*xp2 - 11d0/9d0&
            &    *zu1**(-1)*H0x - 36d0*zu1**(-1)*H0x*xm2 - 4d0*zu1**(-1)*H0x*xp2&
            &     + 48d0*zu1**(-1)*H0x*xm3 + 8d0/3d0*zu1**(-1)*H0x*xp3 - 24d0*&
            &    zu1**(-1)*H0x*xm4 + 6d0*zu1**(-1)*H0x*Hmy + 2d0*zu1**(-1)*H0x*&
            &    Hmy*xp2 - 4d0*zu1**(-1)*H0x*Hmy*xp3 - 20./3d0*zu1**(-1)*H0x*Hmz&
            &     - 2d0*zu1**(-1)*H0x*Hmz*xp2 + 4d0*zu1**(-1)*H0x*Hmz*xp3 - 2d0*&
            &    xm2 + 56d0/9d0*xp2 - 14d0/9d0*Hp0x - 14d0/3d0*Hp0x*xp2 + 28d0/9d0*&
            &    Hp0x*xp3 + 6d0*Hmmy - 4d0*Hmmy*xp2 - 3d0/2d0*H0my - 4d0/9d0*H0my*&
            &    xp2 + 16d0*Hmmx + 32d0*Hmmx*xp2 - 80./9d0*Hm0x - 16d0*Hm0x*xp2 + &
            &    6d0*Hmmz + 28d0*Hmmz*xp2 - 61d0/18d0*H0mz - 28d0/3d0*H0mz*xp2 - 6d0*&
            &    H0mx - 36d0*H0mx*xm2 - 4d0*H0mx*xp2 + 64d0*H0mx*xm3 - 8d0*H0mx*&
            &    xp3 - 60.*H0mx*xm4 + 24d0*H0mx*xm5 + 20./9d0*H00x + 18d0*H00x*&
            &    xm2 - 11d0/9d0*H00x*xp2 - 32d0*H00x*xm3 + 50./9d0*H00x*xp3 + 30.*&
            &    H00x*xm4 - 12d0*H00x*xm5 + Hmx + 42d0*Hmx*xm2 - 4d0*Hmx*xp2 - 48d0&
            &    *Hmx*xm3 + 24d0*Hmx*xm4 - 34d0/9d0*Hmy - 8d0/9d0*Hmy*xp2 + 12d0*Hmy&
            &    *Hmx + 12d0*Hmy*Hmx*xp2 - 32d0*Hmy*Hmx*xp3 + 16d0*Hmy*Hmx*xp4 + &
            &    16d0/9d0*Hmz - 4d0*Hmz*xp2 - 16d0*Hmz*Hmx - 20.*Hmz*Hmx*xp2 + 32d0&
            &    *Hmz*Hmx*xp3 - 16d0*Hmz*Hmx*xp4 - 2d0*Hmz*Hmy - 4d0*Hmz*Hmy*xp2&
            &     - 11d0/9d0*H0x - 21d0*H0x*xm2 + 8d0/3d0*H0x*xp2 + 24d0*H0x*xm3 - 4d0&
            &   /9d0*H0x*xp3 - 12d0*H0x*xm4 - 13d0/2d0*H0x*Hmy - 2d0/3d0*H0x*Hmy*&
            &    xp2 + 112d0/9d0*H0x*Hmy*xp3 - 8d0*H0x*Hmy*xp4 + 169d0/18d0*H0x*Hmz&
            &     + 14d0/3d0*H0x*Hmz*xp2 - 112d0/9d0*H0x*Hmz*xp3 + 8d0*H0x*Hmz*xp4&
            &     + 4d0/9d0*yt*zu**(-1)*Hmz + 2d0*yt*xm2 + 56d0/9d0*yt*xp2 - 14d0/3d0&
            &    *yt*Hp0x*xp2 + 28d0/9d0*yt*Hp0x*xp3 + 12d0*yt*Hmmy*xp2 - 44d0/9d0*&
            &    yt*H0my*xp2 + 32d0*yt*Hmmx*xp2 - 16d0*yt*Hm0x*xp2 + 12d0*yt*Hmmz&
            &    *xp2 - 44d0/9d0*yt*H0mz*xp2 + 18d0*yt*H0mx*xm2 - 4d0*yt*H0mx*xp2&
            &     - 52d0*yt*H0mx*xm3 - 8d0*yt*H0mx*xp3 + 60.*yt*H0mx*xm4 - 24d0*&
            &    yt*H0mx*xm5 - 9d0*yt*H00x*xm2 - 11d0/9d0*yt*H00x*xp2 + 26d0*yt*&
            &    H00x*xm3 + 50./9d0*yt*H00x*xp3 - 30.*yt*H00x*xm4 + 12d0*yt*H00x&
            &    *xm5 - 30.*yt*Hmx*xm2 - 4d0*yt*Hmx*xp2 + 48d0*yt*Hmx*xm3 - 24d0*&
            &    yt*Hmx*xm4 - 22d0/9d0*yt*Hmy*xp2 + 44d0*yt*Hmy*Hmx*xp2 - 64d0*yt*&
            &    Hmy*Hmx*xp3 + 32d0*yt*Hmy*Hmx*xp4 - 22d0/9d0*yt*Hmz*xp2 - 52d0*yt&
            &    *Hmz*Hmx*xp2 + 64d0*yt*Hmz*Hmx*xp3 - 32d0*yt*Hmz*Hmx*xp4 - 4d0*&
            &    yt*Hmz*Hmy*xp2 + 15d0*yt*H0x*xm2 + 8d0/3d0*yt*H0x*xp2 - 24d0*yt*&
            &    H0x*xm3 - 4d0/9d0*yt*H0x*xp3 + 12d0*yt*H0x*xm4 - 22d0*yt*H0x*Hmy*&
            &    xp2 + 32d0*yt*H0x*Hmy*xp3 - 16d0*yt*H0x*Hmy*xp4 + 26d0*yt*H0x*&
            &    Hmz*xp2 - 32d0*yt*H0x*Hmz*xp3 + 16d0*yt*H0x*Hmz*xp4 + 16d0*yt**2&
            &    *Hmy*Hmx*xp2 - 32d0*yt**2*Hmy*Hmx*xp3 + 16d0*yt**2*Hmy*Hmx*xp4&
            &     - 16d0*yt**2*Hmz*Hmx*xp2 + 32d0*yt**2*Hmz*Hmx*xp3 - 16d0*yt**2*&
            &    Hmz*Hmx*xp4 - 8d0*yt**2*H0x*Hmy*xp2 + 16d0*yt**2*H0x*Hmy*xp3 - &
            &    8d0*yt**2*H0x*Hmy*xp4 + 8d0*yt**2*H0x*Hmz*xp2 - 16d0*yt**2*H0x*&
            &    Hmz*xp3 + 8d0*yt**2*H0x*Hmz*xp4 + 28d0/9d0*xm1*yt1**(-2)*Hp0x + &
            &    28d0/9d0*xm1*yt1**(-2)*Hm0x - 28d0/9d0*xm1*yt1**(-2)*H0x*Hmy - 4d0&
            &    *xm1*yt1**(-1) - 56d0/9d0*xm1*yt1**(-1)*Hp0x - 64d0/9d0*xm1*&
            &    yt1**(-1)*Hm0x - 18d0*xm1*yt1**(-1)*H0mx + 85d0/9d0*xm1*&
            &    yt1**(-1)*H00x + 24d0*xm1*yt1**(-1)*Hmx - 41d0/3d0*xm1*yt1**(-1)&
            &    *H0x + 37d0/9d0*xm1*yt1**(-1)*H0x*Hmy + 3d0*xm1*yt1**(-1)*H0x*&
            &    Hmz - 28d0/9d0*xm1*zu1**(-2)*Hp0x - 28d0/9d0*xm1*zu1**(-2)*Hm0x&
            &     + 28d0/9d0*xm1*zu1**(-2)*H0x*Hmz + 4d0*xm1*zu1**(-1) + 56d0/9d0*&
            &    xm1*zu1**(-1)*Hp0x + 64d0/9d0*xm1*zu1**(-1)*Hm0x + 18d0*xm1*&
            &    zu1**(-1)*H0mx - 85d0/9d0*xm1*zu1**(-1)*H00x - 24d0*xm1*&
            &    zu1**(-1)*Hmx + 41d0/3d0*xm1*zu1**(-1)*H0x - 3d0*xm1*zu1**(-1)*&
            &    H0x*Hmy - 37d0/9d0*xm1*zu1**(-1)*H0x*Hmz + 2d0*xm1 + 7d0/9d0*xm1*&
            &    Hp0x + 8d0/9d0*xm1*Hm0x + 9d0*xm1*H0mx - 41d0/9d0*xm1*H00x - 18d0*&
            &    xm1*Hmx + 59d0/6d0*xm1*H0x - 1d0/3d0*xm1*H0x*Hmy - 5d0/9d0*xm1*H0x*&
            &    Hmz - 2d0*xm1*yt - 7d0/9d0*xm1*yt*Hp0x - 8d0/9d0*xm1*yt*Hm0x - xm1&
            &    *yt*H0mx + 5d0/9d0*xm1*yt*H00x + 6d0*xm1*yt*Hmx - 23d0/6d0*xm1*yt*&
            &    H0x + 4d0/9d0*xm1*yt*H0x*Hmy + 4d0/9d0*xm1*yt*H0x*Hmz - 4d0/9d0*xp1&
            &    *yt**(-2)*Hmy + 4d0/9d0*xp1*yt**(-1) + 14d0/9d0*xp1*yt**(-1)*Hmy&
            &     + 4d0/9d0*xp1*zu**(-2)*Hmz - 4d0/9d0*xp1*zu**(-1) - 14d0/9d0*xp1*&
            &    zu**(-1)*Hmz + 28d0/9d0*xp1*yt1**(-2)*Hp0x + 28d0/9d0*xp1*&
            &    yt1**(-2)*Hm0x - 28d0/9d0*xp1*yt1**(-2)*H0x*Hmy + 8d0/3d0*xp1*&
            &    yt1**(-1) - 28d0/9d0*xp1*yt1**(-1)*Hp0x - 8d0*xp1*yt1**(-1)*Hmmy&
            &     + 8d0/9d0*xp1*yt1**(-1)*H0my - 50./9d0*xp1*yt1**(-1)*Hm0x - 8d0*&
            &    xp1*yt1**(-1)*Hmmz - 4d0*xp1*yt1**(-1)*H0mx + 19d0/9d0*xp1*&
            &    yt1**(-1)*H00x - 8d0*xp1*yt1**(-1)*Hmy*Hmx + 8d0*xp1*yt1**(-1)*&
            &    Hmz*Hmx + 8d0*xp1*yt1**(-1)*Hmz*Hmy - 10./9d0*xp1*yt1**(-1)*H0x&
            &     + 23d0/9d0*xp1*yt1**(-1)*H0x*Hmy + 3d0*xp1*yt1**(-1)*H0x*Hmz - &
            &    28d0/9d0*xp1*zu1**(-2)*Hp0x - 28d0/9d0*xp1*zu1**(-2)*Hm0x + 28d0/9d0&
            &    *xp1*zu1**(-2)*H0x*Hmz - 8d0/3d0*xp1*zu1**(-1) + 28d0/9d0*xp1*&
            &    zu1**(-1)*Hp0x + 8d0*xp1*zu1**(-1)*Hmmy + 50./9d0*xp1*zu1**(-1)&
            &    *Hm0x + 8d0*xp1*zu1**(-1)*Hmmz - 8d0/9d0*xp1*zu1**(-1)*H0mz + 4d0&
            &    *xp1*zu1**(-1)*H0mx - 19d0/9d0*xp1*zu1**(-1)*H00x - 8d0*xp1*&
            &    zu1**(-1)*Hmy*Hmx + 8d0*xp1*zu1**(-1)*Hmz*Hmx - 8d0*xp1*&
            &    zu1**(-1)*Hmz*Hmy + 10./9d0*xp1*zu1**(-1)*H0x - 3d0*xp1*&
            &    zu1**(-1)*H0x*Hmy - 23d0/9d0*xp1*zu1**(-1)*H0x*Hmz - 56d0/9d0*xp1&
            &     + 35d0/9d0*xp1*Hp0x + 4d0*xp1*Hmmy + 4d0/9d0*xp1*H0my - 32d0*xp1*&
            &    Hmmx + 152d0/9d0*xp1*Hm0x - 28d0*xp1*Hmmz + 28d0/3d0*xp1*H0mz + 7d0&
            &    *xp1*H0mx - 10./9d0*xp1*H00x + 4d0*xp1*Hmx + 8d0/9d0*xp1*Hmy + 4d0&
            &    *xp1*Hmy*Hmx + 4d0*xp1*Hmz + 4d0*xp1*Hmz*Hmx + 4d0*xp1*Hmz*Hmy&
            &     - 29d0/18d0*xp1*H0x - 22d0/9d0*xp1*H0x*Hmy - 22d0/9d0*xp1*H0x*Hmz&
            &     - 56d0/9d0*xp1*yt + 7d0/3d0*xp1*yt*Hp0x - 12d0*xp1*yt*Hmmy + 44d0/&
            &    9d0*xp1*yt*H0my - 32d0*xp1*yt*Hmmx + 152d0/9d0*xp1*yt*Hm0x - 12d0*&
            &    xp1*yt*Hmmz + 44d0/9d0*xp1*yt*H0mz + 11d0*xp1*yt*H0mx - 35d0/9d0*&
            &    xp1*yt*H00x + 4d0*xp1*yt*Hmx + 22d0/9d0*xp1*yt*Hmy - 12d0*xp1*yt*&
            &    Hmy*Hmx + 22d0/9d0*xp1*yt*Hmz + 20.*xp1*yt*Hmz*Hmx + 4d0*xp1*yt*&
            &    Hmz*Hmy - 25d0/18d0*xp1*yt*H0x + 50./9d0*xp1*yt*H0x*Hmy - 94d0/9d0&
            &    *xp1*yt*H0x*Hmz - 4d0/9d0*x*yt**(-1)*Hmy - 2d0/9d0*x*yt1**(-3)*&
            &    H0my + 2d0/9d0*x*yt1**(-2) - 2d0/9d0*x*yt1**(-2)*Hmy - 4d0/3d0*x*&
            &    yt1**(-1) + 7d0/9d0*x*yt1**(-1)*Hp0x - 2d0*x*yt1**(-1)*Hmmy + 8d0/&
            &    9d0*x*yt1**(-1)*H0my - 5d0*x*yt1**(-1)*Hmmx + 35d0/9d0*x*&
            &    yt1**(-1)*Hm0x - x*yt1**(-1)*Hmmz + x*yt1**(-1)*H0mz + 3d0*x*&
            &    yt1**(-1)*H0mx - 10./9d0*x*yt1**(-1)*H00x + 16d0/9d0*x*yt1**(-1)&
            &    *Hmy - 3d0*x*yt1**(-1)*Hmy*Hmx + 2d0*x*yt1**(-1)*Hmz*Hmx + x*&
            &    yt1**(-1)*Hmz*Hmy + 10./9d0*x*yt1**(-1)*H0x*Hmy - 2d0*x*&
            &    yt1**(-1)*H0x*Hmz + 2d0/9d0*x*zu1**(-3)*H0mz - 2d0/9d0*x*&
            &    zu1**(-2) + 2d0/9d0*x*zu1**(-2)*Hmz + 4d0/3d0*x*zu1**(-1) - 7d0/9d0&
            &    *x*zu1**(-1)*Hp0x + x*zu1**(-1)*Hmmy - x*zu1**(-1)*H0my + 5d0*&
            &    x*zu1**(-1)*Hmmx - 35d0/9d0*x*zu1**(-1)*Hm0x + 2d0*x*zu1**(-1)*&
            &    Hmmz - 8d0/9d0*x*zu1**(-1)*H0mz - 3d0*x*zu1**(-1)*H0mx + 10./9d0*&
            &    x*zu1**(-1)*H00x - 2d0*x*zu1**(-1)*Hmy*Hmx - 16d0/9d0*x*&
            &    zu1**(-1)*Hmz + 3d0*x*zu1**(-1)*Hmz*Hmx - x*zu1**(-1)*Hmz*Hmy&
            &     + 2d0*x*zu1**(-1)*H0x*Hmy - 10./9d0*x*zu1**(-1)*H0x*Hmz - Pi*&
            &    cI*x**(-1)*yt1**(-1)*Hpx + 20./9d0*Pi*cI*x**(-1)*yt1**(-1)*Hmx&
            &     + Pi*cI*x**(-1)*yt1**(-1)*Hmy - 20./9d0*Pi*cI*x**(-1)*&
            &    yt1**(-1)*Hmz - 20./9d0*Pi*cI*x**(-1)*yt1**(-1)*H0x + Pi*cI*&
            &    x**(-1)*zu1**(-1)*Hpx - 20./9d0*Pi*cI*x**(-1)*zu1**(-1)*Hmx + &
            &    20./9d0*Pi*cI*x**(-1)*zu1**(-1)*Hmy - Pi*cI*x**(-1)*zu1**(-1)*&
            &    Hmz + 20./9d0*Pi*cI*x**(-1)*zu1**(-1)*H0x - 4d0*Pi*cI*yt1**(-2)&
            &    *Hpx - 4d0*Pi*cI*yt1**(-2)*Hmx + 41d0/9d0*Pi*cI*yt1**(-1) - 20.*&
            &    Pi*cI*yt1**(-1)*xm2 - 4d0*Pi*cI*yt1**(-1)*xp2 + 48d0*Pi*cI*&
            &    yt1**(-1)*xm3 + 8d0/3d0*Pi*cI*yt1**(-1)*xp3 - 24d0*Pi*cI*&
            &    yt1**(-1)*xm4 + 6d0*Pi*cI*yt1**(-1)*Hpx + 136d0/9d0*Pi*cI*&
            &    yt1**(-1)*Hmx - 22d0/3d0*Pi*cI*yt1**(-1)*Hmy*xp2 - 28d0/9d0*Pi*cI&
            &    *yt1**(-1)*Hmy*xp3 - 82d0/9d0*Pi*cI*yt1**(-1)*Hmz + 22d0/3d0*Pi*&
            &    cI*yt1**(-1)*Hmz*xp2 + 28d0/9d0*Pi*cI*yt1**(-1)*Hmz*xp3 - 7d0/18d0&
            &    *Pi*cI*yt1**(-1)*H0x + 3d0*Pi*cI*yt1**(-1)*H0x*xm2 + 22d0/9d0*Pi&
            &    *cI*yt1**(-1)*H0x*xp2 - 42d0*Pi*cI*yt1**(-1)*H0x*xm3 + 60.*Pi*&
            &    cI*yt1**(-1)*H0x*xm4 - 24d0*Pi*cI*yt1**(-1)*H0x*xm5 + 4d0*Pi*cI&
            &    *zu1**(-2)*Hpx + 4d0*Pi*cI*zu1**(-2)*Hmx - 41d0/9d0*Pi*cI*&
            &    zu1**(-1) + 20.*Pi*cI*zu1**(-1)*xm2 + 4d0*Pi*cI*zu1**(-1)*xp2&
            &     - 48d0*Pi*cI*zu1**(-1)*xm3 - 8d0/3d0*Pi*cI*zu1**(-1)*xp3 + 24d0*&
            &    Pi*cI*zu1**(-1)*xm4 - 6d0*Pi*cI*zu1**(-1)*Hpx - 136d0/9d0*Pi*cI*&
            &    zu1**(-1)*Hmx + 82d0/9d0*Pi*cI*zu1**(-1)*Hmy - 22d0/3d0*Pi*cI*&
            &    zu1**(-1)*Hmy*xp2 - 28d0/9d0*Pi*cI*zu1**(-1)*Hmy*xp3 + 22d0/3d0*&
            &    Pi*cI*zu1**(-1)*Hmz*xp2 + 28d0/9d0*Pi*cI*zu1**(-1)*Hmz*xp3 + 7d0/&
            &    18d0*Pi*cI*zu1**(-1)*H0x - 3d0*Pi*cI*zu1**(-1)*H0x*xm2 - 22d0/9d0&
            &    *Pi*cI*zu1**(-1)*H0x*xp2 + 42d0*Pi*cI*zu1**(-1)*H0x*xm3 - 60.*&
            &    Pi*cI*zu1**(-1)*H0x*xm4 + 24d0*Pi*cI*zu1**(-1)*H0x*xm5 - 41d0/9d0&
            &    *Pi*cI + 13d0*Pi*cI*xm2 - 8d0/3d0*Pi*cI*xp2 - 24d0*Pi*cI*xm3 + 4d0/&
            &    9d0*Pi*cI*xp3 + 12d0*Pi*cI*xm4 - 2d0*Pi*cI*Hpx - 6d0*Pi*cI*Hpx*&
            &    xp2 + 4d0*Pi*cI*Hpx*xp3 - 80./9d0*Pi*cI*Hmx - 16d0*Pi*cI*Hmx*xp2&
            &     - 115d0/18d0*Pi*cI*Hmy + 10./3d0*Pi*cI*Hmy*xp2 + 112d0/9d0*Pi*cI*&
            &    Hmy*xp3 - 8d0*Pi*cI*Hmy*xp4 + 239d0/18d0*Pi*cI*Hmz + 26d0/3d0*Pi*&
            &    cI*Hmz*xp2 - 112d0/9d0*Pi*cI*Hmz*xp3 + 8d0*Pi*cI*Hmz*xp4 - 6d0*Pi&
            &    *cI*H0x*xm2 - 17d0/9d0*Pi*cI*H0x*xp2 + 24d0*Pi*cI*H0x*xm3 + 6d0*&
            &    Pi*cI*H0x*xp3 - 30.*Pi*cI*H0x*xm4 + 12d0*Pi*cI*H0x*xm5 - 7d0*Pi&
            &    *cI*yt*xm2 - 8d0/3d0*Pi*cI*yt*xp2 + 24d0*Pi*cI*yt*xm3 + 4d0/9d0*Pi&
            &    *cI*yt*xp3 - 12d0*Pi*cI*yt*xm4 - 6d0*Pi*cI*yt*Hpx*xp2 + 4d0*Pi*&
            &    cI*yt*Hpx*xp3 - 16d0*Pi*cI*yt*Hmx*xp2 - 18d0*Pi*cI*yt*Hmy*xp2&
            &     + 32d0*Pi*cI*yt*Hmy*xp3 - 16d0*Pi*cI*yt*Hmy*xp4 + 30.*Pi*cI*yt&
            &    *Hmz*xp2 - 32d0*Pi*cI*yt*Hmz*xp3 + 16d0*Pi*cI*yt*Hmz*xp4 - 3d0*&
            &    Pi*cI*yt*H0x*xm2 - 17d0/9d0*Pi*cI*yt*H0x*xp2 - 18d0*Pi*cI*yt*H0x&
            &    *xm3 + 6d0*Pi*cI*yt*H0x*xp3 + 30.*Pi*cI*yt*H0x*xm4 - 12d0*Pi*cI&
            &    *yt*H0x*xm5 - 8d0*Pi*cI*yt**2*Hmy*xp2 + 16d0*Pi*cI*yt**2*Hmy*&
            &    xp3 - 8d0*Pi*cI*yt**2*Hmy*xp4 + 8d0*Pi*cI*yt**2*Hmz*xp2 - 16d0*&
            &    Pi*cI*yt**2*Hmz*xp3 + 8d0*Pi*cI*yt**2*Hmz*xp4 + 4d0*Pi*cI*xm1*&
            &    yt1**(-2)*Hpx + 4d0*Pi*cI*xm1*yt1**(-2)*Hmx - 4d0*Pi*cI*xm1*&
            &    yt1**(-2)*Hmy - 53d0/9d0*Pi*cI*xm1*yt1**(-1) - 8d0*Pi*cI*xm1*&
            &    yt1**(-1)*Hpx - 64d0/9d0*Pi*cI*xm1*yt1**(-1)*Hmx + 43d0/9d0*Pi*cI&
            &    *xm1*yt1**(-1)*Hmy + 7d0/3d0*Pi*cI*xm1*yt1**(-1)*Hmz - 49d0/9d0*&
            &    Pi*cI*xm1*yt1**(-1)*H0x - 4d0*Pi*cI*xm1*zu1**(-2)*Hpx - 4d0*Pi*&
            &    cI*xm1*zu1**(-2)*Hmx + 4d0*Pi*cI*xm1*zu1**(-2)*Hmz + 53d0/9d0*Pi&
            &    *cI*xm1*zu1**(-1) + 8d0*Pi*cI*xm1*zu1**(-1)*Hpx + 64d0/9d0*Pi*cI&
            &    *xm1*zu1**(-1)*Hmx - 7d0/3d0*Pi*cI*xm1*zu1**(-1)*Hmy - 43d0/9d0*&
            &    Pi*cI*xm1*zu1**(-1)*Hmz + 49d0/9d0*Pi*cI*xm1*zu1**(-1)*H0x - 1d0/&
            &    18d0*Pi*cI*xm1 + Pi*cI*xm1*Hpx + 8d0/9d0*Pi*cI*xm1*Hmx - 5d0/9d0*&
            &    Pi*cI*xm1*Hmy - 1d0/3d0*Pi*cI*xm1*Hmz + 5d0/9d0*Pi*cI*xm1*H0x - &
            &    107d0/18d0*Pi*cI*xm1*yt - Pi*cI*xm1*yt*Hpx - 8d0/9d0*Pi*cI*xm1*yt&
            &    *Hmx + 4d0/9d0*Pi*cI*xm1*yt*Hmy + 4d0/9d0*Pi*cI*xm1*yt*Hmz - 5d0/9d0&
            &    *Pi*cI*xm1*yt*H0x + 4d0*Pi*cI*xp1*yt1**(-2)*Hpx + 4d0*Pi*cI*xp1&
            &    *yt1**(-2)*Hmx - 4d0*Pi*cI*xp1*yt1**(-2)*Hmy + 10./9d0*Pi*cI*&
            &    xp1*yt1**(-1) - 4d0*Pi*cI*xp1*yt1**(-1)*Hpx - 46d0/9d0*Pi*cI*xp1&
            &    *yt1**(-1)*Hmx + 35d0/3d0*Pi*cI*xp1*yt1**(-1)*Hmy - 59d0/9d0*Pi*&
            &    cI*xp1*yt1**(-1)*Hmz + 1d0/9d0*Pi*cI*xp1*yt1**(-1)*H0x - 4d0*Pi*&
            &    cI*xp1*zu1**(-2)*Hpx - 4d0*Pi*cI*xp1*zu1**(-2)*Hmx + 4d0*Pi*cI*&
            &    xp1*zu1**(-2)*Hmz - 10./9d0*Pi*cI*xp1*zu1**(-1) + 4d0*Pi*cI*xp1&
            &    *zu1**(-1)*Hpx + 46d0/9d0*Pi*cI*xp1*zu1**(-1)*Hmx + 59d0/9d0*Pi*&
            &    cI*xp1*zu1**(-1)*Hmy - 35d0/3d0*Pi*cI*xp1*zu1**(-1)*Hmz - 1d0/9d0&
            &    *Pi*cI*xp1*zu1**(-1)*H0x + 61d0/18d0*Pi*cI*xp1 + 5d0*Pi*cI*xp1*&
            &    Hpx + 152d0/9d0*Pi*cI*xp1*Hmx - 58d0/9d0*Pi*cI*xp1*Hmy - 58d0/9d0*&
            &    Pi*cI*xp1*Hmz + 22d0/9d0*Pi*cI*xp1*H0x + 19d0/6d0*Pi*cI*xp1*yt + &
            &    3d0*Pi*cI*xp1*yt*Hpx + 152d0/9d0*Pi*cI*xp1*yt*Hmx + 14d0/9d0*Pi*cI&
            &    *xp1*yt*Hmy - 130./9d0*Pi*cI*xp1*yt*Hmz - 5d0/9d0*Pi*cI*xp1*yt*&
            &    H0x + Pi*cI*x*yt1**(-1)*Hpx + 43d0/9d0*Pi*cI*x*yt1**(-1)*Hmx - &
            &    34d0/9d0*Pi*cI*x*yt1**(-1)*Hmz - Pi*cI*x*zu1**(-1)*Hpx - 43d0/9d0&
            &    *Pi*cI*x*zu1**(-1)*Hmx + 34d0/9d0*Pi*cI*x*zu1**(-1)*Hmy - 2d0/9d0&
            &    *z2*x**(-1)*yt1**(-3) + 8d0/3d0*z2*x**(-1)*yt1**(-1) + 2d0/9d0*z2&
            &    *x**(-1)*zu1**(-3) - 8d0/3d0*z2*x**(-1)*zu1**(-1) - 4d0/9d0*z2*&
            &    yt1**(-3) - 16d0/3d0*z2*yt1**(-2) + 65d0/6d0*z2*yt1**(-1) - 27d0*&
            &    z2*yt1**(-1)*xm2 + 178d0/9d0*z2*yt1**(-1)*xp2 + 58d0*z2*&
            &    yt1**(-1)*xm3 - 60.*z2*yt1**(-1)*xm4 + 24d0*z2*yt1**(-1)*xm5&
            &     + 4d0/9d0*z2*zu1**(-3) + 16d0/3d0*z2*zu1**(-2) - 65d0/6d0*z2*&
            &    zu1**(-1) + 27d0*z2*zu1**(-1)*xm2 - 178d0/9d0*z2*zu1**(-1)*xp2&
            &     - 58d0*z2*zu1**(-1)*xm3 + 60.*z2*zu1**(-1)*xm4 - 24d0*z2*&
            &    zu1**(-1)*xm5 - 8d0/9d0*z2 + 18d0*z2*xm2 - 16d0/9d0*z2*xp2 - 32d0*&
            &    z2*xm3 - 20./9d0*z2*xp3 + 30.*z2*xm4 - 12d0*z2*xm5 - 9d0*z2*yt*&
            &    xm2 - 16d0/9d0*z2*yt*xp2 + 26d0*z2*yt*xm3 - 20./9d0*z2*yt*xp3 - &
            &    30.*z2*yt*xm4 + 12d0*z2*yt*xm5 - 14d0/3d0*z2*xm1*yt1**(-2) + 161d0&
            &   /9d0*z2*xm1*yt1**(-1) + 14d0/3d0*z2*xm1*zu1**(-2) - 161d0/9d0*z2*&
            &    xm1*zu1**(-1) - 101d0/18d0*z2*xm1 + 29d0/18d0*z2*xm1*yt - 14d0/3d0*&
            &    z2*xp1*yt1**(-2) - 43d0/3d0*z2*xp1*yt1**(-1) + 14d0/3d0*z2*xp1*&
            &    zu1**(-2) + 43d0/3d0*z2*xp1*zu1**(-1) + 41d0/18d0*z2*xp1 + 61d0/18d0&
            &    *z2*xp1*yt - 2d0/9d0*z2*x*yt1**(-3) + 4d0/9d0*z2*x*yt1**(-1) + 2d0/&
            &    9d0*z2*x*zu1**(-3) - 4d0/9d0*z2*x*zu1**(-1)


       Hgg1_coeff(2,1,3) = ( 2d0 - x**(-1)*&
            &    yt1**(-1) - x**(-1)*zu1**(-1) + 4d0*yt1**(-2) - 6d0*yt1**(-1)&
            &     - 8d0*yt1**(-1)*xp2 + 4d0*zu1**(-2) - 6d0*zu1**(-1) - 8d0*&
            &    zu1**(-1)*xp2 + 8d0*xp1*yt1**(-1) + 8d0*xp1*zu1**(-1) - x*&
            &    yt1**(-1) - x*zu1**(-1) )
       Hgg1_coeff(1,1,3) = ( 16d0/9d0 - 8d0/9d0*x**(-1)*yt1**(-1) + 3d0*x**(-1)*&
            &    yt1**(-1)*Hmx + 2d0*x**(-1)*yt1**(-1)*Hmy - x**(-1)*yt1**(-1)*&
            &    Hmz - 17d0/9d0*x**(-1)*yt1**(-1)*H0x - 8d0/9d0*x**(-1)*zu1**(-1)&
            &     + 3d0*x**(-1)*zu1**(-1)*Hmx - x**(-1)*zu1**(-1)*Hmy + 2d0*&
            &    x**(-1)*zu1**(-1)*Hmz - 17d0/9d0*x**(-1)*zu1**(-1)*H0x + 32d0/9d0&
            &    *yt1**(-2) - 12d0*yt1**(-2)*Hmx - 8d0*yt1**(-2)*Hmy + 4d0*&
            &    yt1**(-2)*Hmz + 40./9d0*yt1**(-2)*H0x - 16d0/3d0*yt1**(-1) - 64d0/&
            &    9d0*yt1**(-1)*xp2 + 18d0*yt1**(-1)*Hmx + 24d0*yt1**(-1)*Hmx*xp2&
            &     + 12d0*yt1**(-1)*Hmy + 4d0*yt1**(-1)*Hmy*xp2 - 6d0*yt1**(-1)*&
            &    Hmz + 4d0*yt1**(-1)*Hmz*xp2 - 20./3d0*yt1**(-1)*H0x - 22d0/3d0*&
            &    yt1**(-1)*H0x*xp2 - 28d0/9d0*yt1**(-1)*H0x*xp3 + 32d0/9d0*&
            &    zu1**(-2) - 12d0*zu1**(-2)*Hmx + 4d0*zu1**(-2)*Hmy - 8d0*&
            &    zu1**(-2)*Hmz + 40./9d0*zu1**(-2)*H0x - 16d0/3d0*zu1**(-1) - 64d0/&
            &    9d0*zu1**(-1)*xp2 + 18d0*zu1**(-1)*Hmx + 24d0*zu1**(-1)*Hmx*xp2&
            &     - 6d0*zu1**(-1)*Hmy + 4d0*zu1**(-1)*Hmy*xp2 + 12d0*zu1**(-1)*&
            &    Hmz + 4d0*zu1**(-1)*Hmz*xp2 - 20./3d0*zu1**(-1)*H0x - 22d0/3d0*&
            &    zu1**(-1)*H0x*xp2 - 28d0/9d0*zu1**(-1)*H0x*xp3 - 6d0*Hmx - 4d0*&
            &    Hmy - 6d0*Hmy*xp2 + 2d0*Hmz + 6d0*Hmz*xp2 + 20./9d0*H0x - 6d0*yt*&
            &    Hmy*xp2 + 6d0*yt*Hmz*xp2 + 14d0/9d0*xm1*yt1**(-2)*H0x - 7d0/3d0*&
            &    xm1*yt1**(-1)*H0x + 14d0/9d0*xm1*zu1**(-2)*H0x - 7d0/3d0*xm1*&
            &    zu1**(-1)*H0x + 7d0/9d0*xm1*H0x + 14d0/9d0*xp1*yt1**(-2)*H0x + 64d0&
            &   /9d0*xp1*yt1**(-1) - 24d0*xp1*yt1**(-1)*Hmx - 4d0*xp1*yt1**(-1)*&
            &    Hmy - 4d0*xp1*yt1**(-1)*Hmz + 73d0/9d0*xp1*yt1**(-1)*H0x + 14d0/9d0&
            &    *xp1*zu1**(-2)*H0x + 64d0/9d0*xp1*zu1**(-1) - 24d0*xp1*zu1**(-1)&
            &    *Hmx - 4d0*xp1*zu1**(-1)*Hmy - 4d0*xp1*zu1**(-1)*Hmz + 73d0/9d0*&
            &    xp1*zu1**(-1)*H0x + 6d0*xp1*Hmy - 6d0*xp1*Hmz + 7d0/9d0*xp1*H0x&
            &     + 6d0*xp1*yt*Hmy - 6d0*xp1*yt*Hmz - 8d0/9d0*x*yt1**(-1) + 3d0*x*&
            &    yt1**(-1)*Hmx + 2d0*x*yt1**(-1)*Hmy - x*yt1**(-1)*Hmz - 10./9d0&
            &    *x*yt1**(-1)*H0x - 8d0/9d0*x*zu1**(-1) + 3d0*x*zu1**(-1)*Hmx - x&
            &    *zu1**(-1)*Hmy + 2d0*x*zu1**(-1)*Hmz - 10./9d0*x*zu1**(-1)*H0x&
            &     - Pi*cI*x**(-1)*yt1**(-1) - Pi*cI*x**(-1)*zu1**(-1) + 2d0*Pi*&
            &    cI*yt1**(-1)*xp2 - 4d0*Pi*cI*yt1**(-1)*xp3 + 2d0*Pi*cI*&
            &    zu1**(-1)*xp2 - 4d0*Pi*cI*zu1**(-1)*xp3 + 2d0*Pi*cI*xm1*&
            &    yt1**(-2) - 3d0*Pi*cI*xm1*yt1**(-1) + 2d0*Pi*cI*xm1*zu1**(-2)&
            &     - 3d0*Pi*cI*xm1*zu1**(-1) + Pi*cI*xm1 + 2d0*Pi*cI*xp1*&
            &    yt1**(-2) - Pi*cI*xp1*yt1**(-1) + 2d0*Pi*cI*xp1*zu1**(-2) - Pi&
            &    *cI*xp1*zu1**(-1) + Pi*cI*xp1 )
       Hgg1_coeff(0,1,3) = + 8d0/3d0 - 4d0/9d0*x**(-1)*yt**(-1)*&
            &    Hmy - 2d0/9d0*x**(-1)*yt1**(-3)*H0my + 2d0/9d0*x**(-1)*yt1**(-2)&
            &     - 2d0/9d0*x**(-1)*yt1**(-2)*Hmy - 4d0/3d0*x**(-1)*yt1**(-1) - 7d0/&
            &    9d0*x**(-1)*yt1**(-1)*Hp0x - 2d0*x**(-1)*yt1**(-1)*Hmmy + 8d0/9d0&
            &    *x**(-1)*yt1**(-1)*H0my - 9d0*x**(-1)*yt1**(-1)*Hmmx + 10./3d0*&
            &    x**(-1)*yt1**(-1)*Hm0x - 5d0*x**(-1)*yt1**(-1)*Hmmz + 25d0/9d0*&
            &    x**(-1)*yt1**(-1)*H0mz + 6d0*x**(-1)*yt1**(-1)*H0mx - 20./9d0*&
            &    x**(-1)*yt1**(-1)*H00x + 16d0/9d0*x**(-1)*yt1**(-1)*Hmy - 3d0*&
            &    x**(-1)*yt1**(-1)*Hmy*Hmx + 6d0*x**(-1)*yt1**(-1)*Hmz*Hmx + &
            &    x**(-1)*yt1**(-1)*Hmz*Hmy + 17d0/9d0*x**(-1)*yt1**(-1)*H0x*Hmy&
            &     - 20./9d0*x**(-1)*yt1**(-1)*H0x*Hmz - 2d0/9d0*x**(-1)*zu1**(-3)&
            &    *H0mz + 2d0/9d0*x**(-1)*zu1**(-2) - 2d0/9d0*x**(-1)*zu1**(-2)*Hmz&
            &     - 4d0/3d0*x**(-1)*zu1**(-1) - 7d0/9d0*x**(-1)*zu1**(-1)*Hp0x - 5d0&
            &    *x**(-1)*zu1**(-1)*Hmmy + 25d0/9d0*x**(-1)*zu1**(-1)*H0my - 9d0*&
            &    x**(-1)*zu1**(-1)*Hmmx + 10./3d0*x**(-1)*zu1**(-1)*Hm0x - 2d0*&
            &    x**(-1)*zu1**(-1)*Hmmz + 8d0/9d0*x**(-1)*zu1**(-1)*H0mz + 6d0*&
            &    x**(-1)*zu1**(-1)*H0mx - 20./9d0*x**(-1)*zu1**(-1)*H00x + 6d0*&
            &    x**(-1)*zu1**(-1)*Hmy*Hmx + 16d0/9d0*x**(-1)*zu1**(-1)*Hmz - 3d0&
            &    *x**(-1)*zu1**(-1)*Hmz*Hmx + x**(-1)*zu1**(-1)*Hmz*Hmy - 20./&
            &    9d0*x**(-1)*zu1**(-1)*H0x*Hmy + 17d0/9d0*x**(-1)*zu1**(-1)*H0x*&
            &    Hmz - 8d0/9d0*yt**(-2)*zu1**(-1)*Hmy - 4d0/9d0*yt**(-2)*Hmy + 8d0/&
            &    9d0*yt**(-1)*zu1**(-1) + 28d0/9d0*yt**(-1)*zu1**(-1)*Hmy + 4d0/9d0&
            &    *yt**(-1) + 10./9d0*yt**(-1)*Hmy - 8d0/9d0*zu**(-2)*yt1**(-1)*&
            &    Hmz - 4d0/9d0*zu**(-2)*Hmz + 8d0/9d0*zu**(-1)*yt1**(-1) + 28d0/9d0*&
            &    zu**(-1)*yt1**(-1)*Hmz + 4d0/9d0*zu**(-1) + 10./9d0*zu**(-1)*Hmz&
            &     - 4d0/9d0*yt1**(-3)*H0my + 68d0/9d0*yt1**(-2) - 28d0/9d0*yt1**(-2)&
            &    *Hp0x - 2d0/9d0*yt1**(-2)*H0my - 28d0/9d0*yt1**(-2)*Hm0x - 68d0/9d0&
            &    *yt1**(-2)*Hmy + 24d0*yt1**(-2)*Hmy*Hmx - 8d0*yt1**(-2)*Hmz*Hmy&
            &     - 80./9d0*yt1**(-2)*H0x*Hmy - 32d0/3d0*yt1**(-1) - 128d0/9d0*&
            &    yt1**(-1)*xp2 + 14d0/3d0*yt1**(-1)*Hp0x + 28d0/3d0*yt1**(-1)*Hp0x&
            &    *xp2 - 56d0/9d0*yt1**(-1)*Hp0x*xp3 - 12d0*yt1**(-1)*Hmmy + 8d0*&
            &    yt1**(-1)*Hmmy*xp2 + 6d0*yt1**(-1)*H0my - 2d0/3d0*yt1**(-1)*H0my&
            &    *xp2 - 30.*yt1**(-1)*Hmmx + 184d0/9d0*yt1**(-1)*Hm0x + 28d0/3d0*&
            &    yt1**(-1)*Hm0x*xp2 - 56d0/9d0*yt1**(-1)*Hm0x*xp3 - 6d0*yt1**(-1)&
            &    *Hmmz + 8d0*yt1**(-1)*Hmmz*xp2 + 16d0/3d0*yt1**(-1)*H0mz - 2d0/3d0&
            &    *yt1**(-1)*H0mz*xp2 + 15d0*yt1**(-1)*H0mx + 36d0*yt1**(-1)*H0mx&
            &    *xm2 - 24d0*yt1**(-1)*H0mx*xm3 - 121d0/18d0*yt1**(-1)*H00x - 18d0&
            &    *yt1**(-1)*H00x*xm2 + 14d0/9d0*yt1**(-1)*H00x*xp2 + 12d0*&
            &    yt1**(-1)*H00x*xm3 - 6d0*yt1**(-1)*Hmx - 24d0*yt1**(-1)*Hmx*xm2&
            &     + 62d0/9d0*yt1**(-1)*Hmy + 64d0/9d0*yt1**(-1)*Hmy*xp2 - 18d0*&
            &    yt1**(-1)*Hmy*Hmx - 24d0*yt1**(-1)*Hmy*Hmx*xp2 + 34d0/9d0*&
            &    yt1**(-1)*Hmz + 64d0/9d0*yt1**(-1)*Hmz*xp2 + 12d0*yt1**(-1)*Hmz*&
            &    Hmx - 24d0*yt1**(-1)*Hmz*Hmx*xp2 + 6d0*yt1**(-1)*Hmz*Hmy + 8d0*&
            &    yt1**(-1)*Hmz*Hmy*xp2 + 34d0/9d0*yt1**(-1)*H0x + 12d0*yt1**(-1)*&
            &    H0x*xm2 + 20./3d0*yt1**(-1)*H0x*Hmy + 22d0/3d0*yt1**(-1)*H0x*Hmy&
            &    *xp2 + 28d0/9d0*yt1**(-1)*H0x*Hmy*xp3 - 82d0/9d0*yt1**(-1)*H0x*&
            &    Hmz + 22d0/3d0*yt1**(-1)*H0x*Hmz*xp2 + 28d0/9d0*yt1**(-1)*H0x*Hmz&
            &    *xp3 - 4d0/9d0*zu1**(-3)*H0mz + 68d0/9d0*zu1**(-2) - 28d0/9d0*&
            &    zu1**(-2)*Hp0x - 28d0/9d0*zu1**(-2)*Hm0x - 2d0/9d0*zu1**(-2)*H0mz&
            &     - 68d0/9d0*zu1**(-2)*Hmz + 24d0*zu1**(-2)*Hmz*Hmx - 8d0*&
            &    zu1**(-2)*Hmz*Hmy - 80./9d0*zu1**(-2)*H0x*Hmz - 32d0/3d0*&
            &    zu1**(-1) - 128d0/9d0*zu1**(-1)*xp2 + 14d0/3d0*zu1**(-1)*Hp0x + &
            &    28d0/3d0*zu1**(-1)*Hp0x*xp2 - 56d0/9d0*zu1**(-1)*Hp0x*xp3 - 6d0*&
            &    zu1**(-1)*Hmmy + 8d0*zu1**(-1)*Hmmy*xp2 + 16d0/3d0*zu1**(-1)*&
            &    H0my - 2d0/3d0*zu1**(-1)*H0my*xp2 - 30.*zu1**(-1)*Hmmx + 184d0/9d0&
            &    *zu1**(-1)*Hm0x + 28d0/3d0*zu1**(-1)*Hm0x*xp2 - 56d0/9d0*&
            &    zu1**(-1)*Hm0x*xp3 - 12d0*zu1**(-1)*Hmmz + 8d0*zu1**(-1)*Hmmz*&
            &    xp2 + 6d0*zu1**(-1)*H0mz - 2d0/3d0*zu1**(-1)*H0mz*xp2 + 15d0*&
            &    zu1**(-1)*H0mx + 36d0*zu1**(-1)*H0mx*xm2 - 24d0*zu1**(-1)*H0mx*&
            &    xm3 - 121d0/18d0*zu1**(-1)*H00x - 18d0*zu1**(-1)*H00x*xm2 + 14d0/&
            &    9d0*zu1**(-1)*H00x*xp2 + 12d0*zu1**(-1)*H00x*xm3 - 6d0*zu1**(-1)&
            &    *Hmx - 24d0*zu1**(-1)*Hmx*xm2 + 34d0/9d0*zu1**(-1)*Hmy + 64d0/9d0*&
            &    zu1**(-1)*Hmy*xp2 + 12d0*zu1**(-1)*Hmy*Hmx - 24d0*zu1**(-1)*Hmy&
            &    *Hmx*xp2 + 62d0/9d0*zu1**(-1)*Hmz + 64d0/9d0*zu1**(-1)*Hmz*xp2 - &
            &    18d0*zu1**(-1)*Hmz*Hmx - 24d0*zu1**(-1)*Hmz*Hmx*xp2 + 6d0*&
            &    zu1**(-1)*Hmz*Hmy + 8d0*zu1**(-1)*Hmz*Hmy*xp2 + 34d0/9d0*&
            &    zu1**(-1)*H0x + 12d0*zu1**(-1)*H0x*xm2 - 82d0/9d0*zu1**(-1)*H0x*&
            &    Hmy + 22d0/3d0*zu1**(-1)*H0x*Hmy*xp2 + 28d0/9d0*zu1**(-1)*H0x*Hmy&
            &    *xp3 + 20./3d0*zu1**(-1)*H0x*Hmz + 22d0/3d0*zu1**(-1)*H0x*Hmz*&
            &    xp2 + 28d0/9d0*zu1**(-1)*H0x*Hmz*xp3 - 14d0/9d0*Hp0x + 10.*Hmmy&
            &     - 79d0/18d0*H0my + 24d0*Hmmx - 115d0/9d0*Hm0x + 10.*Hmmz - 79d0/18d0&
            &    *H0mz - 6d0*H0mx - 36d0*H0mx*xm2 + 24d0*H0mx*xm3 + 20./9d0*H00x&
            &     + 18d0*H00x*xm2 - 12d0*H00x*xm3 + 6d0*Hmx + 24d0*Hmx*xm2 - 22d0/9d0&
            &    *Hmy + 12d0*Hmy*Hmx*xp2 - 26d0/9d0*Hmz - 12d0*Hmz*Hmx - 12d0*Hmz*&
            &    Hmx*xp2 - 2d0*Hmz*Hmy - 34d0/9d0*H0x - 12d0*H0x*xm2 + 7d0/18d0*H0x*&
            &    Hmy - 6d0*H0x*Hmy*xp2 + 115d0/18d0*H0x*Hmz + 6d0*H0x*Hmz*xp2 - 4d0/&
            &    9d0*yt*zu**(-1)*Hmz + 12d0*yt*Hmy*Hmx*xp2 - 12d0*yt*Hmz*Hmx*xp2&
            &     - 6d0*yt*H0x*Hmy*xp2 + 6d0*yt*H0x*Hmz*xp2 + 28d0/9d0*xm1*&
            &    yt1**(-2)*Hp0x + 28d0/9d0*xm1*yt1**(-2)*Hm0x - 28d0/9d0*xm1*&
            &    yt1**(-2)*H0x*Hmy - 14d0/3d0*xm1*yt1**(-1)*Hp0x - 14d0/3d0*xm1*&
            &    yt1**(-1)*Hm0x - 6d0*xm1*yt1**(-1)*H0mx + 3d0*xm1*yt1**(-1)*&
            &    H00x + 24d0*xm1*yt1**(-1)*Hmx - 122d0/9d0*xm1*yt1**(-1)*H0x + 7d0/&
            &    3d0*xm1*yt1**(-1)*H0x*Hmy + 7d0/3d0*xm1*yt1**(-1)*H0x*Hmz + 28d0/&
            &    9d0*xm1*zu1**(-2)*Hp0x + 28d0/9d0*xm1*zu1**(-2)*Hm0x - 28d0/9d0*&
            &    xm1*zu1**(-2)*H0x*Hmz - 14d0/3d0*xm1*zu1**(-1)*Hp0x - 14d0/3d0*&
            &    xm1*zu1**(-1)*Hm0x - 6d0*xm1*zu1**(-1)*H0mx + 3d0*xm1*zu1**(-1)&
            &    *H00x + 24d0*xm1*zu1**(-1)*Hmx - 122d0/9d0*xm1*zu1**(-1)*H0x + 7d0&
            &   /3d0*xm1*zu1**(-1)*H0x*Hmy + 7d0/3d0*xm1*zu1**(-1)*H0x*Hmz + 14d0/&
            &    9d0*xm1*Hp0x + 14d0/9d0*xm1*Hm0x + 6d0*xm1*H0mx - 3d0*xm1*H00x - &
            &    24d0*xm1*Hmx + 122d0/9d0*xm1*H0x - 7d0/9d0*xm1*H0x*Hmy - 7d0/9d0*xm1&
            &    *H0x*Hmz + 28d0/9d0*xp1*yt1**(-2)*Hp0x + 28d0/9d0*xp1*yt1**(-2)*&
            &    Hm0x - 28d0/9d0*xp1*yt1**(-2)*H0x*Hmy + 128d0/9d0*xp1*yt1**(-1)&
            &     - 70./9d0*xp1*yt1**(-1)*Hp0x - 8d0*xp1*yt1**(-1)*Hmmy + 2d0/3d0*&
            &    xp1*yt1**(-1)*H0my - 28d0/3d0*xp1*yt1**(-1)*Hm0x - 8d0*xp1*&
            &    yt1**(-1)*Hmmz + 2d0/3d0*xp1*yt1**(-1)*H0mz - 6d0*xp1*yt1**(-1)*&
            &    H0mx + 20./9d0*xp1*yt1**(-1)*H00x - 64d0/9d0*xp1*yt1**(-1)*Hmy&
            &     + 24d0*xp1*yt1**(-1)*Hmy*Hmx - 64d0/9d0*xp1*yt1**(-1)*Hmz + 24d0&
            &    *xp1*yt1**(-1)*Hmz*Hmx - 8d0*xp1*yt1**(-1)*Hmz*Hmy - 73d0/9d0*&
            &    xp1*yt1**(-1)*H0x*Hmy - 59d0/9d0*xp1*yt1**(-1)*H0x*Hmz + 28d0/9d0&
            &    *xp1*zu1**(-2)*Hp0x + 28d0/9d0*xp1*zu1**(-2)*Hm0x - 28d0/9d0*xp1*&
            &    zu1**(-2)*H0x*Hmz + 128d0/9d0*xp1*zu1**(-1) - 70./9d0*xp1*&
            &    zu1**(-1)*Hp0x - 8d0*xp1*zu1**(-1)*Hmmy + 2d0/3d0*xp1*zu1**(-1)*&
            &    H0my - 28d0/3d0*xp1*zu1**(-1)*Hm0x - 8d0*xp1*zu1**(-1)*Hmmz + 2d0/&
            &    3d0*xp1*zu1**(-1)*H0mz - 6d0*xp1*zu1**(-1)*H0mx + 20./9d0*xp1*&
            &    zu1**(-1)*H00x - 64d0/9d0*xp1*zu1**(-1)*Hmy + 24d0*xp1*zu1**(-1)&
            &    *Hmy*Hmx - 64d0/9d0*xp1*zu1**(-1)*Hmz + 24d0*xp1*zu1**(-1)*Hmz*&
            &    Hmx - 8d0*xp1*zu1**(-1)*Hmz*Hmy - 59d0/9d0*xp1*zu1**(-1)*H0x*Hmy&
            &     - 73d0/9d0*xp1*zu1**(-1)*H0x*Hmz + 14d0/9d0*xp1*Hp0x - 6d0*xp1*&
            &    H0mx + 34d0/9d0*xp1*H00x - 12d0*xp1*Hmy*Hmx + 12d0*xp1*Hmz*Hmx + &
            &    6d0*xp1*H0x*Hmy - 6d0*xp1*H0x*Hmz - 12d0*xp1*yt*Hmy*Hmx + 12d0*&
            &    xp1*yt*Hmz*Hmx + 6d0*xp1*yt*H0x*Hmy - 6d0*xp1*yt*H0x*Hmz - 4d0/9d0&
            &    *x*yt**(-1)*Hmy - 2d0/9d0*x*yt1**(-3)*H0my + 2d0/9d0*x*yt1**(-2)&
            &     - 2d0/9d0*x*yt1**(-2)*Hmy - 4d0/3d0*x*yt1**(-1) + 7d0/9d0*x*&
            &    yt1**(-1)*Hp0x - 2d0*x*yt1**(-1)*Hmmy + 8d0/9d0*x*yt1**(-1)*H0my&
            &     - 9d0*x*yt1**(-1)*Hmmx + 17d0/3d0*x*yt1**(-1)*Hm0x - 5d0*x*&
            &    yt1**(-1)*Hmmz + 25d0/9d0*x*yt1**(-1)*H0mz + 3d0*x*yt1**(-1)*&
            &    H0mx - 10./9d0*x*yt1**(-1)*H00x + 16d0/9d0*x*yt1**(-1)*Hmy - 3d0*&
            &    x*yt1**(-1)*Hmy*Hmx + 6d0*x*yt1**(-1)*Hmz*Hmx + x*yt1**(-1)*&
            &    Hmz*Hmy + 10./9d0*x*yt1**(-1)*H0x*Hmy - 34d0/9d0*x*yt1**(-1)*H0x&
            &    *Hmz - 2d0/9d0*x*zu1**(-3)*H0mz + 2d0/9d0*x*zu1**(-2) - 2d0/9d0*x*&
            &    zu1**(-2)*Hmz - 4d0/3d0*x*zu1**(-1) + 7d0/9d0*x*zu1**(-1)*Hp0x - &
            &    5d0*x*zu1**(-1)*Hmmy + 25d0/9d0*x*zu1**(-1)*H0my - 9d0*x*&
            &    zu1**(-1)*Hmmx + 17d0/3d0*x*zu1**(-1)*Hm0x - 2d0*x*zu1**(-1)*&
            &    Hmmz + 8d0/9d0*x*zu1**(-1)*H0mz + 3d0*x*zu1**(-1)*H0mx - 10./9d0*&
            &    x*zu1**(-1)*H00x + 6d0*x*zu1**(-1)*Hmy*Hmx + 16d0/9d0*x*&
            &    zu1**(-1)*Hmz - 3d0*x*zu1**(-1)*Hmz*Hmx + x*zu1**(-1)*Hmz*Hmy&
            &     - 34d0/9d0*x*zu1**(-1)*H0x*Hmy + 10./9d0*x*zu1**(-1)*H0x*Hmz - &
            &    Pi*cI*x**(-1)*yt1**(-1)*Hpx + Pi*cI*x**(-1)*yt1**(-1)*Hmy - &
            &    Pi*cI*x**(-1)*zu1**(-1)*Hpx + Pi*cI*x**(-1)*zu1**(-1)*Hmz - 4d0&
            &    *Pi*cI*yt1**(-2)*Hpx - 4d0*Pi*cI*yt1**(-2)*Hmx + 2d0*Pi*cI*&
            &    yt1**(-1) + 4d0*Pi*cI*yt1**(-1)*xm2 + 6d0*Pi*cI*yt1**(-1)*Hpx&
            &     + 12d0*Pi*cI*yt1**(-1)*Hpx*xp2 - 8d0*Pi*cI*yt1**(-1)*Hpx*xp3&
            &     + 12d0*Pi*cI*yt1**(-1)*Hmx + 12d0*Pi*cI*yt1**(-1)*Hmx*xp2 - 8d0&
            &    *Pi*cI*yt1**(-1)*Hmx*xp3 - 2d0*Pi*cI*yt1**(-1)*Hmy*xp2 + 4d0*Pi&
            &    *cI*yt1**(-1)*Hmy*xp3 - 6d0*Pi*cI*yt1**(-1)*Hmz - 2d0*Pi*cI*&
            &    yt1**(-1)*Hmz*xp2 + 4d0*Pi*cI*yt1**(-1)*Hmz*xp3 - 3d0/2d0*Pi*cI*&
            &    yt1**(-1)*H0x - 6d0*Pi*cI*yt1**(-1)*H0x*xm2 + 2d0*Pi*cI*&
            &    yt1**(-1)*H0x*xp2 + 4d0*Pi*cI*yt1**(-1)*H0x*xm3 - 4d0*Pi*cI*&
            &    zu1**(-2)*Hpx - 4d0*Pi*cI*zu1**(-2)*Hmx + 2d0*Pi*cI*zu1**(-1)&
            &     + 4d0*Pi*cI*zu1**(-1)*xm2 + 6d0*Pi*cI*zu1**(-1)*Hpx + 12d0*Pi*&
            &    cI*zu1**(-1)*Hpx*xp2 - 8d0*Pi*cI*zu1**(-1)*Hpx*xp3 + 12d0*Pi*cI&
            &    *zu1**(-1)*Hmx + 12d0*Pi*cI*zu1**(-1)*Hmx*xp2 - 8d0*Pi*cI*&
            &    zu1**(-1)*Hmx*xp3 - 6d0*Pi*cI*zu1**(-1)*Hmy - 2d0*Pi*cI*&
            &    zu1**(-1)*Hmy*xp2 + 4d0*Pi*cI*zu1**(-1)*Hmy*xp3 - 2d0*Pi*cI*&
            &    zu1**(-1)*Hmz*xp2 + 4d0*Pi*cI*zu1**(-1)*Hmz*xp3 - 3d0/2d0*Pi*cI*&
            &    zu1**(-1)*H0x - 6d0*Pi*cI*zu1**(-1)*H0x*xm2 + 2d0*Pi*cI*&
            &    zu1**(-1)*H0x*xp2 + 4d0*Pi*cI*zu1**(-1)*H0x*xm3 - 2d0*Pi*cI - 4d0&
            &    *Pi*cI*xm2 - 2d0*Pi*cI*Hpx - 5d0*Pi*cI*Hmx + 1d0/2d0*Pi*cI*Hmy - &
            &    2d0*Pi*cI*Hmy*xp2 + 5d0/2d0*Pi*cI*Hmz + 2d0*Pi*cI*Hmz*xp2 + 6d0*Pi&
            &    *cI*H0x*xm2 - 4d0*Pi*cI*H0x*xm3 - 2d0*Pi*cI*yt*Hmy*xp2 + 2d0*Pi*&
            &    cI*yt*Hmz*xp2 + 4d0*Pi*cI*xm1*yt1**(-2)*Hpx + 4d0*Pi*cI*xm1*&
            &    yt1**(-2)*Hmx - 4d0*Pi*cI*xm1*yt1**(-2)*Hmy - 6d0*Pi*cI*xm1*&
            &    yt1**(-1) - 6d0*Pi*cI*xm1*yt1**(-1)*Hpx - 6d0*Pi*cI*xm1*&
            &    yt1**(-1)*Hmx + 3d0*Pi*cI*xm1*yt1**(-1)*Hmy + 3d0*Pi*cI*xm1*&
            &    yt1**(-1)*Hmz + Pi*cI*xm1*yt1**(-1)*H0x + 4d0*Pi*cI*xm1*&
            &    zu1**(-2)*Hpx + 4d0*Pi*cI*xm1*zu1**(-2)*Hmx - 4d0*Pi*cI*xm1*&
            &    zu1**(-2)*Hmz - 6d0*Pi*cI*xm1*zu1**(-1) - 6d0*Pi*cI*xm1*&
            &    zu1**(-1)*Hpx - 6d0*Pi*cI*xm1*zu1**(-1)*Hmx + 3d0*Pi*cI*xm1*&
            &    zu1**(-1)*Hmy + 3d0*Pi*cI*xm1*zu1**(-1)*Hmz + Pi*cI*xm1*&
            &    zu1**(-1)*H0x + 6d0*Pi*cI*xm1 + 2d0*Pi*cI*xm1*Hpx + 2d0*Pi*cI*&
            &    xm1*Hmx - Pi*cI*xm1*Hmy - Pi*cI*xm1*Hmz - Pi*cI*xm1*H0x + 4d0*&
            &    Pi*cI*xp1*yt1**(-2)*Hpx + 4d0*Pi*cI*xp1*yt1**(-2)*Hmx - 4d0*Pi*&
            &    cI*xp1*yt1**(-2)*Hmy - 10.*Pi*cI*xp1*yt1**(-1)*Hpx - 12d0*Pi*&
            &    cI*xp1*yt1**(-1)*Hmx + Pi*cI*xp1*yt1**(-1)*Hmy + 3d0*Pi*cI*xp1&
            &    *yt1**(-1)*Hmz + 4d0*Pi*cI*xp1*zu1**(-2)*Hpx + 4d0*Pi*cI*xp1*&
            &    zu1**(-2)*Hmx - 4d0*Pi*cI*xp1*zu1**(-2)*Hmz - 10.*Pi*cI*xp1*&
            &    zu1**(-1)*Hpx - 12d0*Pi*cI*xp1*zu1**(-1)*Hmx + 3d0*Pi*cI*xp1*&
            &    zu1**(-1)*Hmy + Pi*cI*xp1*zu1**(-1)*Hmz + 2d0*Pi*cI*xp1*Hpx + &
            &    2d0*Pi*cI*xp1*Hmy - 2d0*Pi*cI*xp1*Hmz + 2d0*Pi*cI*xp1*H0x + 2d0*&
            &    Pi*cI*xp1*yt*Hmy - 2d0*Pi*cI*xp1*yt*Hmz + Pi*cI*x*yt1**(-1)*&
            &    Hpx + 3d0*Pi*cI*x*yt1**(-1)*Hmx - 2d0*Pi*cI*x*yt1**(-1)*Hmz + &
            &    Pi*cI*x*zu1**(-1)*Hpx + 3d0*Pi*cI*x*zu1**(-1)*Hmx - 2d0*Pi*cI*x&
            &    *zu1**(-1)*Hmy - 2d0/9d0*z2*x**(-1)*yt1**(-3) + 8d0/9d0*z2*&
            &    x**(-1)*yt1**(-1) - 2d0/9d0*z2*x**(-1)*zu1**(-3) + 8d0/9d0*z2*&
            &    x**(-1)*zu1**(-1) - 4d0/9d0*z2*yt1**(-3) - 50./9d0*z2*yt1**(-2)&
            &     + 211d0/18d0*z2*yt1**(-1) - 18d0*z2*yt1**(-1)*xm2 + 24d0*z2*&
            &    yt1**(-1)*xp2 + 12d0*z2*yt1**(-1)*xm3 + 28d0/3d0*z2*yt1**(-1)*&
            &    xp3 - 4d0/9d0*z2*zu1**(-3) - 50./9d0*z2*zu1**(-2) + 211d0/18d0*z2*&
            &    zu1**(-1) - 18d0*z2*zu1**(-1)*xm2 + 24d0*z2*zu1**(-1)*xp2 + 12d0&
            &    *z2*zu1**(-1)*xm3 + 28d0/3d0*z2*zu1**(-1)*xp3 - 8d0/9d0*z2 + 18d0*&
            &    z2*xm2 - 12d0*z2*xm3 - 14d0/3d0*z2*xm1*yt1**(-2) + 10.*z2*xm1*&
            &    yt1**(-1) - 14d0/3d0*z2*xm1*zu1**(-2) + 10.*z2*xm1*zu1**(-1) - &
            &    16d0/3d0*z2*xm1 - 14d0/3d0*z2*xp1*yt1**(-2) - 217d0/9d0*z2*xp1*&
            &    yt1**(-1) - 14d0/3d0*z2*xp1*zu1**(-2) - 217d0/9d0*z2*xp1*&
            &    zu1**(-1) - 1d0/9d0*z2*xp1 - 2d0/9d0*z2*x*yt1**(-3) + 4d0/9d0*z2*x*&
            &    yt1**(-1) - 2d0/9d0*z2*x*zu1**(-3) + 4d0/9d0*z2*x*zu1**(-1)

       do i = 0, 2
          Hgg1_coeff(i,2,1) = conjg(Hgg1_coeff(i,1,2))
       end do

       Hgg1_coeff(2,2,2) = ( 18d0 - 3d0*x**(-1)*&
            &    yt1**(-1) - 3d0*x**(-1)*zu1**(-1) + 12d0*yt1**(-2) - 18d0*&
            &    yt1**(-1) + 24d0*yt1**(-1)*xp2 + 12d0*zu1**(-2) - 18d0*zu1**(-1)&
            &     + 24d0*zu1**(-1)*xp2 - 48d0*xp3 + 24d0*xp4 + 72d0*yt*xp2 - 96d0*&
            &    yt*xp3 + 48d0*yt*xp4 + 24d0*yt**2*xp2 - 48d0*yt**2*xp3 + 24d0*&
            &    yt**2*xp4 - 24d0*xp1*yt1**(-1) - 24d0*xp1*zu1**(-1) + 24d0*xp1&
            &     - 24d0*xp1*yt - 3d0*x*yt1**(-1) - 3d0*x*zu1**(-1) )
       Hgg1_coeff(1,2,2) = ( 16d0 - 8d0/3d0*x**(-1)*yt1**(-1) + 6d0*x**(-1)*&
            &    yt1**(-1)*Hmx + 6d0*x**(-1)*yt1**(-1)*Hmy - 8d0/3d0*x**(-1)*&
            &    yt1**(-1)*H0x - 8d0/3d0*x**(-1)*zu1**(-1) + 6d0*x**(-1)*&
            &    zu1**(-1)*Hmx + 6d0*x**(-1)*zu1**(-1)*Hmz - 8d0/3d0*x**(-1)*&
            &    zu1**(-1)*H0x + 32d0/3d0*yt1**(-2) - 24d0*yt1**(-2)*Hmx - 24d0*&
            &    yt1**(-2)*Hmy + 40./3d0*yt1**(-2)*H0x - 16d0*yt1**(-1) + 64d0/3d0&
            &    *yt1**(-1)*xp2 + 36d0*yt1**(-1)*Hmx - 48d0*yt1**(-1)*Hmx*xp2 + &
            &    36d0*yt1**(-1)*Hmy - 24d0*yt1**(-1)*Hmy*xp2 - 24d0*yt1**(-1)*Hmz&
            &    *xp2 - 20.*yt1**(-1)*H0x + 28d0*yt1**(-1)*H0x*xp2 - 8d0/3d0*&
            &    yt1**(-1)*H0x*xp3 + 32d0/3d0*zu1**(-2) - 24d0*zu1**(-2)*Hmx - 24d0&
            &    *zu1**(-2)*Hmz + 40./3d0*zu1**(-2)*H0x - 16d0*zu1**(-1) + 64d0/3d0&
            &    *zu1**(-1)*xp2 + 36d0*zu1**(-1)*Hmx - 48d0*zu1**(-1)*Hmx*xp2 - &
            &    24d0*zu1**(-1)*Hmy*xp2 + 36d0*zu1**(-1)*Hmz - 24d0*zu1**(-1)*Hmz&
            &    *xp2 - 20.*zu1**(-1)*H0x + 28d0*zu1**(-1)*H0x*xp2 - 8d0/3d0*&
            &    zu1**(-1)*H0x*xp3 - 128d0/3d0*xp3 + 64d0/3d0*xp4 - 36d0*Hmx + 96d0*&
            &    Hmx*xp3 - 48d0*Hmx*xp4 - 24d0*Hmy - 12d0*Hmy*xp2 + 48d0*Hmy*xp3&
            &     - 24d0*Hmy*xp4 - 12d0*Hmz + 12d0*Hmz*xp2 + 48d0*Hmz*xp3 - 24d0*&
            &    Hmz*xp4 + 20.*H0x - 5d0/3d0*H0x*xp2 - 154d0/3d0*H0x*xp3 + 92d0/3d0*&
            &    H0x*xp4 - 8d0/3d0*H0x*xp5 + 64d0*yt*xp2 - 256d0/3d0*yt*xp3 + 128d0/&
            &    3d0*yt*xp4 - 144d0*yt*Hmx*xp2 + 192d0*yt*Hmx*xp3 - 96d0*yt*Hmx*&
            &    xp4 - 84d0*yt*Hmy*xp2 + 96d0*yt*Hmy*xp3 - 48d0*yt*Hmy*xp4 - 60.*&
            &    yt*Hmz*xp2 + 96d0*yt*Hmz*xp3 - 48d0*yt*Hmz*xp4 + 242d0/3d0*yt*H0x&
            &    *xp2 - 332d0/3d0*yt*H0x*xp3 + 184d0/3d0*yt*H0x*xp4 - 16d0/3d0*yt*&
            &    H0x*xp5 + 64d0/3d0*yt**2*xp2 - 128d0/3d0*yt**2*xp3 + 64d0/3d0*yt**2&
            &    *xp4 - 48d0*yt**2*Hmx*xp2 + 96d0*yt**2*Hmx*xp3 - 48d0*yt**2*Hmx*&
            &    xp4 - 24d0*yt**2*Hmy*xp2 + 48d0*yt**2*Hmy*xp3 - 24d0*yt**2*Hmy*&
            &    xp4 - 24d0*yt**2*Hmz*xp2 + 48d0*yt**2*Hmz*xp3 - 24d0*yt**2*Hmz*&
            &    xp4 + 79d0/3d0*yt**2*H0x*xp2 - 54d0*yt**2*H0x*xp3 + 92d0/3d0*yt**2&
            &    *H0x*xp4 - 8d0/3d0*yt**2*H0x*xp5 - 4d0/3d0*xm1*yt1**(-2)*H0x + 10.&
            &   /3d0*xm1*yt1**(-1)*H0x - 4d0/3d0*xm1*zu1**(-2)*H0x + 10./3d0*xm1*&
            &    zu1**(-1)*H0x - 17d0/6d0*xm1*H0x + 1d0/3d0*xm1*yt*H0x - 1d0/6d0*xm1&
            &    *yt**2*H0x - 4d0/3d0*xp1*yt1**(-2)*H0x - 64d0/3d0*xp1*yt1**(-1)&
            &     + 48d0*xp1*yt1**(-1)*Hmx + 24d0*xp1*yt1**(-1)*Hmy + 24d0*xp1*&
            &    yt1**(-1)*Hmz - 74d0/3d0*xp1*yt1**(-1)*H0x - 4d0/3d0*xp1*&
            &    zu1**(-2)*H0x - 64d0/3d0*xp1*zu1**(-1) + 48d0*xp1*zu1**(-1)*Hmx&
            &     + 24d0*xp1*zu1**(-1)*Hmy + 24d0*xp1*zu1**(-1)*Hmz - 74d0/3d0*xp1&
            &    *zu1**(-1)*H0x + 64d0/3d0*xp1 - 48d0*xp1*Hmx - 12d0*xp1*Hmy - 36d0&
            &    *xp1*Hmz + 143d0/6d0*xp1*H0x - 64d0/3d0*xp1*yt + 48d0*xp1*yt*Hmx&
            &     + 36d0*xp1*yt*Hmy + 12d0*xp1*yt*Hmz - 79d0/3d0*xp1*yt*H0x - 1d0/6d0&
            &    *xp1*yt**2*H0x - 8d0/3d0*x*yt1**(-1) + 6d0*x*yt1**(-1)*Hmx + 6d0*&
            &    x*yt1**(-1)*Hmy - 10./3d0*x*yt1**(-1)*H0x - 8d0/3d0*x*zu1**(-1)&
            &     + 6d0*x*zu1**(-1)*Hmx + 6d0*x*zu1**(-1)*Hmz - 10./3d0*x*&
            &    zu1**(-1)*H0x )
       Hgg1_coeff(0,2,2) = + 62d0/3d0 - 4d0/3d0*x**(-1)*yt**(-1)&
            &    *Hmy - 2d0/3d0*x**(-1)*yt1**(-3)*H0my + 2d0/3d0*x**(-1)*yt1**(-2)&
            &     - 2d0/3d0*x**(-1)*yt1**(-2)*Hmy - 4d0*x**(-1)*yt1**(-1) + 2d0/3d0&
            &    *x**(-1)*yt1**(-1)*Hp0x - 6d0*x**(-1)*yt1**(-1)*Hmmy + 8d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0my + 6d0*x**(-1)*yt1**(-1)*Hmmx - 10./3d0*&
            &    x**(-1)*yt1**(-1)*Hm0x + 12d0*x**(-1)*yt1**(-1)*Hmmz - 16d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0mz - 12d0*x**(-1)*yt1**(-1)*H0mx + 20./3d0*&
            &    x**(-1)*yt1**(-1)*H00x + 16d0/3d0*x**(-1)*yt1**(-1)*Hmy - 6d0*&
            &    x**(-1)*yt1**(-1)*Hmy*Hmx - 12d0*x**(-1)*yt1**(-1)*Hmz*Hmx + 8d0&
            &   /3d0*x**(-1)*yt1**(-1)*H0x*Hmy + 20./3d0*x**(-1)*yt1**(-1)*H0x*&
            &    Hmz - 2d0/3d0*x**(-1)*zu1**(-3)*H0mz + 2d0/3d0*x**(-1)*zu1**(-2)&
            &     - 2d0/3d0*x**(-1)*zu1**(-2)*Hmz - 4d0*x**(-1)*zu1**(-1) + 2d0/3d0&
            &    *x**(-1)*zu1**(-1)*Hp0x + 12d0*x**(-1)*zu1**(-1)*Hmmy - 16d0/3d0&
            &    *x**(-1)*zu1**(-1)*H0my + 6d0*x**(-1)*zu1**(-1)*Hmmx - 10./3d0*&
            &    x**(-1)*zu1**(-1)*Hm0x - 6d0*x**(-1)*zu1**(-1)*Hmmz + 8d0/3d0*&
            &    x**(-1)*zu1**(-1)*H0mz - 12d0*x**(-1)*zu1**(-1)*H0mx + 20./3d0*&
            &    x**(-1)*zu1**(-1)*H00x - 12d0*x**(-1)*zu1**(-1)*Hmy*Hmx + 16d0/&
            &    3d0*x**(-1)*zu1**(-1)*Hmz - 6d0*x**(-1)*zu1**(-1)*Hmz*Hmx + 20./&
            &    3d0*x**(-1)*zu1**(-1)*H0x*Hmy + 8d0/3d0*x**(-1)*zu1**(-1)*H0x*&
            &    Hmz + 8d0/3d0*yt**(-2)*zu1**(-1)*Hmy - 4d0/3d0*yt**(-2)*Hmy + 8d0/&
            &    3d0*yt**(-2)*Hmy*xp2 - 8d0/3d0*yt**(-1)*zu1**(-1) - 28d0/3d0*&
            &    yt**(-1)*zu1**(-1)*Hmy + 4d0/3d0*yt**(-1) - 8d0/3d0*yt**(-1)*xp2&
            &     + 6d0*yt**(-1)*Hmy - 28d0/3d0*yt**(-1)*Hmy*xp2 + 8d0/3d0*zu**(-2)&
            &    *yt1**(-1)*Hmz - 4d0/3d0*zu**(-2)*Hmz + 8d0/3d0*zu**(-2)*Hmz*xp2&
            &     - 8d0/3d0*zu**(-1)*yt1**(-1) - 28d0/3d0*zu**(-1)*yt1**(-1)*Hmz&
            &     + 4d0/3d0*zu**(-1) - 8d0/3d0*zu**(-1)*xp2 + 6d0*zu**(-1)*Hmz - 28d0&
            &   /3d0*zu**(-1)*Hmz*xp2 - 4d0/3d0*yt1**(-3)*H0my + 68d0/3d0*&
            &    yt1**(-2) + 8d0/3d0*yt1**(-2)*Hp0x + 2d0/3d0*yt1**(-2)*H0my + 8d0/&
            &    3d0*yt1**(-2)*Hm0x - 68d0/3d0*yt1**(-2)*Hmy + 48d0*yt1**(-2)*Hmy*&
            &    Hmx - 80./3d0*yt1**(-2)*H0x*Hmy - 76d0/3d0*yt1**(-1) + 24d0*&
            &    yt1**(-1)*xm2 + 80./3d0*yt1**(-1)*xp2 - 4d0*yt1**(-1)*Hp0x + 8d0&
            &    *yt1**(-1)*Hp0x*xp2 - 16d0/3d0*yt1**(-1)*Hp0x*xp3 - 36d0*&
            &    yt1**(-1)*Hmmy + 18d0*yt1**(-1)*H0my - 10./3d0*yt1**(-1)*H0my*&
            &    xp2 - 12d0*yt1**(-1)*Hmmx + 20./3d0*yt1**(-1)*Hm0x + 8d0*&
            &    yt1**(-1)*Hm0x*xp2 - 16d0/3d0*yt1**(-1)*Hm0x*xp3 + 24d0*&
            &    yt1**(-1)*Hmmz - 10.*yt1**(-1)*H0mz + 2d0*yt1**(-1)*H0mz*xp2&
            &     + 42d0*yt1**(-1)*H0mx + 180.*yt1**(-1)*H0mx*xm2 - 600.*&
            &    yt1**(-1)*H0mx*xm3 + 720.*yt1**(-1)*H0mx*xm4 - 288d0*yt1**(-1)&
            &    *H0mx*xm5 - 67d0/3d0*yt1**(-1)*H00x - 90.*yt1**(-1)*H00x*xm2 - &
            &    4d0*yt1**(-1)*H00x*xp2 + 300.*yt1**(-1)*H00x*xm3 - 360.*&
            &    yt1**(-1)*H00x*xm4 + 144d0*yt1**(-1)*H00x*xm5 + 18d0*yt1**(-1)*&
            &    Hmx - 336d0*yt1**(-1)*Hmx*xm2 + 576d0*yt1**(-1)*Hmx*xm3 - 288d0*&
            &    yt1**(-1)*Hmx*xm4 + 22d0*yt1**(-1)*Hmy - 64d0/3d0*yt1**(-1)*Hmy*&
            &    xp2 - 36d0*yt1**(-1)*Hmy*Hmx + 48d0*yt1**(-1)*Hmy*Hmx*xp2 - 34d0/&
            &    3d0*yt1**(-1)*Hmz - 64d0/3d0*yt1**(-1)*Hmz*xp2 - 24d0*yt1**(-1)*&
            &    Hmz*Hmx + 48d0*yt1**(-1)*Hmz*Hmx*xp2 - 10.*yt1**(-1)*H0x + 168d0&
            &    *yt1**(-1)*H0x*xm2 + 24d0*yt1**(-1)*H0x*xp2 - 288d0*yt1**(-1)*&
            &    H0x*xm3 - 16d0*yt1**(-1)*H0x*xp3 + 144d0*yt1**(-1)*H0x*xm4 + 20.&
            &    *yt1**(-1)*H0x*Hmy - 28d0*yt1**(-1)*H0x*Hmy*xp2 + 8d0/3d0*&
            &    yt1**(-1)*H0x*Hmy*xp3 + 28d0/3d0*yt1**(-1)*H0x*Hmz - 28d0*&
            &    yt1**(-1)*H0x*Hmz*xp2 + 8d0/3d0*yt1**(-1)*H0x*Hmz*xp3 - 4d0/3d0*&
            &    zu1**(-3)*H0mz + 68d0/3d0*zu1**(-2) + 8d0/3d0*zu1**(-2)*Hp0x + 8d0/&
            &    3d0*zu1**(-2)*Hm0x + 2d0/3d0*zu1**(-2)*H0mz - 68d0/3d0*zu1**(-2)*&
            &    Hmz + 48d0*zu1**(-2)*Hmz*Hmx - 80./3d0*zu1**(-2)*H0x*Hmz - 76d0/&
            &    3d0*zu1**(-1) + 24d0*zu1**(-1)*xm2 + 80./3d0*zu1**(-1)*xp2 - 4d0*&
            &    zu1**(-1)*Hp0x + 8d0*zu1**(-1)*Hp0x*xp2 - 16d0/3d0*zu1**(-1)*&
            &    Hp0x*xp3 + 24d0*zu1**(-1)*Hmmy - 10.*zu1**(-1)*H0my + 2d0*&
            &    zu1**(-1)*H0my*xp2 - 12d0*zu1**(-1)*Hmmx + 20./3d0*zu1**(-1)*&
            &    Hm0x + 8d0*zu1**(-1)*Hm0x*xp2 - 16d0/3d0*zu1**(-1)*Hm0x*xp3 - 36d0&
            &    *zu1**(-1)*Hmmz + 18d0*zu1**(-1)*H0mz - 10./3d0*zu1**(-1)*H0mz*&
            &    xp2 + 42d0*zu1**(-1)*H0mx + 180.*zu1**(-1)*H0mx*xm2 - 600.*&
            &    zu1**(-1)*H0mx*xm3 + 720.*zu1**(-1)*H0mx*xm4 - 288d0*zu1**(-1)&
            &    *H0mx*xm5 - 67d0/3d0*zu1**(-1)*H00x - 90.*zu1**(-1)*H00x*xm2 - &
            &    4d0*zu1**(-1)*H00x*xp2 + 300.*zu1**(-1)*H00x*xm3 - 360.*&
            &    zu1**(-1)*H00x*xm4 + 144d0*zu1**(-1)*H00x*xm5 + 18d0*zu1**(-1)*&
            &    Hmx - 336d0*zu1**(-1)*Hmx*xm2 + 576d0*zu1**(-1)*Hmx*xm3 - 288d0*&
            &    zu1**(-1)*Hmx*xm4 - 34d0/3d0*zu1**(-1)*Hmy - 64d0/3d0*zu1**(-1)*&
            &    Hmy*xp2 - 24d0*zu1**(-1)*Hmy*Hmx + 48d0*zu1**(-1)*Hmy*Hmx*xp2&
            &     + 22d0*zu1**(-1)*Hmz - 64d0/3d0*zu1**(-1)*Hmz*xp2 - 36d0*&
            &    zu1**(-1)*Hmz*Hmx + 48d0*zu1**(-1)*Hmz*Hmx*xp2 - 10.*zu1**(-1)&
            &    *H0x + 168d0*zu1**(-1)*H0x*xm2 + 24d0*zu1**(-1)*H0x*xp2 - 288d0*&
            &    zu1**(-1)*H0x*xm3 - 16d0*zu1**(-1)*H0x*xp3 + 144d0*zu1**(-1)*&
            &    H0x*xm4 + 28d0/3d0*zu1**(-1)*H0x*Hmy - 28d0*zu1**(-1)*H0x*Hmy*&
            &    xp2 + 8d0/3d0*zu1**(-1)*H0x*Hmy*xp3 + 20.*zu1**(-1)*H0x*Hmz - &
            &    28d0*zu1**(-1)*H0x*Hmz*xp2 + 8d0/3d0*zu1**(-1)*H0x*Hmz*xp3 - 30.&
            &    *xm2 - 202d0/3d0*xp2 + 128d0/3d0*xp3 - 64d0/3d0*xp4 + 4d0*Hp0x - 10./&
            &    3d0*Hp0x*xp2 - 20./3d0*Hp0x*xp3 + 40./3d0*Hp0x*xp4 - 16d0/3d0*Hp0x&
            &    *xp5 + 12d0*Hmmy - 19d0/3d0*H0my + 10./3d0*H0my*xp2 - 24d0*Hmmx - &
            &    96d0*Hmmx*xp2 + 32d0/3d0*Hm0x + 56d0*Hm0x*xp2 - 16d0/3d0*Hm0x*xp3&
            &     - 36d0*Hmmz - 96d0*Hmmz*xp2 + 17d0*H0mz + 50.*H0mz*xp2 - 36d0*&
            &    H0mx - 171d0*H0mx*xm2 - 6d0*H0mx*xp2 + 714d0*H0mx*xm3 + 36d0*H0mx&
            &    *xp3 - 900.*H0mx*xm4 + 360.*H0mx*xm5 + 20.*H00x + 171d0/2d0*&
            &    H00x*xm2 - 16d0*H00x*xp2 - 357d0*H00x*xm3 + 40./3d0*H00x*xp3 + &
            &    450.*H00x*xm4 - 28d0/3d0*H00x*xp4 - 180.*H00x*xm5 - 8d0/3d0*H00x*&
            &    xp5 - 18d0*Hmx + 384d0*Hmx*xm2 - 72d0*Hmx*xp2 - 720.*Hmx*xm3 + &
            &    96d0*Hmx*xp3 + 360.*Hmx*xm4 - 48d0*Hmx*xp4 - 46d0/3d0*Hmy - 16d0/3d0&
            &    *Hmy*xp2 + 36d0*Hmy*Hmx + 24d0*Hmy*Hmx*xp2 - 96d0*Hmy*Hmx*xp3 + &
            &    48d0*Hmy*Hmx*xp4 - 2d0*Hmz + 24d0*Hmz*xp2 + 60.*Hmz*Hmx + 72d0*&
            &    Hmz*Hmx*xp2 - 96d0*Hmz*Hmx*xp3 + 48d0*Hmz*Hmx*xp4 + 10.*H0x - &
            &    192d0*H0x*xm2 + 215d0/3d0*H0x*xp2 + 360.*H0x*xm3 - 562d0/3d0*H0x*&
            &    xp3 - 180.*H0x*xm4 + 592d0/3d0*H0x*xp4 - 208d0/3d0*H0x*xp5 - 53d0/&
            &    3d0*H0x*Hmy - 16d0*H0x*Hmy*xp2 + 152d0/3d0*H0x*Hmy*xp3 - 24d0*H0x*&
            &    Hmy*xp4 - 29d0*H0x*Hmz - 40.*H0x*Hmz*xp2 + 152d0/3d0*H0x*Hmz*xp3&
            &     - 24d0*H0x*Hmz*xp4 - 4d0/3d0*yt*zu**(-1)*Hmz + 12d0*yt*xm2 + 116d0&
            &    *yt*xp2 - 512d0/3d0*yt*xp3 + 256d0/3d0*yt*xp4 + 52d0/3d0*yt*Hp0x*&
            &    xp2 - 88d0/3d0*yt*Hp0x*xp3 + 80./3d0*yt*Hp0x*xp4 - 32d0/3d0*yt*&
            &    Hp0x*xp5 + 48d0*yt*Hmmy*xp2 - 70./3d0*yt*H0my*xp2 - 48d0*yt*Hmmz&
            &    *xp2 + 70./3d0*yt*H0mz*xp2 + 90.*yt*H0mx*xm2 - 108d0*yt*H0mx*&
            &    xp2 - 300.*yt*H0mx*xm3 + 72d0*yt*H0mx*xp3 + 360.*yt*H0mx*xm4&
            &     - 144d0*yt*H0mx*xm5 - 45d0*yt*H00x*xm2 + 188d0/3d0*yt*H00x*xp2&
            &     + 150.*yt*H00x*xm3 - 152d0/3d0*yt*H00x*xp3 - 180.*yt*H00x*xm4&
            &     + 40./3d0*yt*H00x*xp4 + 72d0*yt*H00x*xm5 - 16d0/3d0*yt*H00x*xp5&
            &     - 168d0*yt*Hmx*xm2 - 192d0*yt*Hmx*xp2 + 288d0*yt*Hmx*xm3 + 192d0&
            &    *yt*Hmx*xp3 - 144d0*yt*Hmx*xm4 - 96d0*yt*Hmx*xp4 - 44d0/3d0*yt*&
            &    Hmy*xp2 + 120.*yt*Hmy*Hmx*xp2 - 192d0*yt*Hmy*Hmx*xp3 + 96d0*yt*&
            &    Hmy*Hmx*xp4 + 44d0/3d0*yt*Hmz*xp2 + 168d0*yt*Hmz*Hmx*xp2 - 192d0*&
            &    yt*Hmz*Hmx*xp3 + 96d0*yt*Hmz*Hmx*xp4 + 84d0*yt*H0x*xm2 + 334d0/3d0&
            &    *yt*H0x*xp2 - 144d0*yt*H0x*xm3 - 124d0*yt*H0x*xp3 + 72d0*yt*H0x*&
            &    xm4 + 224d0/3d0*yt*H0x*xp4 - 32d0/3d0*yt*H0x*xp5 - 60.*yt*H0x*Hmy&
            &    *xp2 + 96d0*yt*H0x*Hmy*xp3 - 48d0*yt*H0x*Hmy*xp4 - 84d0*yt*H0x*&
            &    Hmz*xp2 + 96d0*yt*H0x*Hmz*xp3 - 48d0*yt*H0x*Hmz*xp4 - 6d0*yt**2*&
            &    xm2 + 110./3d0*yt**2*xp2 - 256d0/3d0*yt**2*xp3 + 128d0/3d0*yt**2*&
            &    xp4 + 14d0/3d0*yt**2*Hp0x*xp2 - 12d0*yt**2*Hp0x*xp3 + 40./3d0*&
            &    yt**2*Hp0x*xp4 - 16d0/3d0*yt**2*Hp0x*xp5 + 9d0*yt**2*H0mx*xm2 - &
            &    54d0*yt**2*H0mx*xp2 + 114d0*yt**2*H0mx*xm3 + 36d0*yt**2*H0mx*xp3&
            &     - 180.*yt**2*H0mx*xm4 + 72d0*yt**2*H0mx*xm5 - 9d0/2d0*yt**2*&
            &    H00x*xm2 + 88d0/3d0*yt**2*H00x*xp2 - 57d0*yt**2*H00x*xm3 - 24d0*&
            &    yt**2*H00x*xp3 + 90.*yt**2*H00x*xm4 + 20./3d0*yt**2*H00x*xp4&
            &     - 36d0*yt**2*H00x*xm5 - 8d0/3d0*yt**2*H00x*xp5 + 48d0*yt**2*Hmx*&
            &    xm2 - 72d0*yt**2*Hmx*xp2 - 144d0*yt**2*Hmx*xm3 + 96d0*yt**2*Hmx*&
            &    xp3 + 72d0*yt**2*Hmx*xm4 - 48d0*yt**2*Hmx*xp4 + 48d0*yt**2*Hmy*&
            &    Hmx*xp2 - 96d0*yt**2*Hmy*Hmx*xp3 + 48d0*yt**2*Hmy*Hmx*xp4 + 48d0&
            &    *yt**2*Hmz*Hmx*xp2 - 96d0*yt**2*Hmz*Hmx*xp3 + 48d0*yt**2*Hmz*&
            &    Hmx*xp4 - 24d0*yt**2*H0x*xm2 + 119d0/3d0*yt**2*H0x*xp2 + 72d0*&
            &    yt**2*H0x*xm3 - 178d0/3d0*yt**2*H0x*xp3 - 36d0*yt**2*H0x*xm4 + &
            &    112d0/3d0*yt**2*H0x*xp4 - 16d0/3d0*yt**2*H0x*xp5 - 24d0*yt**2*H0x*&
            &    Hmy*xp2 + 48d0*yt**2*H0x*Hmy*xp3 - 24d0*yt**2*H0x*Hmy*xp4 - 24d0&
            &    *yt**2*H0x*Hmz*xp2 + 48d0*yt**2*H0x*Hmz*xp3 - 24d0*yt**2*H0x*&
            &    Hmz*xp4 - 8d0/3d0*xm1*yt1**(-2)*Hp0x - 8d0/3d0*xm1*yt1**(-2)*Hm0x&
            &     + 8d0/3d0*xm1*yt1**(-2)*H0x*Hmy - 24d0*xm1*yt1**(-1) + 20./3d0*&
            &    xm1*yt1**(-1)*Hp0x + 4d0/3d0*xm1*yt1**(-1)*Hm0x - 84d0*xm1*&
            &    yt1**(-1)*H0mx + 134d0/3d0*xm1*yt1**(-1)*H00x + 48d0*xm1*&
            &    yt1**(-1)*Hmx - 70./3d0*xm1*yt1**(-1)*H0x - 10./3d0*xm1*&
            &    yt1**(-1)*H0x*Hmy + 2d0*xm1*yt1**(-1)*H0x*Hmz - 8d0/3d0*xm1*&
            &    zu1**(-2)*Hp0x - 8d0/3d0*xm1*zu1**(-2)*Hm0x + 8d0/3d0*xm1*&
            &    zu1**(-2)*H0x*Hmz - 24d0*xm1*zu1**(-1) + 20./3d0*xm1*zu1**(-1)*&
            &    Hp0x + 4d0/3d0*xm1*zu1**(-1)*Hm0x - 84d0*xm1*zu1**(-1)*H0mx + &
            &    134d0/3d0*xm1*zu1**(-1)*H00x + 48d0*xm1*zu1**(-1)*Hmx - 70./3d0*&
            &    xm1*zu1**(-1)*H0x + 2d0*xm1*zu1**(-1)*H0x*Hmy - 10./3d0*xm1*&
            &    zu1**(-1)*H0x*Hmz + 30.*xm1 - 17d0/3d0*xm1*Hp0x + 171d0/2d0*xm1*&
            &    H0mx - 547d0/12d0*xm1*H00x - 24d0*xm1*Hmx + 67d0/6d0*xm1*H0x + 1d0/&
            &    3d0*xm1*H0x*Hmy - 1d0/3d0*xm1*H0x*Hmz - 12d0*xm1*yt + 2d0/3d0*xm1*&
            &    yt*Hp0x - 9d0*xm1*yt*H0mx + 29d0/6d0*xm1*yt*H00x + 24d0*xm1*yt*&
            &    Hmx - 35d0/3d0*xm1*yt*H0x - 1d0/3d0*xm1*yt*H0x*Hmy + 1d0/3d0*xm1*yt&
            &    *H0x*Hmz + 6d0*xm1*yt**2 - 1d0/3d0*xm1*yt**2*Hp0x + 3d0/2d0*xm1*&
            &    yt**2*H0mx - 11d0/12d0*xm1*yt**2*H00x + 24d0*xm1*yt**2*Hmx - 73d0/&
            &    6d0*xm1*yt**2*H0x - 8d0/3d0*xp1*yt**(-2)*Hmy + 8d0/3d0*xp1*&
            &    yt**(-1) + 28d0/3d0*xp1*yt**(-1)*Hmy - 8d0/3d0*xp1*zu**(-2)*Hmz&
            &     + 8d0/3d0*xp1*zu**(-1) + 28d0/3d0*xp1*zu**(-1)*Hmz - 8d0/3d0*xp1*&
            &    yt1**(-2)*Hp0x - 8d0/3d0*xp1*yt1**(-2)*Hm0x + 8d0/3d0*xp1*&
            &    yt1**(-2)*H0x*Hmy - 80./3d0*xp1*yt1**(-1) - 4d0/3d0*xp1*&
            &    yt1**(-1)*Hp0x + 10./3d0*xp1*yt1**(-1)*H0my - 16d0/3d0*xp1*&
            &    yt1**(-1)*Hm0x - 2d0*xp1*yt1**(-1)*H0mz + 6d0*xp1*yt1**(-1)*&
            &    H00x + 64d0/3d0*xp1*yt1**(-1)*Hmy - 48d0*xp1*yt1**(-1)*Hmy*Hmx&
            &     + 64d0/3d0*xp1*yt1**(-1)*Hmz - 48d0*xp1*yt1**(-1)*Hmz*Hmx - 20./&
            &    3d0*xp1*yt1**(-1)*H0x + 74d0/3d0*xp1*yt1**(-1)*H0x*Hmy + 86d0/3d0*&
            &    xp1*yt1**(-1)*H0x*Hmz - 8d0/3d0*xp1*zu1**(-2)*Hp0x - 8d0/3d0*xp1*&
            &    zu1**(-2)*Hm0x + 8d0/3d0*xp1*zu1**(-2)*H0x*Hmz - 80./3d0*xp1*&
            &    zu1**(-1) - 4d0/3d0*xp1*zu1**(-1)*Hp0x - 2d0*xp1*zu1**(-1)*H0my&
            &     - 16d0/3d0*xp1*zu1**(-1)*Hm0x + 10./3d0*xp1*zu1**(-1)*H0mz + 6d0&
            &    *xp1*zu1**(-1)*H00x + 64d0/3d0*xp1*zu1**(-1)*Hmy - 48d0*xp1*&
            &    zu1**(-1)*Hmy*Hmx + 64d0/3d0*xp1*zu1**(-1)*Hmz - 48d0*xp1*&
            &    zu1**(-1)*Hmz*Hmx - 20./3d0*xp1*zu1**(-1)*H0x + 86d0/3d0*xp1*&
            &    zu1**(-1)*H0x*Hmy + 74d0/3d0*xp1*zu1**(-1)*H0x*Hmz + 46d0*xp1 - &
            &    1d0/3d0*xp1*Hp0x - 10./3d0*xp1*H0my + 96d0*xp1*Hmmx - 48d0*xp1*&
            &    Hm0x + 96d0*xp1*Hmmz - 50.*xp1*H0mz - 45d0/2d0*xp1*H0mx + 101d0/&
            &    12d0*xp1*H00x + 24d0*xp1*Hmx + 16d0/3d0*xp1*Hmy + 24d0*xp1*Hmy*Hmx&
            &     - 24d0*xp1*Hmz - 24d0*xp1*Hmz*Hmx - 27d0/2d0*xp1*H0x - 35d0/3d0*&
            &    xp1*H0x*Hmy + 35d0/3d0*xp1*H0x*Hmz - 92d0/3d0*xp1*yt - 14d0/3d0*xp1&
            &    *yt*Hp0x - 48d0*xp1*yt*Hmmy + 70./3d0*xp1*yt*H0my + 48d0*xp1*yt*&
            &    Hmmz - 70./3d0*xp1*yt*H0mz + 39d0*xp1*yt*H0mx - 131d0/6d0*xp1*yt*&
            &    H00x + 96d0*xp1*yt*Hmx + 44d0/3d0*xp1*yt*Hmy - 24d0*xp1*yt*Hmy*&
            &    Hmx - 44d0/3d0*xp1*yt*Hmz - 72d0*xp1*yt*Hmz*Hmx - 155d0/3d0*xp1*yt&
            &    *H0x + 37d0/3d0*xp1*yt*H0x*Hmy + 107d0/3d0*xp1*yt*H0x*Hmz + 6d0*&
            &    xp1*yt**2 - 1d0/3d0*xp1*yt**2*Hp0x + 3d0/2d0*xp1*yt**2*H0mx - 11d0/&
            &    12d0*xp1*yt**2*H00x + 24d0*xp1*yt**2*Hmx - 73d0/6d0*xp1*yt**2*H0x&
            &     - 4d0/3d0*x*yt**(-1)*Hmy - 2d0/3d0*x*yt1**(-3)*H0my + 2d0/3d0*x*&
            &    yt1**(-2) - 2d0/3d0*x*yt1**(-2)*Hmy - 4d0*x*yt1**(-1) - 2d0/3d0*x*&
            &    yt1**(-1)*Hp0x - 6d0*x*yt1**(-1)*Hmmy + 8d0/3d0*x*yt1**(-1)*H0my&
            &     + 6d0*x*yt1**(-1)*Hmmx - 8d0/3d0*x*yt1**(-1)*Hm0x + 12d0*x*&
            &    yt1**(-1)*Hmmz - 16d0/3d0*x*yt1**(-1)*H0mz + 6d0*x*yt1**(-1)*&
            &    H0mx - 10./3d0*x*yt1**(-1)*H00x + 16d0/3d0*x*yt1**(-1)*Hmy - 6d0*&
            &    x*yt1**(-1)*Hmy*Hmx - 12d0*x*yt1**(-1)*Hmz*Hmx + 10./3d0*x*&
            &    yt1**(-1)*H0x*Hmy + 16d0/3d0*x*yt1**(-1)*H0x*Hmz - 2d0/3d0*x*&
            &    zu1**(-3)*H0mz + 2d0/3d0*x*zu1**(-2) - 2d0/3d0*x*zu1**(-2)*Hmz - &
            &    4d0*x*zu1**(-1) - 2d0/3d0*x*zu1**(-1)*Hp0x + 12d0*x*zu1**(-1)*&
            &    Hmmy - 16d0/3d0*x*zu1**(-1)*H0my + 6d0*x*zu1**(-1)*Hmmx - 8d0/3d0*&
            &    x*zu1**(-1)*Hm0x - 6d0*x*zu1**(-1)*Hmmz + 8d0/3d0*x*zu1**(-1)*&
            &    H0mz + 6d0*x*zu1**(-1)*H0mx - 10./3d0*x*zu1**(-1)*H00x - 12d0*x*&
            &    zu1**(-1)*Hmy*Hmx + 16d0/3d0*x*zu1**(-1)*Hmz - 6d0*x*zu1**(-1)*&
            &    Hmz*Hmx + 16d0/3d0*x*zu1**(-1)*H0x*Hmy + 10./3d0*x*zu1**(-1)*H0x&
            &    *Hmz - 2d0/3d0*z2*x**(-1)*yt1**(-3) + 49d0/3d0*z2*x**(-1)*&
            &    yt1**(-1) - 2d0/3d0*z2*x**(-1)*zu1**(-3) + 49d0/3d0*z2*x**(-1)*&
            &    zu1**(-1) - 4d0/3d0*z2*yt1**(-3) - 154d0/3d0*z2*yt1**(-2) + 175d0/&
            &    3d0*z2*yt1**(-1) - 90.*z2*yt1**(-1)*xm2 - 292d0/3d0*z2*yt1**(-1)&
            &    *xp2 + 300.*z2*yt1**(-1)*xm3 + 8d0*z2*yt1**(-1)*xp3 - 360.*z2*&
            &    yt1**(-1)*xm4 + 144d0*z2*yt1**(-1)*xm5 - 4d0/3d0*z2*zu1**(-3) - &
            &    154d0/3d0*z2*zu1**(-2) + 175d0/3d0*z2*zu1**(-1) - 90.*z2*&
            &    zu1**(-1)*xm2 - 292d0/3d0*z2*zu1**(-1)*xp2 + 300.*z2*zu1**(-1)*&
            &    xm3 + 8d0*z2*zu1**(-1)*xp3 - 360.*z2*zu1**(-1)*xm4 + 144d0*z2*&
            &    zu1**(-1)*xm5 - 62d0*z2 + 171d0/2d0*z2*xm2 + 59d0*z2*xp2 - 357d0*&
            &    z2*xm3 + 266d0/3d0*z2*xp3 + 450.*z2*xm4 - 224d0/3d0*z2*xp4 - 180.&
            &    *z2*xm5 + 32d0/3d0*z2*xp5 - 45d0*z2*yt*xm2 - 806d0/3d0*z2*yt*xp2&
            &     + 150.*z2*yt*xm3 + 1220./3d0*z2*yt*xp3 - 180.*z2*yt*xm4 - 736d0&
            &   /3d0*z2*yt*xp4 + 72d0*z2*yt*xm5 + 64d0/3d0*z2*yt*xp5 - 9d0/2d0*z2*&
            &    yt**2*xm2 - 235d0/3d0*z2*yt**2*xp2 - 57d0*z2*yt**2*xm3 + 198d0*z2&
            &    *yt**2*xp3 + 90.*z2*yt**2*xm4 - 368d0/3d0*z2*yt**2*xp4 - 36d0*z2&
            &    *yt**2*xm5 + 32d0/3d0*z2*yt**2*xp5 + 4d0*z2*xm1*yt1**(-2) + 88d0/&
            &    3d0*z2*xm1*yt1**(-1) + 4d0*z2*xm1*zu1**(-2) + 88d0/3d0*z2*xm1*&
            &    zu1**(-1) - 377d0/12d0*z2*xm1 + 19d0/6d0*z2*xm1*yt - 1d0/12d0*z2*&
            &    xm1*yt**2 + 4d0*z2*xp1*yt1**(-2) + 256d0/3d0*z2*xp1*yt1**(-1) + &
            &    4d0*z2*xp1*zu1**(-2) + 256d0/3d0*z2*xp1*zu1**(-1) - 977d0/12d0*z2*&
            &    xp1 + 515d0/6d0*z2*xp1*yt - 1d0/12d0*z2*xp1*yt**2 - 2d0/3d0*z2*x*&
            &    yt1**(-3) + 31d0/3d0*z2*x*yt1**(-1) - 2d0/3d0*z2*x*zu1**(-3) + 31d0&
            &   /3d0*z2*x*zu1**(-1)


       Hgg1_coeff(2,2,3) = ( 6d0 - 3d0*x**(-1)*&
            &    yt1**(-1) + 3d0*x**(-1)*zu1**(-1) + 12d0*yt1**(-2) - 18d0*&
            &    yt1**(-1) - 12d0*zu1**(-2) + 18d0*zu1**(-1) + 12d0*xp2 + 12d0*yt*&
            &    xp2 - 12d0*xp1 - 12d0*xp1*yt - 3d0*x*yt1**(-1) + 3d0*x*zu1**(-1)&
            &     )
       Hgg1_coeff(1,2,3) = ( 16d0/3d0 - 8d0/3d0*x**(-1)*yt1**(-1) + 6d0*x**(-1)*&
            &    yt1**(-1)*Hmx + 6d0*x**(-1)*yt1**(-1)*Hmy - 8d0/3d0*x**(-1)*&
            &    yt1**(-1)*H0x + 8d0/3d0*x**(-1)*zu1**(-1) - 6d0*x**(-1)*&
            &    zu1**(-1)*Hmx - 6d0*x**(-1)*zu1**(-1)*Hmz + 8d0/3d0*x**(-1)*&
            &    zu1**(-1)*H0x + 32d0/3d0*yt1**(-2) - 24d0*yt1**(-2)*Hmx - 24d0*&
            &    yt1**(-2)*Hmy + 40./3d0*yt1**(-2)*H0x - 16d0*yt1**(-1) + 36d0*&
            &    yt1**(-1)*Hmx + 36d0*yt1**(-1)*Hmy - 20.*yt1**(-1)*H0x - 32d0/3d0&
            &    *zu1**(-2) + 24d0*zu1**(-2)*Hmx + 24d0*zu1**(-2)*Hmz - 40./3d0*&
            &    zu1**(-2)*H0x + 16d0*zu1**(-1) - 36d0*zu1**(-1)*Hmx - 36d0*&
            &    zu1**(-1)*Hmz + 20.*zu1**(-1)*H0x + 32d0/3d0*xp2 - 12d0*Hmx - 24d0&
            &    *Hmx*xp2 - 18d0*Hmy - 12d0*Hmy*xp2 + 24d0*Hmy*xp3 - 12d0*Hmy*xp4&
            &     + 6d0*Hmz - 12d0*Hmz*xp2 - 24d0*Hmz*xp3 + 12d0*Hmz*xp4 + 20./3d0*&
            &    H0x + 14d0*H0x*xp2 - 4d0/3d0*H0x*xp3 + 32d0/3d0*yt*xp2 - 24d0*yt*&
            &    Hmx*xp2 - 48d0*yt*Hmy*xp2 + 48d0*yt*Hmy*xp3 - 24d0*yt*Hmy*xp4 + &
            &    24d0*yt*Hmz*xp2 - 48d0*yt*Hmz*xp3 + 24d0*yt*Hmz*xp4 + 14d0*yt*H0x&
            &    *xp2 - 4d0/3d0*yt*H0x*xp3 - 12d0*yt**2*Hmy*xp2 + 24d0*yt**2*Hmy*&
            &    xp3 - 12d0*yt**2*Hmy*xp4 + 12d0*yt**2*Hmz*xp2 - 24d0*yt**2*Hmz*&
            &    xp3 + 12d0*yt**2*Hmz*xp4 - 4d0/3d0*xm1*yt1**(-2)*H0x + 8d0/3d0*xm1&
            &    *yt1**(-1)*H0x + 4d0/3d0*xm1*zu1**(-2)*H0x - 8d0/3d0*xm1*&
            &    zu1**(-1)*H0x - 1d0/3d0*xm1*H0x + 1d0/3d0*xm1*yt*H0x - 4d0/3d0*xp1*&
            &    yt1**(-2)*H0x + 4d0/3d0*xp1*yt1**(-1)*H0x + 4d0/3d0*xp1*zu1**(-2)&
            &    *H0x - 4d0/3d0*xp1*zu1**(-1)*H0x - 32d0/3d0*xp1 + 24d0*xp1*Hmx + &
            &    24d0*xp1*Hmz - 41d0/3d0*xp1*H0x - 32d0/3d0*xp1*yt + 24d0*xp1*yt*Hmx&
            &     + 24d0*xp1*yt*Hmy - 13d0*xp1*yt*H0x - 8d0/3d0*x*yt1**(-1) + 6d0*x&
            &    *yt1**(-1)*Hmx + 6d0*x*yt1**(-1)*Hmy - 10./3d0*x*yt1**(-1)*H0x&
            &     + 8d0/3d0*x*zu1**(-1) - 6d0*x*zu1**(-1)*Hmx - 6d0*x*zu1**(-1)*&
            &    Hmz + 10./3d0*x*zu1**(-1)*H0x )
       Hgg1_coeff(0,2,3) = + 19d0/3d0 - 4d0/3d0*x**(-1)*yt**(-1)&
            &    *Hmy - 2d0/3d0*x**(-1)*yt1**(-3)*H0my + 2d0/3d0*x**(-1)*yt1**(-2)&
            &     - 2d0/3d0*x**(-1)*yt1**(-2)*Hmy - 4d0*x**(-1)*yt1**(-1) + 2d0/3d0&
            &    *x**(-1)*yt1**(-1)*Hp0x - 6d0*x**(-1)*yt1**(-1)*Hmmy + 8d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0my - 6d0*x**(-1)*yt1**(-1)*Hmmx + 10./3d0*&
            &    x**(-1)*yt1**(-1)*Hm0x + 16d0/3d0*x**(-1)*yt1**(-1)*Hmy - 6d0*&
            &    x**(-1)*yt1**(-1)*Hmy*Hmx + 8d0/3d0*x**(-1)*yt1**(-1)*H0x*Hmy&
            &     + 2d0/3d0*x**(-1)*zu1**(-3)*H0mz - 2d0/3d0*x**(-1)*zu1**(-2) + 2d0&
            &   /3d0*x**(-1)*zu1**(-2)*Hmz + 4d0*x**(-1)*zu1**(-1) - 2d0/3d0*&
            &    x**(-1)*zu1**(-1)*Hp0x + 6d0*x**(-1)*zu1**(-1)*Hmmx - 10./3d0*&
            &    x**(-1)*zu1**(-1)*Hm0x + 6d0*x**(-1)*zu1**(-1)*Hmmz - 8d0/3d0*&
            &    x**(-1)*zu1**(-1)*H0mz - 16d0/3d0*x**(-1)*zu1**(-1)*Hmz + 6d0*&
            &    x**(-1)*zu1**(-1)*Hmz*Hmx - 8d0/3d0*x**(-1)*zu1**(-1)*H0x*Hmz&
            &     - 4d0/3d0*yt**(-2)*Hmy + 4d0/3d0*yt**(-2)*Hmy*xp2 + 4d0/3d0*&
            &    yt**(-1) - 4d0/3d0*yt**(-1)*xp2 + 14d0/3d0*yt**(-1)*Hmy - 14d0/3d0*&
            &    yt**(-1)*Hmy*xp2 + 4d0/3d0*zu**(-2)*Hmz - 4d0/3d0*zu**(-2)*Hmz*&
            &    xp2 - 4d0/3d0*zu**(-1) + 4d0/3d0*zu**(-1)*xp2 - 14d0/3d0*zu**(-1)*&
            &    Hmz + 14d0/3d0*zu**(-1)*Hmz*xp2 - 4d0/3d0*yt1**(-3)*H0my + 68d0/3d0&
            &    *yt1**(-2) + 8d0/3d0*yt1**(-2)*Hp0x + 8d0/3d0*yt1**(-2)*Hm0x - 68d0&
            &   /3d0*yt1**(-2)*Hmy + 48d0*yt1**(-2)*Hmy*Hmx - 80./3d0*yt1**(-2)*&
            &    H0x*Hmy - 86d0/3d0*yt1**(-1) + 12d0*yt1**(-1)*xm2 - 8d0*yt1**(-1)&
            &    *xp2 - 4d0*yt1**(-1)*Hp0x - 36d0*yt1**(-1)*Hmmy + 18d0*yt1**(-1)&
            &    *H0my - 8d0/3d0*yt1**(-1)*H0my*xp2 - 36d0*yt1**(-1)*Hmmx + 16d0*&
            &    yt1**(-1)*Hm0x + 36d0*yt1**(-1)*H0mx + 126d0*yt1**(-1)*H0mx*xm2&
            &     - 324d0*yt1**(-1)*H0mx*xm3 + 360.*yt1**(-1)*H0mx*xm4 - 144d0*&
            &    yt1**(-1)*H0mx*xm5 - 19d0*yt1**(-1)*H00x - 63d0*yt1**(-1)*H00x*&
            &    xm2 - 8d0/3d0*yt1**(-1)*H00x*xp2 + 162d0*yt1**(-1)*H00x*xm3 - &
            &    180.*yt1**(-1)*H00x*xm4 + 72d0*yt1**(-1)*H00x*xm5 + 3d0*&
            &    yt1**(-1)*Hmx - 192d0*yt1**(-1)*Hmx*xm2 + 288d0*yt1**(-1)*Hmx*&
            &    xm3 - 144d0*yt1**(-1)*Hmx*xm4 + 64d0/3d0*yt1**(-1)*Hmy - 36d0*&
            &    yt1**(-1)*Hmy*Hmx - 7d0/3d0*yt1**(-1)*H0x + 96d0*yt1**(-1)*H0x*&
            &    xm2 + 12d0*yt1**(-1)*H0x*xp2 - 144d0*yt1**(-1)*H0x*xm3 - 8d0*&
            &    yt1**(-1)*H0x*xp3 + 72d0*yt1**(-1)*H0x*xm4 + 20.*yt1**(-1)*H0x&
            &    *Hmy + 4d0/3d0*zu1**(-3)*H0mz - 68d0/3d0*zu1**(-2) - 8d0/3d0*&
            &    zu1**(-2)*Hp0x - 8d0/3d0*zu1**(-2)*Hm0x + 68d0/3d0*zu1**(-2)*Hmz&
            &     - 48d0*zu1**(-2)*Hmz*Hmx + 80./3d0*zu1**(-2)*H0x*Hmz + 86d0/3d0*&
            &    zu1**(-1) - 12d0*zu1**(-1)*xm2 + 8d0*zu1**(-1)*xp2 + 4d0*&
            &    zu1**(-1)*Hp0x + 36d0*zu1**(-1)*Hmmx - 16d0*zu1**(-1)*Hm0x + 36d0&
            &    *zu1**(-1)*Hmmz - 18d0*zu1**(-1)*H0mz + 8d0/3d0*zu1**(-1)*H0mz*&
            &    xp2 - 36d0*zu1**(-1)*H0mx - 126d0*zu1**(-1)*H0mx*xm2 + 324d0*&
            &    zu1**(-1)*H0mx*xm3 - 360.*zu1**(-1)*H0mx*xm4 + 144d0*zu1**(-1)&
            &    *H0mx*xm5 + 19d0*zu1**(-1)*H00x + 63d0*zu1**(-1)*H00x*xm2 + 8d0/&
            &    3d0*zu1**(-1)*H00x*xp2 - 162d0*zu1**(-1)*H00x*xm3 + 180.*&
            &    zu1**(-1)*H00x*xm4 - 72d0*zu1**(-1)*H00x*xm5 - 3d0*zu1**(-1)*&
            &    Hmx + 192d0*zu1**(-1)*Hmx*xm2 - 288d0*zu1**(-1)*Hmx*xm3 + 144d0*&
            &    zu1**(-1)*Hmx*xm4 - 64d0/3d0*zu1**(-1)*Hmz + 36d0*zu1**(-1)*Hmz*&
            &    Hmx + 7d0/3d0*zu1**(-1)*H0x - 96d0*zu1**(-1)*H0x*xm2 - 12d0*&
            &    zu1**(-1)*H0x*xp2 + 144d0*zu1**(-1)*H0x*xm3 + 8d0*zu1**(-1)*H0x&
            &    *xp3 - 72d0*zu1**(-1)*H0x*xm4 - 20.*zu1**(-1)*H0x*Hmz - 6d0*xm2&
            &     + 56d0/3d0*xp2 + 4d0/3d0*Hp0x + 4d0*Hp0x*xp2 - 8d0/3d0*Hp0x*xp3 + &
            &    18d0*Hmmy - 9d0*H0my + 5d0/3d0*H0my*xp2 + 24d0*Hmmx + 48d0*Hmmx*xp2&
            &     - 35d0/3d0*Hm0x - 24d0*Hm0x*xp2 + 6d0*Hmmz + 48d0*Hmmz*xp2 - 8d0/3d0&
            &    *H0mz - 25d0*H0mz*xp2 - 12d0*H0mx - 90.*H0mx*xm2 - 6d0*H0mx*xp2&
            &     + 180.*H0mx*xm3 - 12d0*H0mx*xp3 - 180.*H0mx*xm4 + 72d0*H0mx*&
            &    xm5 + 20./3d0*H00x + 45d0*H00x*xm2 + 16d0/3d0*H00x*xp2 - 90.*H00x&
            &    *xm3 + 14d0/3d0*H00x*xp3 + 90.*H00x*xm4 - 36d0*H00x*xm5 - 3d0*Hmx&
            &     + 114d0*Hmx*xm2 - 12d0*Hmx*xp2 - 144d0*Hmx*xm3 + 72d0*Hmx*xm4 - &
            &    34d0/3d0*Hmy - 8d0/3d0*Hmy*xp2 + 18d0*Hmy*Hmx + 24d0*Hmy*Hmx*xp2 - &
            &    48d0*Hmy*Hmx*xp3 + 24d0*Hmy*Hmx*xp4 + 16d0/3d0*Hmz - 12d0*Hmz*xp2&
            &     - 18d0*Hmz*Hmx - 24d0*Hmz*Hmx*xp2 + 48d0*Hmz*Hmx*xp3 - 24d0*Hmz*&
            &    Hmx*xp4 + 7d0/3d0*H0x - 57d0*H0x*xm2 + 8d0*H0x*xp2 + 72d0*H0x*xm3&
            &     - 4d0/3d0*H0x*xp3 - 36d0*H0x*xm4 - 9d0*H0x*Hmy - 14d0*H0x*Hmy*xp2&
            &     + 76d0/3d0*H0x*Hmy*xp3 - 12d0*H0x*Hmy*xp4 + 26d0/3d0*H0x*Hmz + 14d0&
            &    *H0x*Hmz*xp2 - 76d0/3d0*H0x*Hmz*xp3 + 12d0*H0x*Hmz*xp4 + 4d0/3d0*&
            &    yt*zu**(-1)*Hmz + 6d0*yt*xm2 + 56d0/3d0*yt*xp2 + 4d0*yt*Hp0x*xp2&
            &     - 8d0/3d0*yt*Hp0x*xp3 + 24d0*yt*Hmmy*xp2 - 35d0/3d0*yt*H0my*xp2&
            &     + 48d0*yt*Hmmx*xp2 - 24d0*yt*Hm0x*xp2 + 24d0*yt*Hmmz*xp2 - 35d0/&
            &    3d0*yt*H0mz*xp2 + 36d0*yt*H0mx*xm2 - 6d0*yt*H0mx*xp2 - 144d0*yt*&
            &    H0mx*xm3 - 12d0*yt*H0mx*xp3 + 180.*yt*H0mx*xm4 - 72d0*yt*H0mx*&
            &    xm5 - 18d0*yt*H00x*xm2 + 16d0/3d0*yt*H00x*xp2 + 72d0*yt*H00x*xm3&
            &     + 14d0/3d0*yt*H00x*xp3 - 90.*yt*H00x*xm4 + 36d0*yt*H00x*xm5 - &
            &    78d0*yt*Hmx*xm2 - 12d0*yt*Hmx*xp2 + 144d0*yt*Hmx*xm3 - 72d0*yt*&
            &    Hmx*xm4 - 22d0/3d0*yt*Hmy*xp2 + 72d0*yt*Hmy*Hmx*xp2 - 96d0*yt*Hmy&
            &    *Hmx*xp3 + 48d0*yt*Hmy*Hmx*xp4 - 22d0/3d0*yt*Hmz*xp2 - 72d0*yt*&
            &    Hmz*Hmx*xp2 + 96d0*yt*Hmz*Hmx*xp3 - 48d0*yt*Hmz*Hmx*xp4 + 39d0*&
            &    yt*H0x*xm2 + 8d0*yt*H0x*xp2 - 72d0*yt*H0x*xm3 - 4d0/3d0*yt*H0x*&
            &    xp3 + 36d0*yt*H0x*xm4 - 36d0*yt*H0x*Hmy*xp2 + 48d0*yt*H0x*Hmy*&
            &    xp3 - 24d0*yt*H0x*Hmy*xp4 + 36d0*yt*H0x*Hmz*xp2 - 48d0*yt*H0x*&
            &    Hmz*xp3 + 24d0*yt*H0x*Hmz*xp4 + 24d0*yt**2*Hmy*Hmx*xp2 - 48d0*&
            &    yt**2*Hmy*Hmx*xp3 + 24d0*yt**2*Hmy*Hmx*xp4 - 24d0*yt**2*Hmz*Hmx&
            &    *xp2 + 48d0*yt**2*Hmz*Hmx*xp3 - 24d0*yt**2*Hmz*Hmx*xp4 - 12d0*&
            &    yt**2*H0x*Hmy*xp2 + 24d0*yt**2*H0x*Hmy*xp3 - 12d0*yt**2*H0x*Hmy&
            &    *xp4 + 12d0*yt**2*H0x*Hmz*xp2 - 24d0*yt**2*H0x*Hmz*xp3 + 12d0*&
            &    yt**2*H0x*Hmz*xp4 - 8d0/3d0*xm1*yt1**(-2)*Hp0x - 8d0/3d0*xm1*&
            &    yt1**(-2)*Hm0x + 8d0/3d0*xm1*yt1**(-2)*H0x*Hmy - 12d0*xm1*&
            &    yt1**(-1) + 16d0/3d0*xm1*yt1**(-1)*Hp0x + 8d0/3d0*xm1*yt1**(-1)*&
            &    Hm0x - 48d0*xm1*yt1**(-1)*H0mx + 76d0/3d0*xm1*yt1**(-1)*H00x + &
            &    48d0*xm1*yt1**(-1)*Hmx - 23d0*xm1*yt1**(-1)*H0x - 8d0/3d0*xm1*&
            &    yt1**(-1)*H0x*Hmy + 8d0/3d0*xm1*zu1**(-2)*Hp0x + 8d0/3d0*xm1*&
            &    zu1**(-2)*Hm0x - 8d0/3d0*xm1*zu1**(-2)*H0x*Hmz + 12d0*xm1*&
            &    zu1**(-1) - 16d0/3d0*xm1*zu1**(-1)*Hp0x - 8d0/3d0*xm1*zu1**(-1)*&
            &    Hm0x + 48d0*xm1*zu1**(-1)*H0mx - 76d0/3d0*xm1*zu1**(-1)*H00x - &
            &    48d0*xm1*zu1**(-1)*Hmx + 23d0*xm1*zu1**(-1)*H0x + 8d0/3d0*xm1*&
            &    zu1**(-1)*H0x*Hmz + 6d0*xm1 - 2d0/3d0*xm1*Hp0x - 1d0/3d0*xm1*Hm0x&
            &     + 21d0*xm1*H0mx - 32d0/3d0*xm1*H00x - 42d0*xm1*Hmx + 41d0/2d0*xm1*&
            &    H0x + 1d0/2d0*xm1*H0x*Hmy - 1d0/6d0*xm1*H0x*Hmz - 6d0*xm1*yt + 2d0/&
            &    3d0*xm1*yt*Hp0x + 1d0/3d0*xm1*yt*Hm0x - 3d0*xm1*yt*H0mx + 5d0/3d0*&
            &    xm1*yt*H00x + 6d0*xm1*yt*Hmx - 5d0/2d0*xm1*yt*H0x - 1d0/6d0*xm1*yt&
            &    *H0x*Hmy - 1d0/6d0*xm1*yt*H0x*Hmz - 4d0/3d0*xp1*yt**(-2)*Hmy + 4d0/&
            &    3d0*xp1*yt**(-1) + 14d0/3d0*xp1*yt**(-1)*Hmy + 4d0/3d0*xp1*&
            &    zu**(-2)*Hmz - 4d0/3d0*xp1*zu**(-1) - 14d0/3d0*xp1*zu**(-1)*Hmz&
            &     - 8d0/3d0*xp1*yt1**(-2)*Hp0x - 8d0/3d0*xp1*yt1**(-2)*Hm0x + 8d0/3d0&
            &    *xp1*yt1**(-2)*H0x*Hmy + 8d0*xp1*yt1**(-1) + 8d0/3d0*xp1*&
            &    yt1**(-1)*Hp0x + 8d0/3d0*xp1*yt1**(-1)*H0my + 4d0/3d0*xp1*&
            &    yt1**(-1)*Hm0x - 6d0*xp1*yt1**(-1)*H0mx + 19d0/3d0*xp1*yt1**(-1)&
            &    *H00x - 10./3d0*xp1*yt1**(-1)*H0x - 4d0/3d0*xp1*yt1**(-1)*H0x*&
            &    Hmy + 8d0/3d0*xp1*zu1**(-2)*Hp0x + 8d0/3d0*xp1*zu1**(-2)*Hm0x - 8d0&
            &   /3d0*xp1*zu1**(-2)*H0x*Hmz - 8d0*xp1*zu1**(-1) - 8d0/3d0*xp1*&
            &    zu1**(-1)*Hp0x - 4d0/3d0*xp1*zu1**(-1)*Hm0x - 8d0/3d0*xp1*&
            &    zu1**(-1)*H0mz + 6d0*xp1*zu1**(-1)*H0mx - 19d0/3d0*xp1*zu1**(-1)&
            &    *H00x + 10./3d0*xp1*zu1**(-1)*H0x + 4d0/3d0*xp1*zu1**(-1)*H0x*&
            &    Hmz - 56d0/3d0*xp1 - 10./3d0*xp1*Hp0x - 5d0/3d0*xp1*H0my - 48d0*xp1&
            &    *Hmmx + 71d0/3d0*xp1*Hm0x - 48d0*xp1*Hmmz + 25d0*xp1*H0mz + 15d0*&
            &    xp1*H0mx - 28d0/3d0*xp1*H00x + 12d0*xp1*Hmx + 8d0/3d0*xp1*Hmy + 12d0&
            &    *xp1*Hmz - 47d0/6d0*xp1*H0x + 1d0/6d0*xp1*H0x*Hmy + 1d0/6d0*xp1*H0x&
            &    *Hmz - 56d0/3d0*xp1*yt - 2d0*xp1*yt*Hp0x - 24d0*xp1*yt*Hmmy + 35d0/&
            &    3d0*xp1*yt*H0my - 48d0*xp1*yt*Hmmx + 71d0/3d0*xp1*yt*Hm0x - 24d0*&
            &    xp1*yt*Hmmz + 35d0/3d0*xp1*yt*H0mz + 21d0*xp1*yt*H0mx - 35d0/3d0*&
            &    xp1*yt*H00x + 12d0*xp1*yt*Hmx + 22d0/3d0*xp1*yt*Hmy - 24d0*xp1*yt&
            &    *Hmy*Hmx + 22d0/3d0*xp1*yt*Hmz + 24d0*xp1*yt*Hmz*Hmx - 43d0/6d0*&
            &    xp1*yt*H0x + 73d0/6d0*xp1*yt*H0x*Hmy - 71d0/6d0*xp1*yt*H0x*Hmz - &
            &    4d0/3d0*x*yt**(-1)*Hmy - 2d0/3d0*x*yt1**(-3)*H0my + 2d0/3d0*x*&
            &    yt1**(-2) - 2d0/3d0*x*yt1**(-2)*Hmy - 4d0*x*yt1**(-1) - 2d0/3d0*x*&
            &    yt1**(-1)*Hp0x - 6d0*x*yt1**(-1)*Hmmy + 8d0/3d0*x*yt1**(-1)*H0my&
            &     - 6d0*x*yt1**(-1)*Hmmx + 8d0/3d0*x*yt1**(-1)*Hm0x + 6d0*x*&
            &    yt1**(-1)*H0mx - 10./3d0*x*yt1**(-1)*H00x + 16d0/3d0*x*yt1**(-1)&
            &    *Hmy - 6d0*x*yt1**(-1)*Hmy*Hmx + 10./3d0*x*yt1**(-1)*H0x*Hmy + &
            &    2d0/3d0*x*zu1**(-3)*H0mz - 2d0/3d0*x*zu1**(-2) + 2d0/3d0*x*&
            &    zu1**(-2)*Hmz + 4d0*x*zu1**(-1) + 2d0/3d0*x*zu1**(-1)*Hp0x + 6d0*&
            &    x*zu1**(-1)*Hmmx - 8d0/3d0*x*zu1**(-1)*Hm0x + 6d0*x*zu1**(-1)*&
            &    Hmmz - 8d0/3d0*x*zu1**(-1)*H0mz - 6d0*x*zu1**(-1)*H0mx + 10./3d0*&
            &    x*zu1**(-1)*H00x - 16d0/3d0*x*zu1**(-1)*Hmz + 6d0*x*zu1**(-1)*&
            &    Hmz*Hmx - 10./3d0*x*zu1**(-1)*H0x*Hmz - 20./3d0*Pi*cI*x**(-1)*&
            &    yt1**(-1)*Hmx + 20./3d0*Pi*cI*x**(-1)*yt1**(-1)*Hmz + 20./3d0*&
            &    Pi*cI*x**(-1)*yt1**(-1)*H0x + 20./3d0*Pi*cI*x**(-1)*zu1**(-1)*&
            &    Hmx - 20./3d0*Pi*cI*x**(-1)*zu1**(-1)*Hmy - 20./3d0*Pi*cI*&
            &    x**(-1)*zu1**(-1)*H0x - 23d0/3d0*Pi*cI*yt1**(-1) + 72d0*Pi*cI*&
            &    yt1**(-1)*xm2 + 12d0*Pi*cI*yt1**(-1)*xp2 - 144d0*Pi*cI*&
            &    yt1**(-1)*xm3 - 8d0*Pi*cI*yt1**(-1)*xp3 + 72d0*Pi*cI*yt1**(-1)*&
            &    xm4 - 28d0/3d0*Pi*cI*yt1**(-1)*Hmx + 28d0*Pi*cI*yt1**(-1)*Hmy*&
            &    xp2 - 8d0/3d0*Pi*cI*yt1**(-1)*Hmy*xp3 + 28d0/3d0*Pi*cI*yt1**(-1)*&
            &    Hmz - 28d0*Pi*cI*yt1**(-1)*Hmz*xp2 + 8d0/3d0*Pi*cI*yt1**(-1)*Hmz&
            &    *xp3 - 10./3d0*Pi*cI*yt1**(-1)*H0x - 27d0*Pi*cI*yt1**(-1)*H0x*&
            &    xm2 - 4d0/3d0*Pi*cI*yt1**(-1)*H0x*xp2 + 138d0*Pi*cI*yt1**(-1)*&
            &    H0x*xm3 - 180.*Pi*cI*yt1**(-1)*H0x*xm4 + 72d0*Pi*cI*yt1**(-1)*&
            &    H0x*xm5 + 23d0/3d0*Pi*cI*zu1**(-1) - 72d0*Pi*cI*zu1**(-1)*xm2 - &
            &    12d0*Pi*cI*zu1**(-1)*xp2 + 144d0*Pi*cI*zu1**(-1)*xm3 + 8d0*Pi*cI&
            &    *zu1**(-1)*xp3 - 72d0*Pi*cI*zu1**(-1)*xm4 + 28d0/3d0*Pi*cI*&
            &    zu1**(-1)*Hmx - 28d0/3d0*Pi*cI*zu1**(-1)*Hmy + 28d0*Pi*cI*&
            &    zu1**(-1)*Hmy*xp2 - 8d0/3d0*Pi*cI*zu1**(-1)*Hmy*xp3 - 28d0*Pi*cI&
            &    *zu1**(-1)*Hmz*xp2 + 8d0/3d0*Pi*cI*zu1**(-1)*Hmz*xp3 + 10./3d0*&
            &    Pi*cI*zu1**(-1)*H0x + 27d0*Pi*cI*zu1**(-1)*H0x*xm2 + 4d0/3d0*Pi*&
            &    cI*zu1**(-1)*H0x*xp2 - 138d0*Pi*cI*zu1**(-1)*H0x*xm3 + 180.*Pi&
            &    *cI*zu1**(-1)*H0x*xm4 - 72d0*Pi*cI*zu1**(-1)*H0x*xm5 + 23d0/3d0*&
            &    Pi*cI - 45d0*Pi*cI*xm2 + 8d0*Pi*cI*xp2 + 72d0*Pi*cI*xm3 - 4d0/3d0*&
            &    Pi*cI*xp3 - 36d0*Pi*cI*xm4 + 35d0/3d0*Pi*cI*Hmx + 24d0*Pi*cI*Hmx*&
            &    xp2 + 26d0/3d0*Pi*cI*Hmy + 2d0*Pi*cI*Hmy*xp2 - 76d0/3d0*Pi*cI*Hmy*&
            &    xp3 + 12d0*Pi*cI*Hmy*xp4 - 61d0/3d0*Pi*cI*Hmz - 26d0*Pi*cI*Hmz*&
            &    xp2 + 76d0/3d0*Pi*cI*Hmz*xp3 - 12d0*Pi*cI*Hmz*xp4 + 27d0*Pi*cI*&
            &    H0x*xm2 - 10./3d0*Pi*cI*H0x*xp2 - 78d0*Pi*cI*H0x*xm3 - 6d0*Pi*cI&
            &    *H0x*xp3 + 90.*Pi*cI*H0x*xm4 - 36d0*Pi*cI*H0x*xm5 + 27d0*Pi*cI*&
            &    yt*xm2 + 8d0*Pi*cI*yt*xp2 - 72d0*Pi*cI*yt*xm3 - 4d0/3d0*Pi*cI*yt*&
            &    xp3 + 36d0*Pi*cI*yt*xm4 + 24d0*Pi*cI*yt*Hmx*xp2 + 24d0*Pi*cI*yt*&
            &    Hmy*xp2 - 48d0*Pi*cI*yt*Hmy*xp3 + 24d0*Pi*cI*yt*Hmy*xp4 - 48d0*&
            &    Pi*cI*yt*Hmz*xp2 + 48d0*Pi*cI*yt*Hmz*xp3 - 24d0*Pi*cI*yt*Hmz*&
            &    xp4 - 10./3d0*Pi*cI*yt*H0x*xp2 + 60.*Pi*cI*yt*H0x*xm3 - 6d0*Pi*&
            &    cI*yt*H0x*xp3 - 90.*Pi*cI*yt*H0x*xm4 + 36d0*Pi*cI*yt*H0x*xm5&
            &     + 12d0*Pi*cI*yt**2*Hmy*xp2 - 24d0*Pi*cI*yt**2*Hmy*xp3 + 12d0*Pi&
            &    *cI*yt**2*Hmy*xp4 - 12d0*Pi*cI*yt**2*Hmz*xp2 + 24d0*Pi*cI*yt**2&
            &    *Hmz*xp3 - 12d0*Pi*cI*yt**2*Hmz*xp4 - 1d0/3d0*Pi*cI*xm1*&
            &    yt1**(-1) - 8d0/3d0*Pi*cI*xm1*yt1**(-1)*Hmx + 2d0/3d0*Pi*cI*xm1*&
            &    yt1**(-1)*Hmy + 2d0*Pi*cI*xm1*yt1**(-1)*Hmz + 58d0/3d0*Pi*cI*xm1&
            &    *yt1**(-1)*H0x + 1d0/3d0*Pi*cI*xm1*zu1**(-1) + 8d0/3d0*Pi*cI*xm1*&
            &    zu1**(-1)*Hmx - 2d0*Pi*cI*xm1*zu1**(-1)*Hmy - 2d0/3d0*Pi*cI*xm1*&
            &    zu1**(-1)*Hmz - 58d0/3d0*Pi*cI*xm1*zu1**(-1)*H0x + 55d0/6d0*Pi*cI&
            &    *xm1 + 1d0/3d0*Pi*cI*xm1*Hmx + 1d0/6d0*Pi*cI*xm1*Hmy - 1d0/2d0*Pi*&
            &    cI*xm1*Hmz - 14d0/3d0*Pi*cI*xm1*H0x + 53d0/6d0*Pi*cI*xm1*yt - 1d0/&
            &    3d0*Pi*cI*xm1*yt*Hmx + 1d0/6d0*Pi*cI*xm1*yt*Hmy + 1d0/6d0*Pi*cI*&
            &    xm1*yt*Hmz + 5d0/3d0*Pi*cI*xm1*yt*H0x - 10./3d0*Pi*cI*xp1*&
            &    yt1**(-1) - 8d0/3d0*Pi*cI*xp1*yt1**(-1)*Hmx - 26d0*Pi*cI*xp1*&
            &    yt1**(-1)*Hmy + 86d0/3d0*Pi*cI*xp1*yt1**(-1)*Hmz - 1d0/3d0*Pi*cI*&
            &    xp1*yt1**(-1)*H0x + 10./3d0*Pi*cI*xp1*zu1**(-1) + 8d0/3d0*Pi*cI*&
            &    xp1*zu1**(-1)*Hmx - 86d0/3d0*Pi*cI*xp1*zu1**(-1)*Hmy + 26d0*Pi*&
            &    cI*xp1*zu1**(-1)*Hmz + 1d0/3d0*Pi*cI*xp1*zu1**(-1)*H0x - 43d0/6d0&
            &    *Pi*cI*xp1 - 71d0/3d0*Pi*cI*xp1*Hmx + 71d0/6d0*Pi*cI*xp1*Hmy + 71d0&
            &   /6d0*Pi*cI*xp1*Hmz - 4d0/3d0*Pi*cI*xp1*H0x - 13d0/2d0*Pi*cI*xp1*yt&
            &     - 71d0/3d0*Pi*cI*xp1*yt*Hmx - 1d0/6d0*Pi*cI*xp1*yt*Hmy + 143d0/6d0&
            &    *Pi*cI*xp1*yt*Hmz + 5d0/3d0*Pi*cI*xp1*yt*H0x - 16d0/3d0*Pi*cI*x*&
            &    yt1**(-1)*Hmx + 16d0/3d0*Pi*cI*x*yt1**(-1)*Hmz + 16d0/3d0*Pi*cI*x&
            &    *zu1**(-1)*Hmx - 16d0/3d0*Pi*cI*x*zu1**(-1)*Hmy - 2d0/3d0*z2*&
            &    x**(-1)*yt1**(-3) + 11d0*z2*x**(-1)*yt1**(-1) + 2d0/3d0*z2*&
            &    x**(-1)*zu1**(-3) - 11d0*z2*x**(-1)*zu1**(-1) - 4d0/3d0*z2*&
            &    yt1**(-3) - 52d0*z2*yt1**(-2) + 61d0*z2*yt1**(-1) - 63d0*z2*&
            &    yt1**(-1)*xm2 + 16d0/3d0*z2*yt1**(-1)*xp2 + 162d0*z2*yt1**(-1)*&
            &    xm3 - 180.*z2*yt1**(-1)*xm4 + 72d0*z2*yt1**(-1)*xm5 + 4d0/3d0*z2&
            &    *zu1**(-3) + 52d0*z2*zu1**(-2) - 61d0*z2*zu1**(-1) + 63d0*z2*&
            &    zu1**(-1)*xm2 - 16d0/3d0*z2*zu1**(-1)*xp2 - 162d0*z2*zu1**(-1)*&
            &    xm3 + 180.*z2*zu1**(-1)*xm4 - 72d0*z2*zu1**(-1)*xm5 - 62d0/3d0*&
            &    z2 + 45d0*z2*xm2 - 160./3d0*z2*xp2 - 90.*z2*xm3 + 34d0/3d0*z2*xp3&
            &     + 90.*z2*xm4 - 36d0*z2*xm5 - 18d0*z2*yt*xm2 - 160./3d0*z2*yt*&
            &    xp2 + 72d0*z2*yt*xm3 + 34d0/3d0*z2*yt*xp3 - 90.*z2*yt*xm4 + 36d0*&
            &    z2*yt*xm5 + 4d0*z2*xm1*yt1**(-2) + 44d0/3d0*z2*xm1*yt1**(-1) - 4d0&
            &    *z2*xm1*zu1**(-2) - 44d0/3d0*z2*xm1*zu1**(-1) - 28d0/3d0*z2*xm1&
            &     + 1d0/3d0*z2*xm1*yt + 4d0*z2*xp1*yt1**(-2) - 7d0*z2*xp1*&
            &    yt1**(-1) - 4d0*z2*xp1*zu1**(-2) + 7d0*z2*xp1*zu1**(-1) + 142d0/&
            &    3d0*z2*xp1 + 125d0/3d0*z2*xp1*yt - 2d0/3d0*z2*x*yt1**(-3) + 31d0/3d0&
            &    *z2*x*yt1**(-1) + 2d0/3d0*z2*x*zu1**(-3) - 31d0/3d0*z2*x*&
            &    zu1**(-1)

       do i = 0, 2
          Hgg1_coeff(i,3,1) = conjg(Hgg1_coeff(i,1,3))
          Hgg1_coeff(i,3,2) = conjg(Hgg1_coeff(i,2,3))
       end do

       Hgg1_coeff(2,3,3) = ( 6d0 - 3d0*x**(-1)*&
            &    yt1**(-1) - 3d0*x**(-1)*zu1**(-1) + 12d0*yt1**(-2) - 18d0*&
            &    yt1**(-1) - 24d0*yt1**(-1)*xp2 + 12d0*zu1**(-2) - 18d0*zu1**(-1)&
            &     - 24d0*zu1**(-1)*xp2 + 24d0*xp1*yt1**(-1) + 24d0*xp1*zu1**(-1)&
            &     - 3d0*x*yt1**(-1) - 3d0*x*zu1**(-1) )
       Hgg1_coeff(1,3,3) = ( 16d0/3d0 - 8d0/3d0*x**(-1)*yt1**(-1) + 6d0*x**(-1)*&
            &    yt1**(-1)*Hmx + 6d0*x**(-1)*yt1**(-1)*Hmy - 8d0/3d0*x**(-1)*&
            &    yt1**(-1)*H0x - 8d0/3d0*x**(-1)*zu1**(-1) + 6d0*x**(-1)*&
            &    zu1**(-1)*Hmx + 6d0*x**(-1)*zu1**(-1)*Hmz - 8d0/3d0*x**(-1)*&
            &    zu1**(-1)*H0x + 32d0/3d0*yt1**(-2) - 24d0*yt1**(-2)*Hmx - 24d0*&
            &    yt1**(-2)*Hmy + 40./3d0*yt1**(-2)*H0x - 16d0*yt1**(-1) - 64d0/3d0&
            &    *yt1**(-1)*xp2 + 36d0*yt1**(-1)*Hmx + 48d0*yt1**(-1)*Hmx*xp2 + &
            &    36d0*yt1**(-1)*Hmy + 24d0*yt1**(-1)*Hmy*xp2 + 24d0*yt1**(-1)*Hmz&
            &    *xp2 - 20.*yt1**(-1)*H0x - 28d0*yt1**(-1)*H0x*xp2 + 8d0/3d0*&
            &    yt1**(-1)*H0x*xp3 + 32d0/3d0*zu1**(-2) - 24d0*zu1**(-2)*Hmx - 24d0&
            &    *zu1**(-2)*Hmz + 40./3d0*zu1**(-2)*H0x - 16d0*zu1**(-1) - 64d0/3d0&
            &    *zu1**(-1)*xp2 + 36d0*zu1**(-1)*Hmx + 48d0*zu1**(-1)*Hmx*xp2 + &
            &    24d0*zu1**(-1)*Hmy*xp2 + 36d0*zu1**(-1)*Hmz + 24d0*zu1**(-1)*Hmz&
            &    *xp2 - 20.*zu1**(-1)*H0x - 28d0*zu1**(-1)*H0x*xp2 + 8d0/3d0*&
            &    zu1**(-1)*H0x*xp3 - 12d0*Hmx - 12d0*Hmy - 12d0*Hmy*xp2 + 12d0*Hmz&
            &    *xp2 + 20./3d0*H0x - 12d0*yt*Hmy*xp2 + 12d0*yt*Hmz*xp2 - 4d0/3d0*&
            &    xm1*yt1**(-2)*H0x + 2d0*xm1*yt1**(-1)*H0x - 4d0/3d0*xm1*&
            &    zu1**(-2)*H0x + 2d0*xm1*zu1**(-1)*H0x - 2d0/3d0*xm1*H0x - 4d0/3d0*&
            &    xp1*yt1**(-2)*H0x + 64d0/3d0*xp1*yt1**(-1) - 48d0*xp1*yt1**(-1)*&
            &    Hmx - 24d0*xp1*yt1**(-1)*Hmy - 24d0*xp1*yt1**(-1)*Hmz + 82d0/3d0*&
            &    xp1*yt1**(-1)*H0x - 4d0/3d0*xp1*zu1**(-2)*H0x + 64d0/3d0*xp1*&
            &    zu1**(-1) - 48d0*xp1*zu1**(-1)*Hmx - 24d0*xp1*zu1**(-1)*Hmy - &
            &    24d0*xp1*zu1**(-1)*Hmz + 82d0/3d0*xp1*zu1**(-1)*H0x + 12d0*xp1*&
            &    Hmy - 12d0*xp1*Hmz - 2d0/3d0*xp1*H0x + 12d0*xp1*yt*Hmy - 12d0*xp1*&
            &    yt*Hmz - 8d0/3d0*x*yt1**(-1) + 6d0*x*yt1**(-1)*Hmx + 6d0*x*&
            &    yt1**(-1)*Hmy - 10./3d0*x*yt1**(-1)*H0x - 8d0/3d0*x*zu1**(-1) + &
            &    6d0*x*zu1**(-1)*Hmx + 6d0*x*zu1**(-1)*Hmz - 10./3d0*x*zu1**(-1)*&
            &    H0x )
       Hgg1_coeff(0,3,3) = + 8d0 - 4d0/3d0*x**(-1)*yt**(-1)*Hmy&
            &     - 2d0/3d0*x**(-1)*yt1**(-3)*H0my + 2d0/3d0*x**(-1)*yt1**(-2) - 2d0&
            &   /3d0*x**(-1)*yt1**(-2)*Hmy - 4d0*x**(-1)*yt1**(-1) + 2d0/3d0*&
            &    x**(-1)*yt1**(-1)*Hp0x - 6d0*x**(-1)*yt1**(-1)*Hmmy + 8d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0my - 18d0*x**(-1)*yt1**(-1)*Hmmx + 10.*&
            &    x**(-1)*yt1**(-1)*Hm0x - 12d0*x**(-1)*yt1**(-1)*Hmmz + 16d0/3d0*&
            &    x**(-1)*yt1**(-1)*H0mz + 12d0*x**(-1)*yt1**(-1)*H0mx - 20./3d0*&
            &    x**(-1)*yt1**(-1)*H00x + 16d0/3d0*x**(-1)*yt1**(-1)*Hmy - 6d0*&
            &    x**(-1)*yt1**(-1)*Hmy*Hmx + 12d0*x**(-1)*yt1**(-1)*Hmz*Hmx + 8d0&
            &   /3d0*x**(-1)*yt1**(-1)*H0x*Hmy - 20./3d0*x**(-1)*yt1**(-1)*H0x*&
            &    Hmz - 2d0/3d0*x**(-1)*zu1**(-3)*H0mz + 2d0/3d0*x**(-1)*zu1**(-2)&
            &     - 2d0/3d0*x**(-1)*zu1**(-2)*Hmz - 4d0*x**(-1)*zu1**(-1) + 2d0/3d0&
            &    *x**(-1)*zu1**(-1)*Hp0x - 12d0*x**(-1)*zu1**(-1)*Hmmy + 16d0/3d0&
            &    *x**(-1)*zu1**(-1)*H0my - 18d0*x**(-1)*zu1**(-1)*Hmmx + 10.*&
            &    x**(-1)*zu1**(-1)*Hm0x - 6d0*x**(-1)*zu1**(-1)*Hmmz + 8d0/3d0*&
            &    x**(-1)*zu1**(-1)*H0mz + 12d0*x**(-1)*zu1**(-1)*H0mx - 20./3d0*&
            &    x**(-1)*zu1**(-1)*H00x + 12d0*x**(-1)*zu1**(-1)*Hmy*Hmx + 16d0/&
            &    3d0*x**(-1)*zu1**(-1)*Hmz - 6d0*x**(-1)*zu1**(-1)*Hmz*Hmx - 20./&
            &    3d0*x**(-1)*zu1**(-1)*H0x*Hmy + 8d0/3d0*x**(-1)*zu1**(-1)*H0x*&
            &    Hmz - 8d0/3d0*yt**(-2)*zu1**(-1)*Hmy - 4d0/3d0*yt**(-2)*Hmy + 8d0/&
            &    3d0*yt**(-1)*zu1**(-1) + 28d0/3d0*yt**(-1)*zu1**(-1)*Hmy + 4d0/3d0&
            &    *yt**(-1) + 10./3d0*yt**(-1)*Hmy - 8d0/3d0*zu**(-2)*yt1**(-1)*&
            &    Hmz - 4d0/3d0*zu**(-2)*Hmz + 8d0/3d0*zu**(-1)*yt1**(-1) + 28d0/3d0*&
            &    zu**(-1)*yt1**(-1)*Hmz + 4d0/3d0*zu**(-1) + 10./3d0*zu**(-1)*Hmz&
            &     - 4d0/3d0*yt1**(-3)*H0my + 68d0/3d0*yt1**(-2) + 8d0/3d0*yt1**(-2)*&
            &    Hp0x - 2d0/3d0*yt1**(-2)*H0my + 8d0/3d0*yt1**(-2)*Hm0x - 68d0/3d0*&
            &    yt1**(-2)*Hmy + 48d0*yt1**(-2)*Hmy*Hmx - 80./3d0*yt1**(-2)*H0x*&
            &    Hmy - 32d0*yt1**(-1) - 128d0/3d0*yt1**(-1)*xp2 - 4d0*yt1**(-1)*&
            &    Hp0x - 8d0*yt1**(-1)*Hp0x*xp2 + 16d0/3d0*yt1**(-1)*Hp0x*xp3 - 36d0&
            &    *yt1**(-1)*Hmmy + 18d0*yt1**(-1)*H0my - 2d0*yt1**(-1)*H0my*xp2&
            &     - 60.*yt1**(-1)*Hmmx + 76d0/3d0*yt1**(-1)*Hm0x - 8d0*yt1**(-1)*&
            &    Hm0x*xp2 + 16d0/3d0*yt1**(-1)*Hm0x*xp3 - 24d0*yt1**(-1)*Hmmz + &
            &    10.*yt1**(-1)*H0mz - 2d0*yt1**(-1)*H0mz*xp2 + 30.*yt1**(-1)*&
            &    H0mx + 72d0*yt1**(-1)*H0mx*xm2 - 48d0*yt1**(-1)*H0mx*xm3 - 47d0/&
            &    3d0*yt1**(-1)*H00x - 36d0*yt1**(-1)*H00x*xm2 - 4d0/3d0*yt1**(-1)*&
            &    H00x*xp2 + 24d0*yt1**(-1)*H00x*xm3 - 12d0*yt1**(-1)*Hmx - 48d0*&
            &    yt1**(-1)*Hmx*xm2 + 62d0/3d0*yt1**(-1)*Hmy + 64d0/3d0*yt1**(-1)*&
            &    Hmy*xp2 - 36d0*yt1**(-1)*Hmy*Hmx - 48d0*yt1**(-1)*Hmy*Hmx*xp2&
            &     + 34d0/3d0*yt1**(-1)*Hmz + 64d0/3d0*yt1**(-1)*Hmz*xp2 + 24d0*&
            &    yt1**(-1)*Hmz*Hmx - 48d0*yt1**(-1)*Hmz*Hmx*xp2 + 16d0/3d0*&
            &    yt1**(-1)*H0x + 24d0*yt1**(-1)*H0x*xm2 + 20.*yt1**(-1)*H0x*Hmy&
            &     + 28d0*yt1**(-1)*H0x*Hmy*xp2 - 8d0/3d0*yt1**(-1)*H0x*Hmy*xp3 - &
            &    28d0/3d0*yt1**(-1)*H0x*Hmz + 28d0*yt1**(-1)*H0x*Hmz*xp2 - 8d0/3d0*&
            &    yt1**(-1)*H0x*Hmz*xp3 - 4d0/3d0*zu1**(-3)*H0mz + 68d0/3d0*&
            &    zu1**(-2) + 8d0/3d0*zu1**(-2)*Hp0x + 8d0/3d0*zu1**(-2)*Hm0x - 2d0/&
            &    3d0*zu1**(-2)*H0mz - 68d0/3d0*zu1**(-2)*Hmz + 48d0*zu1**(-2)*Hmz*&
            &    Hmx - 80./3d0*zu1**(-2)*H0x*Hmz - 32d0*zu1**(-1) - 128d0/3d0*&
            &    zu1**(-1)*xp2 - 4d0*zu1**(-1)*Hp0x - 8d0*zu1**(-1)*Hp0x*xp2 + &
            &    16d0/3d0*zu1**(-1)*Hp0x*xp3 - 24d0*zu1**(-1)*Hmmy + 10.*&
            &    zu1**(-1)*H0my - 2d0*zu1**(-1)*H0my*xp2 - 60.*zu1**(-1)*Hmmx&
            &     + 76d0/3d0*zu1**(-1)*Hm0x - 8d0*zu1**(-1)*Hm0x*xp2 + 16d0/3d0*&
            &    zu1**(-1)*Hm0x*xp3 - 36d0*zu1**(-1)*Hmmz + 18d0*zu1**(-1)*H0mz&
            &     - 2d0*zu1**(-1)*H0mz*xp2 + 30.*zu1**(-1)*H0mx + 72d0*zu1**(-1)&
            &    *H0mx*xm2 - 48d0*zu1**(-1)*H0mx*xm3 - 47d0/3d0*zu1**(-1)*H00x - &
            &    36d0*zu1**(-1)*H00x*xm2 - 4d0/3d0*zu1**(-1)*H00x*xp2 + 24d0*&
            &    zu1**(-1)*H00x*xm3 - 12d0*zu1**(-1)*Hmx - 48d0*zu1**(-1)*Hmx*&
            &    xm2 + 34d0/3d0*zu1**(-1)*Hmy + 64d0/3d0*zu1**(-1)*Hmy*xp2 + 24d0*&
            &    zu1**(-1)*Hmy*Hmx - 48d0*zu1**(-1)*Hmy*Hmx*xp2 + 62d0/3d0*&
            &    zu1**(-1)*Hmz + 64d0/3d0*zu1**(-1)*Hmz*xp2 - 36d0*zu1**(-1)*Hmz*&
            &    Hmx - 48d0*zu1**(-1)*Hmz*Hmx*xp2 + 16d0/3d0*zu1**(-1)*H0x + 24d0*&
            &    zu1**(-1)*H0x*xm2 - 28d0/3d0*zu1**(-1)*H0x*Hmy + 28d0*zu1**(-1)*&
            &    H0x*Hmy*xp2 - 8d0/3d0*zu1**(-1)*H0x*Hmy*xp3 + 20.*zu1**(-1)*H0x&
            &    *Hmz + 28d0*zu1**(-1)*H0x*Hmz*xp2 - 8d0/3d0*zu1**(-1)*H0x*Hmz*&
            &    xp3 + 4d0/3d0*Hp0x + 24d0*Hmmy - 35d0/3d0*H0my + 48d0*Hmmx - 70./3d0&
            &    *Hm0x + 24d0*Hmmz - 35d0/3d0*H0mz - 12d0*H0mx - 72d0*H0mx*xm2 + 48d0&
            &    *H0mx*xm3 + 20./3d0*H00x + 36d0*H00x*xm2 - 24d0*H00x*xm3 + 12d0*&
            &    Hmx + 48d0*Hmx*xm2 - 22d0/3d0*Hmy + 24d0*Hmy*Hmx*xp2 - 26d0/3d0*Hmz&
            &     - 24d0*Hmz*Hmx - 24d0*Hmz*Hmx*xp2 - 16d0/3d0*H0x - 24d0*H0x*xm2&
            &     - 1d0/3d0*H0x*Hmy - 12d0*H0x*Hmy*xp2 + 35d0/3d0*H0x*Hmz + 12d0*H0x&
            &    *Hmz*xp2 - 4d0/3d0*yt*zu**(-1)*Hmz + 24d0*yt*Hmy*Hmx*xp2 - 24d0*&
            &    yt*Hmz*Hmx*xp2 - 12d0*yt*H0x*Hmy*xp2 + 12d0*yt*H0x*Hmz*xp2 - 8d0/&
            &    3d0*xm1*yt1**(-2)*Hp0x - 8d0/3d0*xm1*yt1**(-2)*Hm0x + 8d0/3d0*xm1*&
            &    yt1**(-2)*H0x*Hmy + 4d0*xm1*yt1**(-1)*Hp0x + 4d0*xm1*yt1**(-1)*&
            &    Hm0x - 12d0*xm1*yt1**(-1)*H0mx + 6d0*xm1*yt1**(-1)*H00x + 48d0*&
            &    xm1*yt1**(-1)*Hmx - 68d0/3d0*xm1*yt1**(-1)*H0x - 2d0*xm1*&
            &    yt1**(-1)*H0x*Hmy - 2d0*xm1*yt1**(-1)*H0x*Hmz - 8d0/3d0*xm1*&
            &    zu1**(-2)*Hp0x - 8d0/3d0*xm1*zu1**(-2)*Hm0x + 8d0/3d0*xm1*&
            &    zu1**(-2)*H0x*Hmz + 4d0*xm1*zu1**(-1)*Hp0x + 4d0*xm1*zu1**(-1)*&
            &    Hm0x - 12d0*xm1*zu1**(-1)*H0mx + 6d0*xm1*zu1**(-1)*H00x + 48d0*&
            &    xm1*zu1**(-1)*Hmx - 68d0/3d0*xm1*zu1**(-1)*H0x - 2d0*xm1*&
            &    zu1**(-1)*H0x*Hmy - 2d0*xm1*zu1**(-1)*H0x*Hmz - 4d0/3d0*xm1*Hp0x&
            &     - 4d0/3d0*xm1*Hm0x + 12d0*xm1*H0mx - 6d0*xm1*H00x - 48d0*xm1*Hmx&
            &     + 68d0/3d0*xm1*H0x + 2d0/3d0*xm1*H0x*Hmy + 2d0/3d0*xm1*H0x*Hmz - 8d0&
            &   /3d0*xp1*yt1**(-2)*Hp0x - 8d0/3d0*xp1*yt1**(-2)*Hm0x + 8d0/3d0*xp1&
            &    *yt1**(-2)*H0x*Hmy + 128d0/3d0*xp1*yt1**(-1) + 20./3d0*xp1*&
            &    yt1**(-1)*Hp0x + 2d0*xp1*yt1**(-1)*H0my + 8d0*xp1*yt1**(-1)*&
            &    Hm0x + 2d0*xp1*yt1**(-1)*H0mz - 12d0*xp1*yt1**(-1)*H0mx + 20./3d0&
            &    *xp1*yt1**(-1)*H00x - 64d0/3d0*xp1*yt1**(-1)*Hmy + 48d0*xp1*&
            &    yt1**(-1)*Hmy*Hmx - 64d0/3d0*xp1*yt1**(-1)*Hmz + 48d0*xp1*&
            &    yt1**(-1)*Hmz*Hmx - 82d0/3d0*xp1*yt1**(-1)*H0x*Hmy - 86d0/3d0*xp1&
            &    *yt1**(-1)*H0x*Hmz - 8d0/3d0*xp1*zu1**(-2)*Hp0x - 8d0/3d0*xp1*&
            &    zu1**(-2)*Hm0x + 8d0/3d0*xp1*zu1**(-2)*H0x*Hmz + 128d0/3d0*xp1*&
            &    zu1**(-1) + 20./3d0*xp1*zu1**(-1)*Hp0x + 2d0*xp1*zu1**(-1)*H0my&
            &     + 8d0*xp1*zu1**(-1)*Hm0x + 2d0*xp1*zu1**(-1)*H0mz - 12d0*xp1*&
            &    zu1**(-1)*H0mx + 20./3d0*xp1*zu1**(-1)*H00x - 64d0/3d0*xp1*&
            &    zu1**(-1)*Hmy + 48d0*xp1*zu1**(-1)*Hmy*Hmx - 64d0/3d0*xp1*&
            &    zu1**(-1)*Hmz + 48d0*xp1*zu1**(-1)*Hmz*Hmx - 86d0/3d0*xp1*&
            &    zu1**(-1)*H0x*Hmy - 82d0/3d0*xp1*zu1**(-1)*H0x*Hmz - 4d0/3d0*xp1*&
            &    Hp0x - 12d0*xp1*H0mx + 16d0/3d0*xp1*H00x - 24d0*xp1*Hmy*Hmx + 24d0&
            &    *xp1*Hmz*Hmx + 12d0*xp1*H0x*Hmy - 12d0*xp1*H0x*Hmz - 24d0*xp1*yt&
            &    *Hmy*Hmx + 24d0*xp1*yt*Hmz*Hmx + 12d0*xp1*yt*H0x*Hmy - 12d0*xp1*&
            &    yt*H0x*Hmz - 4d0/3d0*x*yt**(-1)*Hmy - 2d0/3d0*x*yt1**(-3)*H0my + &
            &    2d0/3d0*x*yt1**(-2) - 2d0/3d0*x*yt1**(-2)*Hmy - 4d0*x*yt1**(-1) - &
            &    2d0/3d0*x*yt1**(-1)*Hp0x - 6d0*x*yt1**(-1)*Hmmy + 8d0/3d0*x*&
            &    yt1**(-1)*H0my - 18d0*x*yt1**(-1)*Hmmx + 8d0*x*yt1**(-1)*Hm0x&
            &     - 12d0*x*yt1**(-1)*Hmmz + 16d0/3d0*x*yt1**(-1)*H0mz + 6d0*x*&
            &    yt1**(-1)*H0mx - 10./3d0*x*yt1**(-1)*H00x + 16d0/3d0*x*yt1**(-1)&
            &    *Hmy - 6d0*x*yt1**(-1)*Hmy*Hmx + 12d0*x*yt1**(-1)*Hmz*Hmx + 10./&
            &    3d0*x*yt1**(-1)*H0x*Hmy - 16d0/3d0*x*yt1**(-1)*H0x*Hmz - 2d0/3d0*x&
            &    *zu1**(-3)*H0mz + 2d0/3d0*x*zu1**(-2) - 2d0/3d0*x*zu1**(-2)*Hmz&
            &     - 4d0*x*zu1**(-1) - 2d0/3d0*x*zu1**(-1)*Hp0x - 12d0*x*zu1**(-1)*&
            &    Hmmy + 16d0/3d0*x*zu1**(-1)*H0my - 18d0*x*zu1**(-1)*Hmmx + 8d0*x*&
            &    zu1**(-1)*Hm0x - 6d0*x*zu1**(-1)*Hmmz + 8d0/3d0*x*zu1**(-1)*H0mz&
            &     + 6d0*x*zu1**(-1)*H0mx - 10./3d0*x*zu1**(-1)*H00x + 12d0*x*&
            &    zu1**(-1)*Hmy*Hmx + 16d0/3d0*x*zu1**(-1)*Hmz - 6d0*x*zu1**(-1)*&
            &    Hmz*Hmx - 16d0/3d0*x*zu1**(-1)*H0x*Hmy + 10./3d0*x*zu1**(-1)*H0x&
            &    *Hmz - 2d0/3d0*z2*x**(-1)*yt1**(-3) + 17d0/3d0*z2*x**(-1)*&
            &    yt1**(-1) - 2d0/3d0*z2*x**(-1)*zu1**(-3) + 17d0/3d0*z2*x**(-1)*&
            &    zu1**(-1) - 4d0/3d0*z2*yt1**(-3) - 158d0/3d0*z2*yt1**(-2) + 191d0/&
            &    3d0*z2*yt1**(-1) - 36d0*z2*yt1**(-1)*xm2 + 108d0*z2*yt1**(-1)*&
            &    xp2 + 24d0*z2*yt1**(-1)*xm3 - 8d0*z2*yt1**(-1)*xp3 - 4d0/3d0*z2*&
            &    zu1**(-3) - 158d0/3d0*z2*zu1**(-2) + 191d0/3d0*z2*zu1**(-1) - 36d0&
            &    *z2*zu1**(-1)*xm2 + 108d0*z2*zu1**(-1)*xp2 + 24d0*z2*zu1**(-1)*&
            &    xm3 - 8d0*z2*zu1**(-1)*xp3 - 62d0/3d0*z2 + 36d0*z2*xm2 - 24d0*z2*&
            &    xm3 + 4d0*z2*xm1*yt1**(-2) + 4d0*z2*xm1*zu1**(-2) - 4d0*z2*xm1&
            &     + 4d0*z2*xp1*yt1**(-2) - 298d0/3d0*z2*xp1*yt1**(-1) + 4d0*z2*xp1&
            &    *zu1**(-2) - 298d0/3d0*z2*xp1*zu1**(-1) + 26d0/3d0*z2*xp1 - 2d0/3d0&
            &    *z2*x*yt1**(-3) + 31d0/3d0*z2*x*yt1**(-1) - 2d0/3d0*z2*x*&
            &    zu1**(-3) + 31d0/3d0*z2*x*zu1**(-1)


       Hgg1 = Lmu2m2**2 * Hgg1_coeff(2,:,:) + Lmu2m2 * Hgg1_coeff(1,:,:) + Hgg1_coeff(0,:,:)
    end if

    Hgg2_coeff = 0d0

    if (n > 1) then
       gamma0 = gammaHgg0 + gammaCuspA(0)*dcmplx(2d0*Hmx-H0x,-pi)*idmat
       gamma1 = gammaHgg1 + gammaCuspA(1)*dcmplx(2d0*Hmx-H0x,-pi)*idmat

       temp = (-gammaCuspA(0)*Hgg1_coeff(2,:,:)) / 8d0
       Hgg2_coeff(4,:,:) = temp + transpose(conjg(temp))
       temp = (-gammaCuspA(0)*Hgg1_coeff(1,:,:) + matmul(gamma0,Hgg1_coeff(2,:,:)) &
            + 3d0*beta(0)*Hgg1_coeff(2,:,:)) / 6d0
       Hgg2_coeff(3,:,:) = temp + transpose(conjg(temp))
       temp = (-gammaCuspA(0)*Hgg1_coeff(0,:,:) + matmul(gamma0,Hgg1_coeff(1,:,:)) &
            - gammaCuspA(1)*Hgg0 + 3d0*beta(0)*Hgg1_coeff(1,:,:)) / 4d0
       Hgg2_coeff(2,:,:) = temp + transpose(conjg(temp))
       temp = (matmul(gamma0,Hgg1_coeff(0,:,:)) + matmul(gamma1,Hgg0) &
            + 3d0*beta(0)*Hgg1_coeff(0,:,:) + 2d0*beta(1)*Hgg0) / 2d0
       Hgg2_coeff(1,:,:) = temp + transpose(conjg(temp))
    end if
  end subroutine Top_Hard_gg

!!!!!!!!!! soft !!!!!!!!!!

  subroutine Top_Soft_gg_PIM(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: w12gg(3,3) = &
         reshape( (/ -9d0, 0d0, 0d0, 0d0, -9d0/4d0, 0d0, 0d0, 0d0, -5d0/4d0 /), (/ 3, 3 /) )
    real(8), parameter :: w34gg(3,3) = &
         reshape( (/ -4d0, 0d0, 0d0, 0d0, 1d0/4d0, 0d0, 0d0, 0d0, 5d0/36d0 /), (/ 3, 3 /) )
    real(8), parameter :: w33gg(3,3) = &
         reshape( (/ 4d0, 0d0, 0d0, 0d0, 2d0, 0d0, 0d0, 0d0, 10d0/9d0 /), (/ 3, 3 /) )
    real(8), parameter :: w44gg(3,3) = w33gg
    real(8), parameter :: w13gg(3,3) = &
         reshape( (/ 0d0, -3d0/2d0, 0d0, -3d0/2d0, -9d0/8d0, -5d0/8d0, 0d0, -5d0/8d0, -5d0/8d0 /), (/ 3, 3 /) )
    real(8), parameter :: w24gg(3,3) = w13gg
    real(8), parameter :: w14gg(3,3) = &
         reshape( (/ 0d0, 3d0/2d0, 0d0, 3d0/2d0, -9d0/8d0, 5d0/8d0, 0d0, 5d0/8d0, -5d0/8d0 /), (/ 3, 3 /) )
    real(8), parameter :: w23gg(3,3) = w14gg
    real(8), parameter :: idmat(3,3) = reshape( (/ 1d0, 0d0, 0d0, 0d0, 1d0, 0d0, 0d0, 0d0, 1d0 /), (/ 3, 3 /) )
    real(8) :: I12, I33, I44, I14, I24, I13, I23, I34
    real(8) :: gamma0(3,3), gamma1(3,3), temp(3,3)

    Sgg1 = 0d0

    if (n > 0) then
       I12 = -1d0
       I33 = 0d0
       I44 = I33
       I13 = -.5d0
       I24 = I13
       I14 = -.5d0
       I23 = I14
       I34 = 0d0
       Sgg1(2,:,:) = I12*w12gg*2 + I34*w34gg*2 + I33*w33gg + I44*w44gg &
            + I13*w13gg*2 + I24*w24gg*2 + I14*w14gg*2 + I23*w23gg*2

       I12 = 0d0
       I33 = -2d0
       I44 = I33
       I13 = -(2d0*Hmy + H0x - 2d0*Hmx)
       I24 = I13
       I14 = -(2d0*Hmz + H0x - 2d0*Hmx)
       I23 = I14
       I34 = log(x)*(1d0+b**2)/b
       Sgg1(1,:,:) = I12*w12gg*2 + I34*w34gg*2 + I33*w33gg + I44*w44gg &
            + I13*w13gg*2 + I24*w24gg*2 + I14*w14gg*2 + I23*w23gg*2

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
       Sgg1(0,:,:) = I12*w12gg*2 + I34*w34gg*2 + I33*w33gg + I44*w44gg &
            + I13*w13gg*2 + I24*w24gg*2 + I14*w14gg*2 + I23*w23gg*2
    end if

    Sgg2 = 0d0

    if (n > 1) then
       gamma0 = gammaHgg0 + 2d0*gamma_phi_g(0)*idmat
       gamma1 = gammaHgg1 + 2d0*gamma_phi_g(1)*idmat

       temp = Sgg1(2,:,:)*gammaCuspA(0)/8d0
       Sgg2(4,:,:) = temp + transpose(temp)
       temp = (Sgg1(1,:,:)*gammaCuspA(0) + matmul(Sgg1(2,:,:),gamma0) - beta(0)*Sgg1(2,:,:)) / 6d0
       Sgg2(3,:,:) = temp + transpose(temp)
       temp = (Sgg1(0,:,:)*gammaCuspA(0) + matmul(Sgg1(1,:,:),gamma0) &
            + Sgg0*gammaCuspA(1) - beta(0)*Sgg1(1,:,:)) / 4d0
       Sgg2(2,:,:) = temp + transpose(temp)
       temp = (matmul(Sgg1(0,:,:),gamma0) + matmul(Sgg0,gamma1) - beta(0)*Sgg1(0,:,:)) / 2d0
       Sgg2(1,:,:) = temp + transpose(temp)
    end if
  end subroutine Top_Soft_gg_PIM


  subroutine Top_Soft_gg_1PI(n)
    implicit none
    integer, intent(in) :: n
    real(8), parameter :: w12gg(3,3) = &
         reshape( (/ -9d0, 0d0, 0d0, 0d0, -9d0/4d0, 0d0, 0d0, 0d0, -5d0/4d0 /), (/ 3, 3 /) )
    real(8), parameter :: w34gg(3,3) = &
         reshape( (/ -4d0, 0d0, 0d0, 0d0, 1d0/4d0, 0d0, 0d0, 0d0, 5d0/36d0 /), (/ 3, 3 /) )
    real(8), parameter :: w33gg(3,3) = &
         reshape( (/ 4d0, 0d0, 0d0, 0d0, 2d0, 0d0, 0d0, 0d0, 10d0/9d0 /), (/ 3, 3 /) )
    real(8), parameter :: w44gg(3,3) = w33gg
    real(8), parameter :: w13gg(3,3) = &
         reshape( (/ 0d0, -3d0/2d0, 0d0, -3d0/2d0, -9d0/8d0, -5d0/8d0, 0d0, -5d0/8d0, -5d0/8d0 /), (/ 3, 3 /) )
    real(8), parameter :: w24gg(3,3) = w13gg
    real(8), parameter :: w14gg(3,3) = &
         reshape( (/ 0d0, 3d0/2d0, 0d0, 3d0/2d0, -9d0/8d0, 5d0/8d0, 0d0, 5d0/8d0, -5d0/8d0 /), (/ 3, 3 /) )
    real(8), parameter :: w23gg(3,3) = w14gg
    real(8), parameter :: idmat(3,3) = reshape( (/ 1d0, 0d0, 0d0, 0d0, 1d0, 0d0, 0d0, 0d0, 1d0 /), (/ 3, 3 /) )
    real(8) :: I12p, I33p, I44p, I14p, I24p, I13p, I23p, I34p
    real(8) :: gamma0(3,3), gamma1(3,3), temp(3,3)

    Sgg1 = 0d0

    if (n > 0) then
       I12p = -1d0
       I33p = 0d0
       I44p = 0d0
       I14p = -.5d0
       I24p = I14p
       I13p = -.5d0
       I23p = -.5d0
       I34p = 0d0
       Sgg1(2,:,:) = I12p*w12gg*2 + I34p*w34gg*2 + I33p*w33gg + I44p*w44gg &
            + I13p*w13gg*2 + I24p*w24gg*2 + I14p*w14gg*2 + I23p*w23gg*2

       I12p = -2d0*(2d0*Hmx - H0x - Hmy - Hmz)
       I33p = -2d0
       I44p = -2d0
       I14p = 0d0
       I24p = I14p
       I13p = -2d0*(Hmy - Hmz)
       I23p = -2d0*(Hmz - Hmy)
       I34p = H0x*(1d0+b**2)/b
       Sgg1(1,:,:) = I12p*w12gg*2 + I34p*w34gg*2 + I33p*w33gg + I44p*w44gg &
            + I13p*w13gg*2 + I24p*w24gg*2 + I14p*w14gg*2 + I23p*w23gg*2

       I12p = -(2d0*Hmx - H0x - Hmy - Hmz)**2 - 2d0*ddilog(1d0-(1d0+x)**2/x/(1d0+yt)/(1d0+zu)) - z2
       I33p = -2d0*H0x*(1d0+b**2)/b
       I44p = 4d0
       I14p = -z2/2d0
       I24p = I14p
       I13p = -2d0*(Hmy - Hmz)**2 - z2/2d0 - 2d0*ddilog(1d0-(1d0+yt)/(1d0+zu)/x) - 2d0*ddilog(1d0-(1d0+yt)*x/(1d0+zu))
       I23p = -2d0*(Hmz - Hmy)**2 - z2/2d0 - 2d0*ddilog(1d0-(1d0+zu)/(1d0+yt)/x) - 2d0*ddilog(1d0-(1d0+zu)*x/(1d0+yt))
       I34p = (H0x**2 - 2d0*H0x*(Hmx-Hpx) - ddilog(x**2) + z2) * (1d0+b**2)/b
       Sgg1(0,:,:) = I12p*w12gg*2 + I34p*w34gg*2 + I33p*w33gg + I44p*w44gg &
            + I13p*w13gg*2 + I24p*w24gg*2 + I14p*w14gg*2 + I23p*w23gg*2
    end if

    Sgg2 = 0d0

    if (n > 1) then
       gamma0 = gammaHgg0 + (gammaCuspA(0)*(2d0*Hmx-H0x-Hmy-Hmz) + 2d0*gamma_phi_g(0)) * idmat
       gamma1 = gammaHgg1 + (gammaCuspA(1)*(2d0*Hmx-H0x-Hmy-Hmz) + 2d0*gamma_phi_g(1)) * idmat

       temp = Sgg1(2,:,:)*gammaCuspA(0)/8d0
       Sgg2(4,:,:) = temp + transpose(temp)
       temp = (Sgg1(1,:,:)*gammaCuspA(0) + matmul(Sgg1(2,:,:),gamma0) - beta(0)*Sgg1(2,:,:)) / 6d0
       Sgg2(3,:,:) = temp + transpose(temp)
       temp = (Sgg1(0,:,:)*gammaCuspA(0) + matmul(Sgg1(1,:,:),gamma0) &
            + Sgg0*gammaCuspA(1) - beta(0)*Sgg1(1,:,:)) / 4d0
       Sgg2(2,:,:) = temp + transpose(temp)
       temp = (matmul(Sgg1(0,:,:),gamma0) + matmul(Sgg0,gamma1) - beta(0)*Sgg1(0,:,:)) / 2d0
       Sgg2(1,:,:) = temp + transpose(temp)
    end if
  end subroutine Top_Soft_gg_1PI

!!!!!!!!!! gamma !!!!!!!!!!

  subroutine gamma_matrix_gg(costh)
    implicit none
    real(8), intent(in) :: costh
    real(8), parameter :: mat1(3,3) = &
         reshape( (/ 1d0, 0d0, 0d0, 0d0, 1d0, 0d0, 0d0, 0d0, 1d0 /), (/ 3, 3 /) )
    real(8), parameter :: mat2(3,3) = &
         reshape( (/ 0d0, 0d0, 0d0, 0d0, 1d0, 0d0, 0d0, 0d0, 1d0 /), (/ 3, 3 /) )
    real(8), parameter :: mat3(3,3) = &
         reshape( (/ 0d0, 1d0, 0d0, 1d0/2d0, -3d0/4d0, 3d0/4d0, 0d0, 5d0/12d0, -3d0/4d0 /), &
         (/ 3, 3 /) )
    real(8), parameter :: mat4(3,3) = &
         reshape( (/ 0d0, -3d0, 0d0, 3d0/2d0, 0d0, 0d0, 0d0, 0d0, 0d0 /), (/ 3, 3 /) )
    real(8) :: xt, xm
    real(8) :: ltu
    complex(8) :: ltsm

    xm = rho/4d0
    xt = (1d0-b*costh)/2d0
    
    ltsm = log(xt**2/xm) + pi*cI
    ltu = log(xt/(1d0-xt))

    gammaHgg0 = ((4d0/3d0)*gammaCusp34(0) + 2d0*gamma_g(0) + 2d0*gamma_hq(0)) * mat1 &
         + (3d0/2d0) * (gammaCusp(0)*ltsm - gammaCusp34(0)) * mat2 &
         + gammaCusp(0) * 2d0*ltu * mat3
    gammaHgg1 = ((4d0/3d0)*gammaCusp34(1) + 2d0*gamma_g(1) + 2d0*gamma_hq(1)) * mat1 &
         + (3d0/2d0) * (gammaCusp(1)*ltsm - gammaCusp34(1)) * mat2 &
         + gammaCusp(1) * 2d0*ltu * mat3 &
         + 4d0 * 2d0*ltu * g34 * mat4
  end subroutine gamma_matrix_gg

end module TopHSgg
