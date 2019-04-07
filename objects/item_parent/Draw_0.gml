/// @description
/*
*/
draw_sprite_ext(sprite_index,image_index,x,y+hovery,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if (showText)
	{
	draw_set_alpha(hovery);
	draw_set_font(font3);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text(x+20,y+60,description);
	draw_set_alpha(1);
	}