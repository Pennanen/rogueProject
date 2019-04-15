/// @description
/*
*/

// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	collected = true;
	}
if (trigger)
	{
	if (obj_player.y > 0 && obj_player.y < room_height)
		{
		if (playerHP < playerMAXHP)
		{
		if (playerHP+0.5 >= playerMAXHP){playerHP = playerMAXHP}
		else{playerHP+=0.5;}
		obj_stat_system.manaReal-=cost;
		}
		}
	trigger = false;
	}