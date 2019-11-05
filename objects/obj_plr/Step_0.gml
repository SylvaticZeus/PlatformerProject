//player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
if(!place_meeting(x,y,obj_wall_pink)){
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));}
key_down = keyboard_check(ord("S"));

//get that movement
//determine what is going on
var move = key_right - key_left;
//walkspeed is how much of each key is being pressed, completly left, completly right, or some resistance
hsp = move * walksp;
//what goes up must come down
vsp = vsp +grv;
//if your pixl one pixl from now is going to be in contact with the wall, andyou try to jump. set vertical speed super negative

if(key_down)
{
	vsp = vsp + 0.3;	
}

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
x = x + hsp;

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
y = y + vsp;


//this is all attempts at making the trampoline work
/*
// Blue power-up
if (global.blueEquipped == true)
{
	image_index = 1;
}

if (global.clickCount < 0)
{
	image_index = 0;
}
if(global.pinkEquipped==true){sprite_index=2}
if (place_meeting(x,y+1,obj_wall_blue))
{ 

if(playerRecoil!=-1){
	direction = image_angle+90;
	speed=recoilSpeed;
}

if(playerRecoil=-1 && playerStop=1){
    speed=0;
    playerStop=-1;
    }
}
*/
/*if(place_meeting(x,y+1,obj_wall))
{
		jumpspd = 0;
} */

//this is what made the trampoline work, when touch blue, move up
if(place_meeting(x+1,y,obj_wall_blue))
{
	vsp = -15;
	
}


/*
if(room=2){
global.blueEquipped=true;
global.hasBlue=true;
<<<<<<< HEAD
}

//switching room functionality
if(place_meeting(x+hsp,y,obj_end))
{
	global.hasBlue = false;
	global.blueEquipped = false;
		cursor_sprite = spr_cursor_none;
		window_set_cursor (cr_default);
	room_goto_next();
		
}

*/
//this is what makes the sticky pink work
/*if(place_meeting(x+hsp,y,obj_wall_pink))
{
	grv = -0.05;
}*/

//logic for when you touch the wall pink, then do things like fight gravity
// make sure that when you are touching it, you can move left to right.
//missing code to move up and down

if(!place_meeting(x+hsp,y,obj_wall_pink))
{
	grv = 0.3;
}

if (place_meeting(x+vsp,y,obj_wall_pink))
{
	vsp = 0;
	grv=0;
}
if(place_meeting(x+hsp,y,obj_wall_pink))
{
	hsp = 0;
	grv=0;
}