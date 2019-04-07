/// @description
/*
*/
if (!place_meeting(x,y+1,obj_solid))
	{
	vSpd += grav;
	x+=hSpd;	
	y+=vSpd;
	}
if (place_meeting(x,y-1,obj_player))
	{
	obj_item_handler.diamonds+=1;
	instance_destroy();
	}
	
if (y > room_height+400)
	{
	global.wastedDiamonds++;
	instance_destroy();	
	}