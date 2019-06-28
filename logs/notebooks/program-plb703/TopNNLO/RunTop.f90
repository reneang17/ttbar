program RunTop
  use TopNNLO
  implicit none

  integer :: fd_out = 6, iostat, op, nmem, n_asmz
  character*100 :: fn_out, pdfset, pdfset_asmz(0:4)
  logical :: with_asmz_error
  integer :: i

  if (iargc() > 0) then
     fd_out = 11
     call getarg(1, fn_out)
     open(fd_out, file=fn_out, iostat=iostat, status="replace")
     if (iostat /= 0) fd_out = 6
  endif

  read(*, '(A50)'), pdfset
  read(*, *), Ecms
  read(*, *), hadron2
  read(*, *), scheme
  read(*, *), mt0
  read(*, *), mur0
  read(*, *), muf0
  read(*, *), top_order
  read(*, *), op
  read(*, *), with_asmz_error
  if (with_asmz_error) then
     read(*, *), n_asmz
     do i = 1, n_asmz
        read(*, *), pdfset_asmz(i)
     end do
  end if

  Ecms2 = Ecms**2

  if (top_order >= 0 .and. top_order <= 2) then

     print *, "Loading PDF set ", pdfset
     call SetLHAPARM('SILENT')
     call InitPDFSetByName(pdfset)
     call numberPDF(nmem)
     call InitPDF(0)
     print *, "PDF set loaded"
     print *, ""

     call Top_UpdateCoeff

     select case (op)
     case(0)
        call Test_Total_CS
     case(1)
        if (scheme /= 1) then
           call Run_Total_mt(150d0, 180d0, 30, .false.)
        else
           call Run_Total_mt(142d0, 170d0, 28, .false.)
        end if
     case(2)
        if (scheme /= 1) then
           call Run_Total_mt(150d0, 180d0, 30, .true.)
        else
           call Run_Total_mt(142d0, 170d0, 28, .true.)
        end if
     case(-1)
        if (scheme > 0) then
           print *, ConvertFromPole(173.1d0, 2)
           print *, ConvertFromPole2(173.1d0, 2)
        end if
        if (scheme == 2) then
           print *, ConvertFromPole3(173.1d0, 2)
        end if
        call Test_Single
     end select

  end if

