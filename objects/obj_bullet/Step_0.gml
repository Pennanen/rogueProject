/// @description
/*
*/
if (collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_solid,1,0))
{
	var xx = x+lengthdir_x(spd,dir)/2;
	var yy = y+lengthdir_y(spd,dir)/2;
	instance_create_depth(xx,yy,-55,obj_bullet_hit);
	instance_destroy();
}
if (lastDir != dir){image_angle = dir;lastDir = dir}


//dir = lerp(dir,270,0.1);
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
spd*=1.11;
image_xscale = 2+spd/120;
if (image_yscale < 3) image_yscale +=0.3;

//image_angle = point_direction(xprevious,yprevious,x,y);