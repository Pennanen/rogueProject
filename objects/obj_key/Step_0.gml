/// @description
/*
*/

if (place_meeting(x,y-1,obj_player) && !immune)
	{
	obj_item_handler.keys+=1;
	instance_destroy();
	}
	
if (y > room_height+400)
	{
	global.wastedKeys++;
	instance_destroy();	
	}
event_inherited()