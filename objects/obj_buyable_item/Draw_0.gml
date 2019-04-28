/// @description
/*
*/
draw_sprite_ext(spr_shop_frame,0,x,y,1.5,1.5,0,c_white,1);
draw_self();

/*	draw_sprite_ext(spr_use_key,0,x,y+32,1.5,1.5,0,c_white,buttonAlpha);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
if (cost > obj_item_handler.diamonds){draw_set_color(redColor);}
else{draw_set_color(c_white);}
draw_set_font(font3);
draw_sprite_ext(spr_diamond,0,x+6,y-64,2,2,0,c_white,1);
draw_text(x-6,y-64,string(cost));


draw_set_color(c_white);