/// @description
/*
*/

if (room != room_chunkRoom && instance_exists(obj_player))
{
if (open && image_index < 9)
{
	image_index+=1;
}
	
if (instance_exists(icon))
{
	if (obj_player.colList[|0] == id && !open && obj_item_handler.keys > 0)
	{
		if (icon.buttonAlpha < 1){icon.buttonAlpha +=0.2}else{icon.buttonAlpha = 1}
	}
	else
	{
		if (icon.buttonAlpha > 0){icon.buttonAlpha -=0.2}else{icon.buttonAlpha = 0}
	}
}

if (open && !itemSpawned)
{
	alarm[0] = 3;
	itemSpawned = true;
}
}