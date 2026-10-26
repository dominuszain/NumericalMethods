program damped_harmonic_oscillator

	implicit none
	
	! declaring the necessary variables.
	real :: b, m, k, delt, v, x, t
	integer :: n
	
	! defining the trivial values for constants.
	b = 1
	m = 1
	k = 4
	
	v = 0
	x = 1
	delt = 0.001
	
	t = 0
	
	open(1, file = "out.txt")
	
	! main loop
	do n = 1, 10000
		
		v = v + ((-(b / m) * v) - (k / m) * x) * delt
		x = x + v * delt
		
		t = t + delt
		
		write (1, *) t, x
	end do
	
	close(1)
	
end program damped_harmonic_oscillator
