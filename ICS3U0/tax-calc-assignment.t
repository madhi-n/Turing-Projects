/*
ICS3U0-A, Mr. Dutton
First Name: Madhi
Last Name
Student Number: 614386
Date: September 26, 2016
Description of File:
Create a program to calculate the income tax amount, income tax rate & net income from the user input of the gross income. 
Use different tax rates based on the income the user inputs
*/

var income, tax : real
var check : string

put "Republic of Duttonia Income Tax Calculator"
loop
    put " "
    put "Would you like to calculate the tax for an annual gross income?"
    put "Enter y or Y for yes, anything else to exit: "
    get check

    if check = "y" or check = "Y" 
	    then
	put "Enter the annual gross income, without the $ sign: "
	get income

	%This if block of statements calculates the tax amount for each possible input
	if income <= 75000 then
	    tax := income * 0.2
	elsif income <= 125000 then
	    tax := (income - 75000) * 0.23 + 15000
	elsif income <= 150000 then
	    tax := (income - 125000) * 0.26 + 26500
	elsif income >= 150000 then
	    tax := (income - 150000) * 0.35 + 33000
	end if

	put " "
	put "The income tax amount is $", tax

	if income = 0 then %if statement only needed if income is 0
	    put "The overall income tax rate is 0%"
	else
	    put "The overall income tax rate is ", (tax / income * 100), "%" %processes if income > 0
	end if
	
	put "The net income is $", income - tax

    else
	put "Goodbye!"
	exit
    end if
end loop
