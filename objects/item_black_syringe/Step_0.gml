/// @description
/*
*/

// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	playerSPEED -=2;
	playerDAMAGE+= 2;
	collected = true;
	}