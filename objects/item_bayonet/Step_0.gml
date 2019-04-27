/// @description
/*
*/
if (slotSelected)
{
// Inherit the parent event
event_inherited();

if (collected = false && collect)
	{
	image_alpha = 1;
	BAYONET = true;
	collected = true;
	}
if (trigger)
	{
	if (obj_player.y > 0 && obj_player.y < room_height)
		{
		if(obj_musket.canStab && obj_musket.reloadDir = 0)
			{
			obj_musket.stab = true;
			obj_stat_system.manaReal-=cost;
			}
		}
	trigger = false;
	}
}