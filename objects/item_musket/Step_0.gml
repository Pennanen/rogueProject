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
	collected = true;
	}
if (trigger)
	{
	if (obj_player.y > 0 && obj_player.y < room_height)
		{
			if (obj_musket.canFire && obj_musket.reloadDir = 0)
			{
			obj_musket.shoot = true;
			}
		}
	trigger = false;
	}