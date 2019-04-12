/// @description
/*
*/
draw_sprite_ext(sprite_index,image_index,x,y+hovery,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if (showText && !dragging)
	{
	draw_set_alpha(hovery);
	draw_set_font(font3);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	if (active)
		{
			draw_set_halign(fa_center);
			draw_text(x,y-105,description);
			if (object_index = item_musket) {draw_text(x,y-85,"Refills action points.");}
			else
			{draw_text(x,y-85,"Cost: "+string(cost/10) + " action points!");}
		}
	else{draw_text(x+20,y+60,description);}
	draw_set_alpha(1);
	}