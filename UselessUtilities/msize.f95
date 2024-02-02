program msize

    implicit none
    
    real :: a
    integer :: i, j, reason
    
    open(1, file = "array.out")
    
    reason = 0   
    i = 1
    
    do while (.true.)
    
      
        read (1, *, iostat = reason) a
        print *, a, reason, i
        
        if (reason /= 0) then
        
            if (reason > 0) then
            
                i = 0
                exit
            
            end if
            
            i = i - 1
            exit
            
        end if
        
        i = i + 1 
        
    end do
    
    print *, i, reason
    
    close(1)
    
end program msize
