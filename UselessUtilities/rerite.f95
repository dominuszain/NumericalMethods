program rerite

    implicit none
    
    integer :: k, o, m, n
    real, dimension(:), allocatable :: r
    real, dimension(:, :), allocatable :: rr
    
    ! m => columns & n => rows.
    m = 3
    n = 2
    
    allocate(r(m * n))
    allocate(rr(m, n))
    
    ! this is how to read columns first from a list.
    open(1, file = "matrix.finp")
    
    do k = 1, m * n
    
        read (1,*) r(k)
        
    end do
    
    ! reshapes perfectly, no need to transpose.
    rr = reshape(r, (/m, n/))
    
    do k = 1, n
    
        print *, (rr(o, k), o = 1, m)
    
    end do
    
    close(1)
    
    ! fout => input for subroutine.
    ! vout => to visualize the results.
    open(1, file = "out.vout")
    open(2, file = "out.fout")
    
    do k = 1, n
        
        write (1,*) (rr(o, k), o = 1, m)
        
        do o = 1, m
        
            write (2,*) rr(o, k)
        
        end do
        
    end do
    
    close(1)
    close(2)
    
    deallocate(r)
    deallocate(rr)

end program rerite
