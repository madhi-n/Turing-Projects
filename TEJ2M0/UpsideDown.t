%Upside Down by Madhi Nagarajan

var input, y : int
var inputstr, outputstr : string
var validcheck : boolean := false
var rotatecheck : boolean := true
put "This program is designed to see if a number is rotatable."
put "For example, 818 rotated 180 degrees is still 818."
put "However, numbers like 6006 and 123 rotated are not the same."

loop
    put "Enter a number to see if it's rotatable."
    get inputstr

    for x : 1 .. length (inputstr)
	if strintok (inputstr (x))
		then
	    validcheck := true
	else
	    validcheck := false
	    put "Your input is invalid. Try again."
	    put " "
	    exit
	end if
    end for

    if validcheck = true then

	for x : 1 .. length (inputstr)
	    y := strint (inputstr (x))

	    if y = 2 or y = 3 or y = 4 or y = 5 or y = 7
		    then
		rotatecheck := false
		exit
	    else
		rotatecheck := true
	    end if

	    if rotatecheck = true then
		if inputstr (length (inputstr) - (x - 1)) = "0" and inputstr (x) = "0"
			or inputstr (length (inputstr) - (x - 1)) = "1" and inputstr (x) = "1"
			or inputstr (length (inputstr) - (x - 1)) = "8" and inputstr (x) = "8"
			or inputstr (length (inputstr) - (x - 1)) = "6" and inputstr (x) = "9"
			or inputstr (length (inputstr) - (x - 1)) = "9" and inputstr (x) = "6"
			then
		    rotatecheck := true
		else
		    rotatecheck := false
		    exit
		end if
	    end if
	end for


	if rotatecheck = true and validcheck = true
		then
	    put inputstr, " is rotatable"
	    put " "
	elsif rotatecheck = false
		then
	    put inputstr, " is not rotatable"
	    put " "
	end if

    end if
end loop





