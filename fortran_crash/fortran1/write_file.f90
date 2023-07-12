program user_input
	implicit none
	
	character(len=20) :: hometown
	integer :: age
	character(len=20) :: name
	integer :: status
	integer::unit

	name ="UNKNOWN"
	age = 0
	hometown = "UNKNOWN"

	do
		print *, "Can you tell me your name, age, and where you lived?"
		read(*, *, iostat=status) name, age, hometown
		if (status == 0) exit
		print *, "Sorry, I didn't understand that."
	end do

	open(newunit=unit, file="hello.txt", status="REPLACE")


	write(unit,*) "Hi, " // trim(name) // "!"
	write(unit,*) "You look great for ", age
	write(unit,*) "What's the weather like in " // trim(hometown) // "?"

	close(unit)
end program user_input