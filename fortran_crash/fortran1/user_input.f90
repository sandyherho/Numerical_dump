program user_input
	implicit none
	
	character(len=20) :: hometown
	integer :: age
	character(len=20) :: name
	integer :: status

	name ="UNKNOWN"
	age = 0
	hometown = "UNKNOWN"

	do
		print *, "Can you tell me your name, age, and where you lived?"
		read(*, *, iostat=status) name, age, hometown
		if (status == 0) exit
		print *, "Sorry, I didn't understand that."
	end do

	print *, "Hi, " // trim(name) // "!"
	print *, "You look great for ", age
	print *, "What's the weather like in " // trim(hometown) // "?"
end program user_input