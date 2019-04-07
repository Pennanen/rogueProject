/// @description
/*
*/
if (obj_player.y > bottomLine)
	{
	var i = irandom(ds_list_size(rooms)-1);
	rm = ds_list_find_value(rooms,i)
	room_goto(rm);
	}