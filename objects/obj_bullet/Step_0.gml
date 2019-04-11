/// @description
/*
*/
if (collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_solid,1,0))
{
	var xx = x+lengthdir_x(spd,dir)/2;
	var yy = y+lengthdir_y(spd,dir)/2;
	instance_create_depth(xx,yy,-55,obj_bullet_hit);
	instance_destroy(self,false);
}
if (lastDir != dir){image_angle = dir;lastDir = dir}


//dir = lerp(dir,270,0.1);
var v = clamp((a*t/a),0,a)*sin(t*freq);
t++;
vy+=grav;
y+=vy;
x+=lengthdir_x(spd,dir+v);
y+=lengthdir_y(spd,dir+v);
spd*=1.01+0.01*bulletSPEED;
image_xscale = 1.5+spd*0.002;
image_yscale = 0.5+playerDAMAGE/7;

image_angle = point_direction(xprevious,yprevious,x,y);