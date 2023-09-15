! code of zain ul abideen

program eigen

    implicit none

    ! inputs to the subroutine
    character(len = 20) :: path
    integer :: k
    
    k = 4
    path = "out.txt"

    ! calling the subroutine
    call eig(k, path)
    
end program eigen

! ideally the subroutine would take in two paths, one for the input file and one for the output one
subroutine eig(k, path)

    implicit none

    ! defining the inputs for the LAPACK subroutine
    real, dimension(:, :), allocatable :: A
    character(len = 20) :: path
    integer :: m, o, k
    character(len = 1) :: jobz = 'V'
    character(len = 1) :: uplo = 'L'
    integer :: n
    integer :: lda
    real, dimension(:), allocatable :: w
    real, dimension(:), allocatable :: work
    integer :: lwork
    integer :: info
    
    n = k
    lda = k
    lwork = 10 * n
    
    allocate(A(k, k))
    allocate(w(k))
    allocate(work(lwork))

    ! ideally, the inputs would be read from a file
    do m = 1, k
        
        read *, (A(o, m), o = 1, k)
        
    end do
    
    print *
    
    do m = 1, k
        
        print *, (A(o, m), o = 1, k)
        
    end do
    
    
    ! eigenvalues for symmetric matrices
    call dsyev(jobz, uplo, n, A, lda, w, work, lwork, info)

    ! transposing the matrix for presentation in vector form
    A = transpose(A)
    
    print *
    
    open(1, file = path)
    
        write (1, *) w
        print *, w
        
        print *
        
        do m = 1, k

            ! this notation can be used to read, write and display matrices
            write (1, *) (A(o, m), o = 1, k)
            print *, (A(o, m), o = 1, k)
        
        end do
    
    close(1)
    
    deallocate(A)
    deallocate(w)
    deallocate(work)

end subroutine
