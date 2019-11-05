//logic for when you are allowed to click the wall. All of these conditions need to be met
if(global.blueEquipped==true)&&(global.blueShotsLeft==true) &&(global.clickCount>=0)
{
	//when these conditionms are met, have counter make sure it can or cant happen again
	global.clickCount= global.clickCount - 1;
	//creates the blue wall and destroys the regular wall 
	instance_create_layer(x,y,"Instances",obj_wall_blue);
	//instance_change(obj_wall_blue,true);
	instance_destroy();
}
//make the clickcount go down once becasue the left pressed occured.
global.clickCount= global.clickCount - 1;


