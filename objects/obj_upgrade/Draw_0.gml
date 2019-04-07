/// @description
/*
*/
draw_sprite_ext(sprite_index,image_index,x,y-hovery,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if (item != noone){
draw_sprite_ext(spr_upgrade_icons,item.image_index,x,y-hovery,image_xscale*1,image_yscale*1,image_angle,c_white,image_alpha);
}
if (hover)
	{
	draw_set_alpha(hovery/12)
	draw_set_halign(fa_center);
	draw_set_font(font2);
	draw_text(x,y+70-hovery,typeText);
	draw_set_alpha(1);
	}