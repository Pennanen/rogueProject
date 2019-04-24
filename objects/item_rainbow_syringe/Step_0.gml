/// @description
/*
*/

// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	playerMAXHP+=1;
	playerHP+=1;
	playerDAMAGE +=0.5;
	playerSPEED +=0.25;
	
	collected = true;
	}