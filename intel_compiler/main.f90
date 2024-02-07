! code of zain ul abideen

program eigen

    implicit none
    
    real, dimension(2, 2) :: A
    integer :: m, o
    character(len = 1) :: jobz = 'V'
    character(len = 1) :: uplo = 'U'
    integer :: n = 2
    integer :: lda
    real, dimension(2) :: w
    real, dimension(3 * 2) :: work
    integer :: lwork
    integer :: info
    
    lda = n
    lwork = 3 * n
    
    A(1, 1) = 2
    A(1, 2) = 3
    A(2, 1) = 3
    A(2, 2) = 2
    
    do m = 1, 2
        
        print *, (A(m, o), o = 1, 2)
        
    end do
    
    print *
    
    ! eigenvalues for symmetric matrices
    
    call dsyev(jobz, uplo, n, A, lda, w, work, lwork, info)
    
    do m = 1, 2
        
        print *, (A(m, o), o = 1, 2)
        
    end do
    
    print *
    
    print *, w

end program eigen
