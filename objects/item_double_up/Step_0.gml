/// @description
/*
*/

// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	musketSHOTS++;
	obj_musket.shotsAvailable = musketSHOTS;
	collected = true;
	}