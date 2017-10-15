var choice: int
var inputstring : string
var inputint : int
var output : int
var outputchars : string
var count : int
var count2 : string

loop
put "Which base is the number you'd like to enter?" 
put "Type 10 for Base 10 (Decimal) or type 16 for Base 16 (Hexadecimal)."
get choice

if choice = 10 then
put "You've chosen base 10"
put "Enter your number for base 10"
get inputstring

output := 0
count := 0

inputint := strint (inputstring)

loop
    count := count + 1
    count2 := intstr(count)
    inputint := strint (inputstring)
    output := inputint * count + output
    outputchars := intstr(output)
    exit when count = length(inputstring)
end loop

put "The final number is ", output

elsif choice = 16 then
put "You've chosen base 16"
put "Enter your number for base 16"
get inputstring

output := 0

inputint := strint (inputstring, 16)

for x : 1 .. length(inputstring) 

output := strint(inputstring(x),16) + output
outputchars := intstr (output,1,16) 
end for

put "The final number is ", outputchars

else 
put "Your choice is invalid. Try again."

end if
end loop
