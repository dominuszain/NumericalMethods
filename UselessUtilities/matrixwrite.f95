program mread

    implicit none
    
    real, dimension(2) :: a, b, c
    real, dimension(2, 3) :: matrix
    integer :: i, j
    
    open(1, file = "subrerite.vout")
    
    do i = 1, 2
    
        read (1,*) a(i), b(i), c(i)
    
    end do
    
    do i = 1, 2
    
        matrix(i, 1) = a(i)
        matrix(i, 2) = b(i)
        matrix(i, 3) = c(i)
    
    end do
    
    print *
    
    open(1, file="output.txt")
    do i = 1, 2
    
        write(1, *) (matrix(i, j), j = 1, 3)
    
    end do
    close(1)
    
    
    
    close(1)
    
    
end program mread
