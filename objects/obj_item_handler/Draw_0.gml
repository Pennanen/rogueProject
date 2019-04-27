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
draw_sprite_ext(spr_diamond,0,x1+vieww/2+130,y3-32,1,1,0,c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x1+vieww/2+144,y3-31,diamonds);


