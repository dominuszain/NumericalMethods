subroutine stepspace(startpoint, endpoint, step, arraypath)
    implicit none
    
    real, intent(in) :: startpoint, endpoint
    character(len = 20), intent(in) :: arraypath
    real, dimension(:), allocatable :: answer
    real, intent(in) :: step
    integer :: num
    integer :: i
  
    num = int((endpoint + step - startpoint) / (step))
    
    allocate(answer(num))
    
    open(1, file = arraypath)
    
    do i = 1, num
    
        answer(i) = startpoint + (i - 1) * step
        write(1,*) answer(i)
        
    end do
    
    close(1)
    
    deallocate(answer)
    
end subroutine

program stepspace_example
    implicit none
    
    real :: startpoint, endpoint, step
    character(len=20) :: arraypath    
    real, dimension(21) :: array
    
    integer :: i
    
    startpoint = 0
    endpoint = 10
    step = 0.5
    
    arraypath = "steparray.out"
    
    call stepspace(startpoint, endpoint, step, arraypath)
    
    open(1, file = arraypath)
    
    do i = 1, 21
    
        read(1,*) array(i)
        print *, array(i)
        
    end do
    
    close(1)
  
end program stepspace_example
