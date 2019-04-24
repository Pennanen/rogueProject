/// @description
/*
*/
if (room = room_dead)
	{
	if (instance_exists(item_parent))
		{
		instance_destroy(item_parent);
		}	
	x = room_width/2;
	y = room_height/2;
	}