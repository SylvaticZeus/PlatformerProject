// Becomes mouse image when blue is collected
if ((global.hasBlue == true) && (room == room_level_1))
{
	instance_change(obj_mouse, true);
	instance_destroy(obj_WASD);
}