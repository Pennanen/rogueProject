/// @description
/*
*/

// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	musketSHOTS++;
	playerDAMAGE = playerDAMAGE*0.9;
	obj_musket.shotsAvailable = musketSHOTS;
	collected = true;
	}