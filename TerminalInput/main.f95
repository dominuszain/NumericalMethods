! read and write operations, execution from the terminal working.

! first time, the read statement will read the first line from ...
! ... the file, then the second one and so on.

! inputs must be arranged in a tabular form i.e. entries tabbed out.

program testing_stuff

	implicit none
	
	integer :: i, j
	character (len = 100) :: char_inp
	real :: num_inp
	real, dimension(4) :: inp_storage
	
	character(len = 100) :: input_file, output_file
	
	if (command_argument_count() /= 2) then
		print *, " ERROR: Exactly two arguments are to be passed in &
		&namely the input and the output files."
		stop
	end if
	
	call get_command_argument(1, input_file)
	call get_command_argument(2, output_file)

	open(unit = 1, file = input_file)
	
	do i = 1, 4
		
		read(1, *) char_inp, num_inp
		inp_storage(i) = num_inp
		
	end do
	
	close(unit = 1)
	
	! some kind of processing will happen here.

	open(unit = 2, file = output_file)
	
	do j = 1, 4
		
		write(2, *) inp_storage(j)
		
	end do
	
	close(unit = 2)
	
	print *, input_file, output_file
	
end program testing_stuff
