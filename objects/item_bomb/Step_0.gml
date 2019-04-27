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
	collected = true;
	}
if (trigger)
	{
	if (obj_player.y > 0 && obj_player.y < room_height)
		{
		var dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		var pw = 10;
		bomb = instance_create_depth(obj_player.x,obj_player.y,obj_player.depth-1,obj_bomb);
		bomb.dir = dir;
		bomb.force = pw;
		obj_stat_system.manaReal-=cost;

		}
	trigger = false;
	}
}