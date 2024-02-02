program mread

    implicit none
    
    real, dimension(2, 3) :: matrix
    integer :: i, j, reason
    
    open(1, file = "subrerite.vout")

    ! the below reads the matrix the wrong way.
    !read (1,*, iostat = reason) matrix(:, :)
    
    do i = 1, 2
        
        read(1,*, iostat = reason) matrix(i, :)
    
    end do
    
    print *
    
    do i = 1, 2
    
        print *, (matrix(i, j), j = 1, 3)
    
    end do
    
    print *
    
    print *, size(matrix, 1), size(matrix, 2), reason
    
    close(1)
    
    
end program mread
