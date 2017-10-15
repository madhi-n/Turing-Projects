/*
 ICS3U0-A, Mr. Dutton
 First Name: Madhi
 Last Name
 Student Number: 614386
 Date: October 4, 2016
 Description of File:
 This program calculates the average height of the inputs 
 & displays the heights that are above the average height
 */

var numinputs : int
var avg : real

loop
    put "Enter the number of people in the room"
    get numinputs

    var height : array 1 .. numinputs of real

    avg := 0
    
    
    % Adds up each height together
    for x : 1 .. upper (height)
	put "Enter the height (in cm):"
	get height (x)
	avg := avg + height (x)
    end for
    
    % Calculates the average height
    avg := avg / numinputs

    put " "
    put "The average height of the group is ", avg, " cm"
    put " "

    % Displays the heights above the average height
    for x : 1 .. upper (height)
	if height (x) > avg
		then
	    put "Height ", x, " is above the average: ", height (x), " cm"
	end if
    end for
    put " "
end loop

