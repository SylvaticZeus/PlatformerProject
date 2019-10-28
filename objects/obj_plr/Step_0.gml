//player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));


//get that movement
//determine what is going on
var move = key_right - key_left;
//walkspeed is how much of each key is being pressed, completly left, completly right, or some resistance
hsp = move * walksp;
//what goes up must come down
vsp = vsp +grv;
//if your pixl one pixl from now is going to be in contact with the wall, andyou try to jump. set vertical speed super negative
if(place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	vsp = -7;	
}

//horizontal
//if there is a wall, one or two pixles away from you,
if(place_meeting(x+hsp,y,obj_wall))
{
	//you can move if false or not move if true
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x +sign(hsp);	
	}
	hsp = 0;
}
//dont care about wall if not one hsp away
x = x +hsp;

//vertical movement
//if there is a wall, one vsp away from you, move if false or not if true
if(place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y +sign(vsp);	
	}
	vsp = 0;
}
//dont care about wall if not one vsp away
y = y +vsp;

if(global.blueEquipped=true)
{
	sprite_index=1;
}

// Blue power-up
if (global.blueEquipped == true)
{
	sprite_index = 1;
}

if(global.pinkEquipped==true){sprite_index=2}