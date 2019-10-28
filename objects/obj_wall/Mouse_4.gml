global.clickCount--;

if (global.clickCount < 0)
{
	global.blueEquipped = false;
}

// Blue color change
if (global.blueEquipped == true)
{
	image_index = 1;
}

// Pink color change
if (global.pinkEquipped == true)
{
	image_index = 2;
}

