/// @description
/*
*/
var dire = point_direction(x,y,obj_player.x,obj_player.y)+irandom_range(-30,30);
var ff = 1+(obj_camera.ww/2-point_distance(x,y,obj_player.x,obj_player.y))/85;
camShake(ff,dire,2);
scale = 2.5;
expansionRate = 0;
image_speed = 4;
image_xscale= scale;
image_yscale = scale;
image_angle = irandom(360);
damage = 2;