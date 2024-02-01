subroutine linspace(startpoint, endpoint, num, outpath, step)
    implicit none
    
    real, intent(in) :: startpoint, endpoint
    integer, intent(in) :: num
    character(len = 20), intent(out) :: outpath
    real, intent(out) :: step
    
    real, dimension(:), allocatable :: answer
    integer :: i
    
    allocate(answer(num))
  
    step = (endpoint - startpoint) / (num - 1)
    
    open(1, file = outpath)
    
    do i = 1, num
    
        answer(i) = startpoint + (i - 1) * step
        write (1, *) answer(i)
    end do
    
    close(1)
    
    deallocate(answer)
    
end subroutine

program linspace_example
    implicit none
    
    real :: startpoint, endpoint, step
    integer :: num
    
    character(len = 20) :: path = "linspace.out"
    
    startpoint = 0
    endpoint = 10
    num = 101
    
    call linspace(startpoint, endpoint, num, path, step)
    
    print *, path
  
  
end program linspace_example
