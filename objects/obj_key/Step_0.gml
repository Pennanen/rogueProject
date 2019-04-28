/// @description
/*
*/
if (!place_meeting(x,y+1,obj_solid))
	{
	vSpd += grav;
	x+=hSpd;	
	y+=vSpd;
	}
	else if (bounces > 0)
		{
		bounces--;
		vSpd = -vSpd/1.5;
		
		y+=vSpd;
		x+=hSpd;
		}
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

if (place_meeting(x+3,y-4,obj_solid))x--;
if (place_meeting(x-3,y-4,obj_solid))x++;