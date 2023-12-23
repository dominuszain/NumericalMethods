program subrerite

    implicit none
    
    integer :: k, o, m, n
    real, dimension(:, :), allocatable :: rr
    
    ! m => columns & n => rows.
    m = 3
    n = 2
    
    allocate(rr(m, n))
    
    ! this is the correct way to write for my code.
    rr(1, 1) = 1
    rr(2, 1) = 2
    rr(3, 1) = 3
    rr(1, 2) = 4
    rr(2, 2) = 5
    rr(3, 2) = 6
    
    ! fout => input for subroutine.
    ! vout => to visualize the results.
    open(1, file = "subrerite.vout")
    open(2, file = "subrerite.fout")
    
    do k = 1, n
        
        write (1,*) (rr(o, k), o = 1, m)
        
        do o = 1, m
        
            write (2,*) rr(o, k)
        
        end do
        
    end do
    
    close(1)
    close(2)
    
    call readnprint(m, n, "subrerite.fout", "subrerite.test")
    
    deallocate(rr)

end program subrerite

subroutine readnprint(m, n, inpassedpath, outpassedpath)
    
    implicit none
    integer, intent(in) :: m, n
    character(len = 14) :: inpath, inpassedpath, outpath, outpassedpath
    real, dimension(:), allocatable :: r
    real, dimension(:, :), allocatable :: rr
    integer :: k, o
        
    inpath = inpassedpath
    outpath = outpassedpath
    
    allocate(r(m * n))
    allocate(rr(m, n))
    
    open(1, file = inpath)
    
    do k = 1, m * n
    
        read (1,*) r(k)
        
    end do
    
    ! reshapes perfectly, no need to transpose.
    rr = reshape(r, (/m, n/))
    
    do k = 1, n
    
        print *, (rr(o, k), o = 1, m)
    
    end do
    
    close(1)
    
    print *, outpath
        
    deallocate(r)
    deallocate(rr)

end subroutine
