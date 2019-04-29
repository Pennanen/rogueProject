/// @description
/*
*/
if (force != 0 && !armed)
	{
	
	hSpd = lengthdir_x(force,dir);
	vSpd = 1.5*lengthdir_y(force,dir);
	armed = true;	
	}

if (y > room_height+400)
	{
	instance_destroy();	
	}
event_inherited()