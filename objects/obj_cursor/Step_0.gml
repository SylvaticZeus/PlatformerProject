// Cursor changes to blue when blue power-up is equipped
if (global.blueEquipped == true)
{	
	cursor_sprite = spr_cursor_blue;
	window_set_cursor(cr_none);
}

// Cursor change pink
if (global.pinkEquipped == true)
{
	cursor_sprite = spr_cursor_pink;
	window_set_cursor (cr_none)
}

// Cursor resets when game resets
if (global.blueEquipped == false)
{	
	cursor_sprite = spr_cursor_none;
	window_set_cursor (cr_default);
}