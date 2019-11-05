// Supposed to fade into the next level
// Not functional yet

a = clamp(a + (fade * .05), 0, 1);

if (a == 1)
{
	room_goto_next();
	fade = -1;
}

if (a == 0) && (fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(0, 0, 0, 0, 0);

draw_set_alpha(1);