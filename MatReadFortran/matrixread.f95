program mread

    implicit none
    
    real, dimension(2) :: a, b, c
    integer :: i
    
    open(1, file = "subrerite.vout")
    
    do i = 1, 2
    
        read (1,*) a(i), b(i), c(i)
        print *, a(i), b(i), c(i)
    
    end do
    
    close(1)
    
    
end program mread
