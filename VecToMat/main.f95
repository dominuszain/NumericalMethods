program mread

    implicit none
    
    real, dimension(2) :: array1, array2
    real, dimension(2, 2) :: matrix
    
    integer :: i, j
    
    array1(1) = 1
    array1(2) = 2
    array2(1) = 3
    array2(2) = 4
    
    matrix(:, 1) = array1
    matrix(:, 2) = array2
    
    do i = 1, 2
    
        print *, (matrix(i, j), j = 1, 2)
    
    end do
    
    
end program mread
