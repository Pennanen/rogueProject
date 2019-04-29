/// @description
/*
*/
lay_id = layer_get_id("Tiles_1");
tilemap = layer_tilemap_get_id(lay_id);
event_inherited()
grav = 0.5;
vSpd = -4;
hSpd = choose(0.1,0.2,-0.1,-0.2);
depth = -51;
image_xscale = 1.5;
image_yscale = 1.5;
bounces = 0;
image_speed= 0;
spriteGot = false;
buttonAlpha = 0;
savedForNext = false;