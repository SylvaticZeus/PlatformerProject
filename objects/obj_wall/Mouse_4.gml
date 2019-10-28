if(global.blueEquipped==true)&&(global.blueShotsLeft=true)
{
	global.clickCount=global.clickCount-1;
	image_index=1;
}

if (global.clickCount < 0)
{
	global.blueShotsLeft = false;
}


if(global.pinkEquipped==true){image_index=2;}