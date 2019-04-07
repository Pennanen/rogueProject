/// @description
/*
*/
FLOOR++;
if (room != room_start)
	{
	obj_player.y = topLine;
	obj_player.playerPause = true;
	setCamPos(obj_player.x,obj_player.y);
	alarm[0] = 15;
	}
	else
	{
	setCamPos(obj_player.x,obj_player.y);	
	}