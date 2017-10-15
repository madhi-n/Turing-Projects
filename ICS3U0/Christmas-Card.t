/*
 ICS3U0-A, Mr. Dutton
 First Name: Madhi
 Last Name: Nagarajan
 Student Number: 614386
 Date: December 22, 2016
 Description of File:
 A program that displays a festive card, and plays holiday music to celebrate Christmas
 */


View.Set ("graphics:900;600,nobuttonbar,nocursor,noecho")
View.Set ("offscreenonly") 

%plays music: jinglebells
process playmusic 
    loop 
	  Music.PlayFile ("jinglebells.mp3")
    end loop 
end playmusic
fork playmusic

%var for snowflakes 
const NoOfFlakes := 300 
var flakeX : array 1 .. NoOfFlakes of int 
var flakeY : array 1 .. NoOfFlakes of int 

for flake : 1 .. NoOfFlakes 
flakeX (flake) := Rand.Int (0, maxx) 
flakeY (flake) := Rand.Int (0, maxy) 
end for 

loop
%landscape
drawfillbox (0, 0, maxx, maxy, 77)
drawfillbox (0, 0, maxx, maxy div 5, 0)
drawfilloval (50, 550, 40, 40, 14)

%tree
%leaves & trunk
drawfillbox (75, 50, 100, 200, 4)
var x : array 1 .. 3 of int := init (30, 87, 150)
var y : array 1 .. 3 of int := init (125, 200, 125)
var y2 : array 1 .. 3 of int := init (175, 250, 175)
var y3 : array 1 .. 3 of int := init (225, 300, 225)
drawfillpolygon (x, y, 3, 2)
drawfillpolygon (x, y2, 3, 2)
drawfillpolygon (x, y3, 3, 2)
%decorations
Draw.FillStar (58, 270, 117, 330, 14)
Draw.Star (58, 270, 117, 330, 7)
drawfilloval (100, 200, 10, 10, 12)
drawfilloval (70, 250, 10, 10, 10)
drawfilloval (80, 150, 10, 10, 42)
%presents
drawfillbox (30, 40, 80, 90, 12) 
drawbox (30, 40, 80, 90, 7) 
drawfillbox (90, 40, 140, 90, 10) 
drawbox (90, 40, 140, 90, 7) 

%snowman
%arms
drawfillbox (750, 260, 820, 270, 7)
drawfillbox (590, 260, 650, 270, 7)
%body
drawfilloval (700, 150, 75, 75, 0)
drawfilloval (700, 260, 60, 60, 0)
drawfilloval (700, 340, 40, 40, 0)
%hat
drawfillbox (670, 360, 730, 430, 125)
drawfillbox (670, 360, 730, 390, 12)
drawfillbox (650, 360, 750, 380, 125)
%eyes
drawfilloval (690, 345, 5, 5, 7)
drawfilloval (710, 345, 5, 5, 7)
%nose
var ax : array 1 .. 3 of int := init (695, 700, 720)
var ay : array 1 .. 3 of int := init (330, 340, 330)
drawfillpolygon (ax, ay, 3, 42)
%mouth
drawfilloval (680, 330, 3, 3, 7)
drawfilloval (685, 325, 3, 3, 7)
drawfilloval (695, 322, 3, 3, 7)
drawfilloval (705, 322, 3, 3, 7)
drawfilloval (715, 325, 3, 3, 7)
drawfilloval (725, 327, 3, 3, 7)
%buttons
drawfilloval (700, 275, 6, 6, 48)
drawfilloval (700, 250, 6, 6, 48)
drawfilloval (700, 225, 6, 6, 48)

%text-box
var cx : array 1 .. 3 of int := init (500, 630, 550)
var cy : array 1 .. 3 of int := init (410, 350, 420)
drawfillpolygon (cx, cy, 3, 0)
drawpolygon (cx, cy, 3, 7)
drawfilloval (400, 450, 200, 70, 0)
drawoval (400, 450, 200, 70, 7)
var font : int
font := Font.New ("impact:30")
Draw.Text ("Merry Christmas!!!", 250, 450, font, blue)

%draws the the flake 
for flake : 1 .. NoOfFlakes 
flakeY (flake) -= Rand.Int (1, 5) 
if flakeY (flake) < 0 then 
flakeY (flake) := maxy 
flakeY (flake) := Rand.Int (0, maxx) 
end if 
Draw.FillOval (flakeX (flake), flakeY (flake), 1, 1, 0) 
end for 
%updates the screen
View.Update 
delay (30) 
end loop
