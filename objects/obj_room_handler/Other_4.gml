/// @description
/*
*/
FLOOR++;

if (room != room_start)
	{
	obj_player.y = topLine;
	obj_player.playerPause = true;
	setCamPos(obj_camera.targetx,obj_player.y);
	alarm[0] = 15;
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
if (global.wastedManaCells > 0)
	{
	repeat(global.wastedManaCells)
		{
		instance_create_depth(obj_player.x,64,0,obj_mana_cell);
		}
	global.wastedManaCells = 0;
	}	
//Section musics
/*
switch(FLOOR)
	{
	case 10: sectionMusic = music;break;
	case 20: sectionMusic = music;break;
	//....
	}*/
	