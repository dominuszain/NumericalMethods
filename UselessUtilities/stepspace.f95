subroutine stepspace(startpoint, endpoint, step, answer)
    implicit none
    
    real, intent(in) :: startpoint, endpoint
    real, intent(out) :: answer(num)
    real, intent(in) :: step
    integer :: num
    integer :: i
  
    num = int((endpoint + step - startpoint) / (step))
  
    do i = 1, num
        answer(i) = startpoint + (i - 1) * step
    end do
    
end subroutine

program stepspace_example
    implicit none
    
    real :: startpoint, endpoint, step
    
    real, dimension(101) :: array
    
    startpoint = 0
    endpoint = 10
    step = 0.1
    
    call stepspace(startpoint, endpoint, step, array)
    
    print *, array
  
  
end program stepspace_example
