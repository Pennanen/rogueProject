/// @description
/*
*/
if (!collision_line(x,y,x,y+1,obj_solid,0,0))
	{
	vSpd += grav;
	x+=hSpd;	
	y+=vSpd;
	}
if (place_meeting(x,y-1,obj_player))
	{
	if (playerHP < playerMAXHP){playerHP+=0.5;instance_destroy();}
	}
	
if (y > room_height+400)
	{
	global.wastedHpCells++;
	instance_destroy();	
	}

if (place_meeting(x+3,y-4,obj_solid))x--;
if (place_meeting(x-3,y-4,obj_solid))x++;