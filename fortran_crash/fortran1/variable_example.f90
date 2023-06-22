program variable_example
	implicit none

	integer :: x
	integer :: y
	integer :: z
	integer, parameter :: inches_per_foot = 12  ! can't change 

	print *, "x = ", x, "y = ", y, "z = ", z
	print *, "inches per foot = ", inches_per_foot

	x = 3
	! inches_per_foot = 13 ! can't do this
	print *, "x = ", x, "y = ", y, "z = ", z
	! print *, "inches_per_foot = ", inches_per_foot

	
	y = 4
	print *, "x = ", x, "y = ", y, "z = ", z

	z = x + y
	print *, "x = ", x, "y = ", y, "z = ", z

	x = 1
	print *, "x = ", x, "y = ", y, "z = ", z

end program variable_example