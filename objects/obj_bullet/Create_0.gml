/// @description
/*
*/
lay_id = layer_get_id("Tiles_1");
tilemap = layer_tilemap_get_id(lay_id);
spd = 16+bulletSPEED*3;
dir = 0;
lastDir = 0;
image_xscale = 1;
image_yscale = 0.5;

grav = 0;
vy =0;
baseDamage = 0;
damage = baseDamage+playerDAMAGE;

a = 5;
freq = 0.7;
t = 0;
