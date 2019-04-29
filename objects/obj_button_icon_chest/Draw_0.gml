/// @description
/*
*/
if (instance_exists(obj_item_handler)) 
{
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_set_font(font3);
if (target != noone && instance_exists(target))
{
	if (target.object_index = obj_chest)
		{
			draw_sprite_ext(spr_use_key,0,x,y,1.5,1.5,0,c_white,buttonAlpha);
			if (target.cost > obj_item_handler.keys){draw_set_color(redColor);} else {draw_set_color(c_white)};
			draw_sprite_ext(spr_key,0,x+6,y-96,2,2,45,c_white,1);
			draw_text(x-6,y-96,string(target.cost));
		}
	else if (target.object_index = obj_buyable_item)
		{
			draw_sprite_ext(spr_use_key,0,x,y+16,1.5,1.5,0,c_white,buttonAlpha);
			if (target.cost > obj_item_handler.diamonds){draw_set_color(redColor);} else {draw_set_color(c_white)};
			draw_sprite_ext(spr_diamond,0,x+6,y-80,2,2,0,c_white,1);
			draw_text(x-6,y-80,string(target.cost));
		}
}
else
{
instance_destroy();	
}

draw_set_color(c_white);
}
