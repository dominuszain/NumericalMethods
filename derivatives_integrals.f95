! code of zain ul abideen

program numerical_analysis
	implicit none
	
	! calling the subroutines for derivative and integral.
	call numerical_integral()
	call numerical_derivative()

end program numerical_analysis

! defining the subroutine for integral.
subroutine numerical_integral()
	implicit none
	
	integer :: i = 0
	real :: l_lim, u_lim, h, y, ans
	
	l_lim = 0.0
	u_lim = 5.0
	h = 0.0001
	
	! approximating an integral with a sum.
	do
		if ((l_lim + i * h) <= u_lim) then
			call f(l_lim + i * h, y)
			y = y * h
			ans = ans + y
		else
			exit
		end if
		
		i = i + 1
	end do
	
	print *, ans

end subroutine numerical_integral

! defining subroutine for derivative.
subroutine numerical_derivative()
	implicit none
	
	real :: x, y, h, y_plus_h
	x = 3
	h = 0.0001

	! using the definition of derivatives.
	call f(x, y)
	call f((x + h), y_plus_h)
	print *, (y_plus_h - y)/(h)
	
end subroutine numerical_derivative

! defining a subroutine for a function.
subroutine f(x, y)
	implicit none
	
	real, intent(in) :: x
	real, intent(out) :: y
	
	y = x**2

end subroutine
