program matrix_io

    implicit none
    
    real, dimension(:, :), allocatable :: matrix
    integer :: i, j, row, column
    
    row = 2
    column = 3
    
    allocate(matrix(row, column))
    
    open(1, file="matrix.txt")
    
    do i = 1, row
    
        read (1, *) matrix(i, :)
    
    end do
    
    do i = 1, row
    
        print *, (matrix(i, j), j = 1, column)
    
    end do
    
    close(1)
    
    open(1, file="matrix.out")
    
    do i = 1, row
    
        write (1, *) (matrix(i, j), j = 1, column)
    
    end do
    
    close(1)
    
    deallocate(matrix)

end program matrix_io
