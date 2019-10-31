if(global.blueEquipped==true)&&(global.blueShotsLeft==true) &&(global.clickCount>=0)
{
	global.clickCount= global.clickCount - 1;
	instance_create_layer(x,y,"Instances",obj_wall_blue);
	//instance_change(obj_wall_blue,true);
	instance_destroy();
}
global.clickCount= global.clickCount - 1;


