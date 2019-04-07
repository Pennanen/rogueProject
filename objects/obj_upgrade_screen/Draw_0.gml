/// @description
/*
*/
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(font1);
draw_set_alpha(image_alpha);
draw_text(x,y*0.7-500,"FLOOR "+string(FLOOR));
draw_set_font(font0);
draw_text(x,y*0.7-400,"Choose reward:")
if (stronger = true) 
	{
	draw_text(x,y*0.7-300,"Enemies are growing stronger...");
	}
draw_set_alpha(1);