subroutine linspace(startpoint, endpoint, num, answer)
    implicit none
    
    real, intent(in) :: startpoint, endpoint
    integer, intent(in) :: num
    real, intent(out) :: answer(num)
    real :: step
    integer :: i
  
    step = (endpoint - startpoint) / (num - 1)
  
    do i = 1, num
        answer(i) = startpoint + (i - 1) * step
    end do
    
end subroutine

program linspace_example
    implicit none
    
    real :: startpoint, endpoint
    integer :: num
    
    real, dimension(101) :: array
    
    startpoint = 0
    endpoint = 10
    num = 101
    
    call linspace(startpoint, endpoint, num, array)
    
    print *, array
  
  
end program linspace_example
