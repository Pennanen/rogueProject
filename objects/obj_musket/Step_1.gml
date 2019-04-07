/// @description
/*
*/
dir = point_direction(x,y,mouse_x,mouse_y);
if (side = 2)
	{
	dir = dir;
	}
	else if (side = -2)
	{
	dir=dir+180;
	}
image_angle = dir;
if (!reloading && canFire && reloadDir = 0)
{
side = obj_player.image_xscale*2;

}
if (side != image_xscale) {image_xscale += (side-image_xscale)*0.2}