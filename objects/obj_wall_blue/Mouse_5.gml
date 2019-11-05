//logic for recollecting the blue wall for future use. It is limited but recollectable
if (global.blueEquipped == false)
{
	global.blueEquipped=true;
	global.clickCount=global.clickCount+1;

	instance_change(obj_wall,true);
}