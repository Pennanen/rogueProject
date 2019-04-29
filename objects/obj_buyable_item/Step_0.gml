/// @description
/*
*/


if (spriteGot = false && item != noone)
	{
	sprite_index = object_get_sprite(item);
	spriteGot = true;	
	}

if (obj_player.colList[|0] == id && item != noone && obj_item_handler.diamonds >= cost)
{
	if (icon.buttonAlpha < 1){icon.buttonAlpha +=0.2}else{icon.buttonAlpha = 1}
}
else
{
	if (icon.buttonAlpha > 0){icon.buttonAlpha -=0.2}else{icon.buttonAlpha = 0}
}
	
if (y > room_height+100 && savedForNext = false)
	{
		ds_list_add(obj_room_handler.wastedItems,item);
		savedForNext =true;
	}
