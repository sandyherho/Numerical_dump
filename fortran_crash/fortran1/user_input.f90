program user_input
	implicit none
	
	character(len=20) :: hometown
	integer :: age
	character(len=20) :: name

	print *, "Can you tell me your name, age, and where you lived?"
	read(*,*) name, age, hometown

	print *, "Hi, " // trim(name) // "!"
	print *, "You look great for ", age
	print *, "What's the weather like in " // trim(hometown) // "?"
end program user_input