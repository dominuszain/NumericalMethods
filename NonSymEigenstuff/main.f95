! code of zain ul abideen

program eigen

    implicit none
    
    real, dimension(2, 2) :: A
    integer :: m, o
    character(len = 1) :: jobvl = 'N'
    character(len = 1) :: jobvr = 'N'
    character(len = 1) :: uplo = 'U'
    integer :: n = 2
    integer :: lda = 2
    real, dimension(2) :: wr
    real, dimension(2) :: wi
    real, dimension(2,2) :: vl
    real, dimension(2,2) :: vr
    integer :: ldvl = 2
    integer :: ldvr = 2
    real, dimension(10) :: work
    integer :: lwork = 10
    integer :: info
    
    A(1, 1) = 1
    A(1, 2) = 2
    A(2, 1) = 3
    A(2, 2) = 4
    
    do m = 1, 2
        
        print *, (A(o, m), o = 1, 2)
        
    end do
    
    
    ! eigenvalues for non-symmetric matrices
    
    call dgeev(jobvl, jobvr, n, A, lda, wr, wi, vl, ldvl, vr, ldvr, work, lwork, info )
    
    
    print *
    
    print *, wr, wi

end program eigen
