program do_while
	implicit none

	integer :: i

	i = 100
	do while (i > 0)
		print *, "Can you guess how many times this prints?"
		i = i / 2
	end do
end program do_while