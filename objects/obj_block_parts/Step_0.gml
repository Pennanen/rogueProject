/// @description
/*
*/

	vSpd += grav;
	x+=hSpd;	
	y+=vSpd;

	if (!armed)armed = true;

image_angle += hSpd;
if (y > room_height+400)
	{
	instance_destroy();	
	}
if (armed){image_alpha-=0.001;}
if (image_alpha = 0){instance_destroy()};

if (place_meeting(x+3,y-4,obj_solid))x--;
if (place_meeting(x-3,y-4,obj_solid))x++;