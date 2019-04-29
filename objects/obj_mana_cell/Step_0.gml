/// @description
/*
*/

if (place_meeting(x,y-1,obj_player) && !immune)
	{
	obj_stat_system.manaFill+=5;
	instance_destroy();
	}
	
if (y > room_height+400)
	{
	global.wastedManaCells++;
	instance_destroy();	
	}
event_inherited()