! code of zain ul abideen

program inverse

    implicit none

    ! inputs for the subroutine below
    integer :: k = 4
    character(len = 20) :: path = "file.txt"

    ! calling the subroutine
    call inv(k, path)

end program inverse

subroutine inv(k, path)

    implicit none

    ! inputs for the LAPACK subroutines
    real, dimension(:, :), allocatable :: A, Ainv
    real, dimension(:), allocatable :: work
    integer, dimension(:), allocatable :: ipiv
    character(len = 20) :: path
    integer :: n, info
    
    integer :: m, o, k
    
    allocate(A(k, k))
    allocate(Ainv(k, k))
    allocate(work(k))
    allocate(ipiv(k))
    
    ! ideally, inputs would be read from a file
    do m = 1, k
        
        read *, (A(o, m), o = 1, k)
        
    end do
    
    print *
    
    ! optional display of input
    
    do m = 1, k
        
        print *, (A(o, m), o = 1, k)
        
    end do
    
    n = k
    Ainv = A
    
    ! calling lapack subroutines
    ! note that the output of the first subroutine would be used as input for the second
    ! explore the LAPACK documentation at:
    ! https://www.netlib.org/lapack/explore-html/index.html
    
    call dgetrf(n, n, Ainv, n, ipiv, info)
    call dgetri(n, Ainv, n, ipiv, work, n, info)
    
    print *
    
    open(1, file = path)
    
    ! writing output in matrix form
    do m = 1, k
        
        print *, (Ainv(o, m), o = 1, k)
        write (1, *) (Ainv(o, m), o = 1, k)
        
    end do
    
    close(1)
    
    deallocate(A)
    deallocate(Ainv)
    deallocate(work)
    deallocate(ipiv)

end subroutine
