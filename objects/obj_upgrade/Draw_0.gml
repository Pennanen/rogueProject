/// @description
/*
*/
draw_sprite_ext(sprite_index,image_index,x,y-hovery,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if (item != noone){
draw_sprite_ext(spr_upgrade_icons,item.image_index,x,y-hovery,image_xscale*1.5,image_yscale*1.5,image_angle,c_white,image_alpha);
}
if (hover)
	{
	draw_set_halign(fa_center);
	draw_set_font(font2);
	draw_text(x,y-105-hovery,typeText);	
	}