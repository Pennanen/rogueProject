/// @description
/*
*/
var shop = 0//irandom(5);
if (obj_player.y > bottomLine)
	{
	if (FLOOR % 3 = 0 && shop == 0){rm = room4_shop}
	else
	{
	var i = irandom(ds_list_size(rooms)-1);
	rm = ds_list_find_value(rooms,i)
	}
	room_goto(rm);
	}