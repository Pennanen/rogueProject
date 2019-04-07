/// @description
/*
*/
dir = obj_musket.dir+90+90*(0-sign(obj_musket.image_xscale))
x = obj_musket.x+lengthdir_x(52,dir+5*sign(obj_musket.image_xscale));
y = obj_musket.y+lengthdir_y(52,dir+5*sign(obj_musket.image_xscale));
image_speed = 3;
image_xscale = 1.5;
image_yscale = 1;
image_angle = dir;

