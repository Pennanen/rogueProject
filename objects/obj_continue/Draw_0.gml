/// @description
/*
*/
draw_sprite_ext(sprite_index,image_index,x,y-hovery,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(font1);
draw_set_alpha(image_alpha);
draw_text(x,y*0.7-600,"FLOOR "+string(FLOOR));
draw_set_font(font0);
if (stronger = true) 
	{
	draw_text(x,y*0.7-400,"Enemies are growing stronger...");
	}
	draw_text(x,y-12-hovery,"OK");
draw_set_alpha(1);