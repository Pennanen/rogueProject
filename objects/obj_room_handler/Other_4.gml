/// @description
/*
*/
bottomLine = room_height-10;
if (layer_exists(layer_get_id("Tiles_1")))global.Tilemap_Wall = layer_tilemap_get_id(layer_get_id("Tiles_1"));
if (room != room_chunkRoom && instance_exists(obj_player))
{
FLOOR++;
if (room != room_start)
	{
	//obj_player.y = topLine;
	if (!fork){obj_player.playerPause = true;alarm[0] = 15;}
	else {fork = false;}
	setCamPos(obj_camera.targetx,obj_player.y);
	}
	else
	{
	setCamPos(obj_camera.targetx,obj_player.y);	
	}
	
if (global.wastedDiamonds > 0)
	{
	repeat(global.wastedDiamonds)
		{
		instance_create_depth(obj_player.x,64,0,obj_diamond);
		}
	global.wastedDiamonds = 0;
	}
if (global.wastedKeys > 0)
	{
	repeat(global.wastedKeys)
		{
		instance_create_depth(obj_player.x,64,0,obj_key);
		}
	global.wastedKeys = 0;
	}
if (global.wastedManaCells > 0)
	{
	repeat(global.wastedManaCells)
		{
		instance_create_depth(obj_player.x,64,0,obj_mana_cell);
		}
	global.wastedManaCells = 0;
	}
if (ds_list_size(wastedItems) > 0)
	{
	for(i=0;i<ds_list_size(wastedItems);i++)
		{
		o = instance_create_depth(obj_player.x,64,0,obj_collectible_item);
		o.item = ds_list_find_value(wastedItems,i);
		}
	ds_list_clear(wastedItems);
	}	
//Section musics
/*
switch(FLOOR)
	{
	case 10: sectionMusic = music;break;
	case 20: sectionMusic = music;break;
	//....
	}*/
}