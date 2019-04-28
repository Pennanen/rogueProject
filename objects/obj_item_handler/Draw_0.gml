/// @description
/*
*/
var x1 = viewx;
var x2 = x1+vieww;
var y1 = viewy;
var y2 = y1+85;
var y3 = y1+viewh;
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,0);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(font3);
draw_sprite_ext(spr_diamond,0,x1+vieww/2+120,y3-52,2,2,0,c_white,1);
draw_sprite_ext(spr_key,0,x1+vieww/2+120,y3-27,2,2,0,c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x1+vieww/2+138,y3-51,diamonds);
draw_text(x1+vieww/2+138,y3-26,keys);

draw_sprite_ext(spr_inventory_sign,0,viewx+vieww/2-220+1*44,viewy+viewh-64,1,1,0,c_white,1)