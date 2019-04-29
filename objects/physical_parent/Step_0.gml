/// @description
/*
*/
if (!place_meeting(x,y+3,obj_solid) && !tile_meeting(x,y+sprite_height/2-3,tilemap))
	{
	x+=hSpd;	
	y+=vSpd;
	vSpd += grav;
	image_angle += (hSpd*4-image_angle)*0.3;
	}
	else if (bounces > 0 || vSpd > 1)
		{
		bounces--;
		if (vSpd < 2){vSpd = 2}
		vSpd = -vSpd/2;
		y+=vSpd;
		x+=hSpd;
		hSpd = hSpd*(0.5+bounces*0.1);
		image_angle += (hSpd*4-image_angle)*0.3;
		}
		else
		{
		image_angle += (0-image_angle)*0.3;
		}

if (place_meeting(x,y-10,obj_solid)&&vSpd < 0 || vSpd < 0 && tile_meeting(x,y-sprite_height/2-1,tilemap)){vSpd*=-1;}
if (place_meeting(x+5,y-9,obj_solid) || tile_meeting(x+5,y-sprite_height/2+4,tilemap)){x--;hSpd *= -0.2;}
if (place_meeting(x-5,y-9,obj_solid) || tile_meeting(x-5,y-sprite_height/2+4,tilemap)){x++;hSpd *= -0.2;}