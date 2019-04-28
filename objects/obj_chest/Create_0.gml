/// @description
/*
*/
open = false;

image_speed = 0;
image_index = 0;
currentPool = ds_list_create();
itemType = choose(0,0,0,0,1,1,2);
switch(itemType)
	{
	case 0:	
		item = noone;
	break;
	case 1:
		item = choose(item_bomb,item_apple);
	break;
	case 2:
		var rarity = irandom(99);
		
		if (rarity < 2 )
			{
			if (ds_list_size(obj_item_handler.uRarePool)<=0)
			{ds_list_copy(obj_item_handler.uRarePool,obj_item_handler.buURare)}
			currentPool = obj_item_handler.uRarePool
			}
		else if (rarity < 15 )
			{
			if (ds_list_size(obj_item_handler.rarePool)<=0)
			{ds_list_copy(obj_item_handler.rarePool,obj_item_handler.buRare)}
			currentPool = obj_item_handler.rarePool
			}
		else 
			{
			if (ds_list_size(obj_item_handler.commonPool)<=0)
			{ds_list_copy(obj_item_handler.commonPool,obj_item_handler.buCommon)}
			currentPool = obj_item_handler.commonPool
			}

		item = ds_list_find_value(currentPool,0);
	break;
	}
	
ds_list_delete(currentPool,0);
buttonAlpha = 0;
depth = 12;
icon = instance_create_depth(x,y+16,0,obj_button_icon_chest);
icon.buttonAlpha= 0;
icon.target = id;
itemSpawned = false;
cost = 1;