# Outline

1. `program name` statement
2. `use` statement
3. Implicit declaration
4. Variable, derived type, and interface declarations
5. Executable statements
6. A `contains` statement, followed by procedure declarations
7. `end program` statement

# Case insensitive

The following are all equivalent

- `one_thing = another_thing`
- `ONE_THING = ANOTHER_THING`
- `One_thing = Another_thing` 
- `One_ThIng = AnOther_thing` 



# Insignificant white space

```fortran
if (var1==var2)then
do i=1,10
thing=thing+i
enddo
endif
```



``` fortran
if (var1 == var2) then
	do i = 1,10
		thing = thing + i
	end do
end if
```



# Comments 

```fortran
! This is a comment on its own line
this = that ! This one's short
```



# Program start & end

```fortran
program name
!
! ...
!
end program name
```



# Use statements

```fortran
use [, intrinsic ::] module_name[, only: [new_name =>] old_name[, thing[, etc]]]
```



# Implicit statements

```fortran
implicit none
! or
implicit type 'a-z'
```



# Variable declarations

```fortran
real[([kind=]4)][, some[, attr]] :: var[, etc[thing]]
type(derived_name)[, some, attr] :: var[, etc[= thing]]
```

