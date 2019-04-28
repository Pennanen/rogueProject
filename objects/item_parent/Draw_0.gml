/// @description
/*
*/
if (collect)
{
draw_sprite_ext(sprite_index,image_index,x,y+hovery,image_xscale+useScale,image_yscale+useScale,image_angle,image_blend,image_alpha)
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
			else if (cost > 0)
			{draw_text(x,y-85,"Cost: "+string(cost/5) + " action points!");}
			else if (consumable)
			{
				draw_text(x,y-85,"Consumable");
			}
		}
	else{draw_text(x+20,y+60,description);}
	draw_set_alpha(1);
	}
	
if (consumable)
	{
	draw_set_font(font3);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x+12,y+12,string(amount))	
	}
}