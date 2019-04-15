/// @description
/*
*/

dir = point_direction(x,y,mouse_x,mouse_y);



if (sign(side) = 1)
	{
	dir = dir;
	}
	else if (sign(side) = -1)
	{
	dir=dir+180;
	}

image_angle = dir;

if (!reloading && canFire && reloadDir = 0 && !kick)
{
side = obj_player.image_xscale;

}
if (side != image_xscale) {image_xscale += (side-image_xscale)*0.2}

	var len = 30*side;
	tipXpos = x+lengthdir_x(len,dir+5*sign(side));
	tipYpos = y+lengthdir_y(len,dir+5*sign(side));