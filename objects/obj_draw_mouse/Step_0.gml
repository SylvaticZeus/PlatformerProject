// Mouse image appears when blue power-up is collected (to visually show the player the controls)
if ((global.hasBlue == true) && (room == room_level_1))
{
	instance_change(obj_mouse, true);
	instance_destroy(obj_WASD);
	// WASD key image is destroyed at the same time
}