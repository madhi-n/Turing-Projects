setscreen ("graphics")
var shapeslist, pos : int
var dim1, dim2, dim3, dim4, col : int
var shape, Color, combdim, strdim3, strdim4 : string

open : shapeslist, "shapes.txt", get
assert shapeslist > 0
col := 0

loop
    get : shapeslist, shape

    if shape = "circle" then
	get : shapeslist, dim1
	get : shapeslist, combdim
	get : shapeslist, Color

	if Color = "red"
		then
	    col := 4
	elsif Color = "blue"
		then
	    col := 1
	elsif Color = "green"
		then
	    col := 2
	elsif Color = "yellow"
		then
	    col := 14
	end if

	pos := index (combdim, "#")
	strdim3 := combdim (1 .. pos - 1)
	strdim4 := combdim (pos + 1 .. *)
	dim3 := strint (strdim3)
	dim4 := strint (strdim4)
	drawfilloval (dim3, dim4, dim1, dim1, col)

    elsif shape = "rectangle"
	    then
	get : shapeslist, dim1
	get : shapeslist, dim2
	get : shapeslist, combdim
	get : shapeslist, Color

	if Color = "red"
		then
	    col := 4
	elsif Color = "blue"
		then
	    col := 1
	elsif Color = "green"
		then
	    col := 2
	elsif Color = "yellow"
		then
	    col := 14
	end if

	pos := index (combdim, "#")
	strdim3 := combdim (1 .. pos - 1)
	strdim4 := combdim (pos + 1 .. *)
	dim3 := strint (strdim3)
	dim4 := strint (strdim4)
	drawfillbox (dim3, dim4 - dim2, dim3 + dim1, dim4, col)

    elsif shape = "square"
	    then
	get : shapeslist, dim1
	get : shapeslist, combdim
	get : shapeslist, Color

	if Color = "red"
		then
	    col := 4
	elsif Color = "blue"
		then
	    col := 1
	elsif Color = "green"
		then
	    col := 2
	elsif Color = "yellow"
		then
	    col := 14
	end if

	pos := index (combdim, "#")
	strdim3 := combdim (1 .. pos - 1)
	strdim4 := combdim (pos + 1 .. *)
	dim3 := strint (strdim3)
	dim4 := strint (strdim4)
	drawfillbox (dim3 - dim1, dim4, dim3, dim4 + dim1, col)
    else
	put "ERROR!"
	exit
    end if
    exit when eof (shapeslist)
end loop

close : shapeslist
