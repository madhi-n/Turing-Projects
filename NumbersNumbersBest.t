%Numbers Numbers by Madhi Nagarajan
var basevalue, output, number : int
var outputstr, input, amount : string
var checker : boolean := false 

loop
    loop
	put "Which base is the number you'd like to enter?"
	put "Type 10 for Base 10 or type 16 for base 16."
	get basevalue

	if basevalue = 10 or basevalue = 16 then 
	    put "You've chosen base ", basevalue
	    put "Enter your number for base ", basevalue
	    get input


	    for count : 1 .. length (input)                  
		if strintok (input (count), basevalue)
			then
		    checker := true
		else
		    put "Your input is invalid. Try again."
		    put " "
		    checker := false
		    exit
		end if
	    end for             %process was used to check if input is valid or not

	    if checker = true then
		loop
		    output := 0

		    for count : 1 .. length (input)
			amount := input (count)
			number := strint (amount, basevalue)
			output := output + number
		    end for
		   
		    outputstr := intstr (output, 1, basevalue)
		    input := outputstr
		    exit when length (outputstr) = 1

		end loop       %process was used to finding the output


		put "The sum of the digits in the number is ", outputstr
		put " "

	    elsif checker = false then
		exit
	    end if

	else
	    put "Your choice is invalid. Try again."
	    put " "
	end if 


    end loop
end loop