contains

  subroutine Test_Total_CS
    implicit none
    real(8) :: rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
    character*100 :: format_string = '(F9.3,SP,2X,F9.3,2X,F9.3)'

    call Top_Total_CS_with_scale_error(rcentral, rplus, rminus)
    print *, "Total cross section with scale errors"
    print format_string, rcentral, rplus, rminus
    print *, ""

    call Top_Total_CS_with_pdf_alphas_error(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    print *, "Total cross section with pdf errors"
    print format_string, rcentral, rplus, rminus
    print *, ""

    if (with_asmz_error) then
       print *, "Total cross section with pdf+alphas errors"
       print format_string, rcentral, rplus_pdf_alphas, rminus_pdf_alphas
       print *, ""
    end if
  end subroutine Test_Total_CS

  subroutine Run_Total_mt(begin, end, n, pdferror)
    implicit none
    real(8), intent(in) :: begin, end
    integer, intent(in) :: n
    logical, intent(in) :: pdferror
    real(8) :: rcentral, rplus, rminus, rplus_pdf, rminus_pdf, rplus_pdf_alphas, rminus_pdf_alphas
    real(8) :: step, mt00
    real(8) :: time_begin, time_end
    integer :: i
    step = (end-begin)/n
    mt00 = mt0
    do i = 0, n
       mt0 = begin + step*i
       call cpu_time(time_begin)
       call Top_Total_CS_with_scale_error(rcentral, rplus, rminus)
       call cpu_time(time_end)
       print *, "CPU time consumed for scale error (seconds): ", time_end - time_begin
       if (pdferror) then
          call cpu_time(time_begin)
          call Top_Total_CS_with_pdf_alphas_error(rcentral, rplus_pdf, rminus_pdf, rplus_pdf_alphas, rminus_pdf_alphas)
          call cpu_time(time_end)
          if (with_asmz_error) then
             print *, "CPU time consumed for pdf+alphas error (seconds): ", time_end - time_begin
          else
             print *, "CPU time consumed for pdf error (seconds): ", time_end - time_begin
          end if
          print *, ""
          print *, mt0, rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
          write(fd_out, *), mt0, rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
       else
          print *, mt0, rcentral, rplus, rminus
          write(fd_out, *), mt0, rcentral, rplus, rminus
       end if
       print *, ""
    end do
    mt0 = mt00
  end subroutine Run_Total_mt

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine Test_Single
    implicit none
    real(8) :: r, r_pim, r_1pi
    real(8) :: time_begin, time_end
    call cpu_time(time_begin)
    call Top_Total_CS(r, r_pim, r_1pi)
    call cpu_time(time_end)
    print *, "CPU time consumed (seconds): ", time_end - time_begin
    print *, ""
    print *, "AVG: ", r
    print *, "PIM: ", r_pim
    print *, "1PI: ", r_1pi
  end subroutine Test_Single

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  subroutine Top_Total_CS_with_scale_error(rcentral, rplus, rminus)
    implicit none 
    real(8), intent(out) :: rcentral, rplus, rminus
    real(8) :: r, r_pim(-1:1), r_1pi(-1:1)
    real(8) :: e_pim(-1:1,-1:1,-1:1), e_1pi(-1:1,-1:1,-1:1)
    real(8) :: mur00, muf00
    mur00 = mur0
    muf00 = muf0

    call Top_Total_CS(rcentral, r_pim(0), r_1pi(0))

    mur0 = mur00*2d0
    call Top_Total_CS(r, e_pim(1,0,0), e_1pi(1,0,0))
    mur0 = mur00/2d0
    call Top_Total_CS(r, e_pim(-1,0,0), e_1pi(-1,0,0))
    mur0 = mur00

    muf0 = muf00*2d0
    call Top_Total_CS(r, e_pim(0,1,0), e_1pi(0,1,0))
    muf0 = muf00/2d0
    call Top_Total_CS(r, e_pim(0,-1,0), e_1pi(0,-1,0))
    muf0 = muf00

    r_pim(1) = (max(r_pim(0), e_pim(1,0,0), e_pim(-1,0,0)) - r_pim(0))**2 &
         + (max(r_pim(0), e_pim(0,1,0), e_pim(0,-1,0)) - r_pim(0))**2
    r_pim(1) = r_pim(0) + sqrt(r_pim(1))
    r_pim(-1) = (min(r_pim(0), e_pim(1,0,0), e_pim(-1,0,0)) - r_pim(0))**2 &
         + (min(r_pim(0), e_pim(0,1,0), e_pim(0,-1,0)) - r_pim(0))**2
    r_pim(-1) = r_pim(0) - sqrt(r_pim(-1))
    if (top_order > 1) then
       r_1pi(1) = (max(r_1pi(0), e_1pi(1,0,0), e_1pi(-1,0,0)) - r_1pi(0))**2 &
            + (max(r_1pi(0), e_1pi(0,1,0), e_1pi(0,-1,0)) - r_1pi(0))**2
       r_1pi(1) = r_1pi(0) + sqrt(r_1pi(1))
       r_1pi(-1) = (min(r_1pi(0), e_1pi(1,0,0), e_1pi(-1,0,0)) - r_1pi(0))**2 &
            + (min(r_1pi(0), e_1pi(0,1,0), e_1pi(0,-1,0)) - r_1pi(0))**2
       r_1pi(-1) = r_1pi(0) - sqrt(r_1pi(-1))
    end if

    mur0 = mur00*2d0
    muf0 = muf00*2d0
    call Top_Total_CS(r, e_pim(1,1,0), e_1pi(1,1,0))
    mur0 = mur00/2d0
    muf0 = muf00/2d0
    call Top_Total_CS(r, e_pim(-1,-1,0), e_1pi(-1,-1,0))
    mur0 = mur00
    muf0 = muf00

    r_pim(1) = max(r_pim(1), e_pim(1,1,0), e_pim(-1,-1,0))
    r_pim(-1) = min(r_pim(-1), e_pim(1,1,0), e_pim(-1,-1,0))
    if (top_order > 1) then
       r_1pi(1) = max(r_1pi(1), e_1pi(1,1,0), e_1pi(-1,-1,0))
       r_1pi(-1) = min(r_1pi(-1), e_1pi(1,1,0), e_1pi(-1,-1,0))
    end if

    if (top_order > 1) then
       rplus = max(r_pim(1), r_1pi(1)) - rcentral
       rminus = min(r_pim(-1), r_1pi(-1)) - rcentral
    else
       rplus = r_pim(1) - rcentral
       rminus = r_pim(-1) - rcentral
    end if
  end subroutine Top_Total_CS_with_scale_error

  subroutine Top_Total_CS_with_pdf_alphas_error(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    implicit none
    real(8), intent(out) :: rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
    if (pdfset(1:4) == "MSTW") then
       call Top_pdf_alphas_error_MSTW(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    else if (pdfset(1:5) == "NNPDF") then
       call Top_pdf_alphas_error_NNPDF(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    else
       call Top_pdf_alphas_error_CTEQ(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    end if
  end subroutine Top_Total_CS_with_pdf_alphas_error

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Compute the PDF+alpha_s uncertainties according to arXiv:0905.3531
  subroutine Top_pdf_alphas_error_MSTW(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    implicit none
    real(8), intent(out) :: rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
    real(8), allocatable :: r(:,:), e(:,:)
    real(8) :: r_pim, r_1pi
    integer :: i, j, n
    
    if (with_asmz_error) then
       n = n_asmz
    else
       n = 0
    end if

    allocate ( r(0:n,0:nmem) )
    allocate ( e(2,0:n) )

    do j = 0, nmem
       call InitPDF(j)
       call Top_Total_CS(r(0,j), r_pim, r_1pi)
    end do

    if (with_asmz_error) then
       do i = 1, n
          call InitPDFSetByName(pdfset_asmz(i))
          do j = 0, nmem
             call InitPDF(j)
             call Top_Total_CS(r(i,j), r_pim, r_1pi)
          end do
       end do
    end if

    rcentral = r(0,0)

    e = 0d0
    do i = 0, n
       do j = 1, nmem/2
          e(1,i) = e(1,i) + (max(r(i,0), r(i,2*j-1), r(i,2*j)) - r(i,0))**2
          e(2,i) = e(2,i) + (min(r(i,0), r(i,2*j-1), r(i,2*j)) - r(i,0))**2
       end do
       e(1,i) = r(i,0) + sqrt(e(1,i))
       e(2,i) = r(i,0) - sqrt(e(2,i))
    end do

    rplus = e(1,0) - rcentral
    rminus = e(2,0) - rcentral
    rplus_pdf_alphas = maxval(e(1,:)) - rcentral
    rminus_pdf_alphas = minval(e(2,:)) - rcentral
    
    deallocate ( r )
    deallocate ( e )

    call InitPDFSetByName(pdfset)
    call InitPDF(0)
  end subroutine Top_pdf_alphas_error_MSTW

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Compute the PDF+alpha_s uncertainties using the "add in quadrature" method,
! which is a good approximation according to arXiv:1004.0962
  subroutine Top_pdf_alphas_error_NNPDF(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    implicit none
    real(8), intent(out) :: rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
    real(8), allocatable :: r(:)
    real(8) :: r_asmz(2), r_pim, r_1pi
    integer :: i

    allocate ( r(nmem) )

    do i = 1, nmem
       call InitPDF(i)
       call Top_Total_CS(r(i), r_pim, r_1pi)
    end do

    rcentral = 0d0
    do i = 1, nmem
       rcentral = rcentral + r(i)/nmem
    end do

    rplus_pdf_alphas = 0d0
    do i = 1, nmem
       rplus_pdf_alphas = rplus_pdf_alphas + (r(i)-rcentral)**2/(nmem-1)
    end do
    rplus = sqrt(rplus_pdf_alphas) * 1.64485d0
    rminus = -rplus
    
    if (with_asmz_error) then
       do i = 1, 2
          call InitPDFSetByName(pdfset_asmz(i))
          call InitPDF(0)
          call Top_Total_CS(r_asmz(i), r_pim, r_1pi)
       end do
       rplus_pdf_alphas = rplus_pdf_alphas + ((r_asmz(1)-r_asmz(2))/2d0)**2
    end if

    rplus_pdf_alphas = sqrt(rplus_pdf_alphas) * 1.64485d0
    rminus_pdf_alphas = -rplus_pdf_alphas

    deallocate ( r )

    call InitPDFSetByName(pdfset)
    call InitPDF(0)
  end subroutine Top_pdf_alphas_error_NNPDF

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Compute the PDF+alpha_s uncertainties according to arXiv:1004.4624
  subroutine Top_pdf_alphas_error_CTEQ(rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas)
    implicit none
    real(8), intent(out) :: rcentral, rplus, rminus, rplus_pdf_alphas, rminus_pdf_alphas
    real(8) :: r(2), r_pim, r_1pi
    integer :: i, j

    call Top_Total_CS(rcentral, r_pim, r_1pi)

    rplus_pdf_alphas = 0d0
    rminus_pdf_alphas = 0d0
    do i = 0, nmem/2-1
       do j = 1, 2
          call InitPDF(i*2+j)
          call Top_Total_CS(r(j), r_pim, r_1pi)
       end do
       rplus_pdf_alphas = rplus_pdf_alphas + (max(rcentral, r(1), r(2)) - rcentral)**2
       rminus_pdf_alphas = rminus_pdf_alphas + (min(rcentral, r(1), r(2)) - rcentral)**2
    end do

    rplus = sqrt(rplus_pdf_alphas)
    rminus = -sqrt(rminus_pdf_alphas)

    if (with_asmz_error) then
       call InitPDFSetByName(pdfset_asmz(1))
       call numberPDF(nmem)
       do i = 1, 2
          call InitPDF(nmem/2+(-1)**i*2)
          call Top_Total_CS(r(i), r_pim, r_1pi)
       end do
       rplus_pdf_alphas = rplus_pdf_alphas + (max(r(1), r(2), rcentral) - rcentral)**2
       rminus_pdf_alphas = rminus_pdf_alphas + (min(rcentral, r(1), r(2)) - rcentral)**2
    end if

    rplus_pdf_alphas = sqrt(rplus_pdf_alphas)
    rminus_pdf_alphas = -sqrt(rminus_pdf_alphas)

    call InitPDFSetByName(pdfset)
    call numberPDF(nmem)
    call InitPDF(0)
  end subroutine Top_pdf_alphas_error_CTEQ

end program
