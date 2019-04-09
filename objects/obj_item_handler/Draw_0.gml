/// @description
/*
*/
var x1 = camera_get_view_x(view_camera[0]);
var x2 = x1+camera_get_view_width(view_camera[0]);
var y1 = camera_get_view_y(view_camera[0]);
var y2 = y1+85;
var y3 = y1+camera_get_view_height(view_camera[0]);
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,0);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(font3);
draw_sprite_ext(spr_diamond,0,x1+29,y3-47,1.5,1.5,0,c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x1+49,y3-43,diamonds);