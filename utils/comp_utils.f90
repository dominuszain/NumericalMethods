module comp_utils
    
    implicit none
    
    real :: pi = 3.14159265358979
    real :: e = 2.71828182845904
    
    contains
        
        subroutine linspace(startpoint, endpoint, num, array, step)
        
            implicit none
            
            real, intent(in) :: startpoint, endpoint
            integer, intent(in) :: num
            real, dimension(:), intent(out) :: array
            real, intent(out) :: step
            
            integer :: i
            
            step = (endpoint - startpoint) / (num - 1)
            
            do i = 1, num
            
                array(i) = startpoint + (i - 1) * step
                
            end do
            
        end subroutine

        subroutine another_one()
        
            implicit none
            
            print *, "subroutine called!"
            
        end subroutine

end module

program test_program

    use comp_utils
    
    implicit none
    
    print *, pi, e
    
    call another_one()
    
end program test_program
