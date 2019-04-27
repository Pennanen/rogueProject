/// @description
/*
*/
draw_self();

	draw_sprite_ext(spr_use_key,0,x,y+56,1.5,1.5,0,c_white,buttonAlpha);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(font3);
draw_text(x,y+30,string(cost));