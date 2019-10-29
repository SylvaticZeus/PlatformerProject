// Resets level when "R" is pressed
room_restart();
global.blueEquipped = false;

if room == room_level_1
{
	global.hasBlue = false;	
}

//add: if player is in room one and R is pressed,hasBlue = false 