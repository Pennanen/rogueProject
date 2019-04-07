/// @description
/*
*/
draw_self();

draw_sprite_ext(spr_hp,0,x,y-12-sprite_height/2,2.5,1.5,0,c_white,1);
draw_sprite_ext(spr_hp,1,x,y-12-sprite_height/2,2.5*(hp/maxHp),1.5,0,c_white,1);
draw_sprite_ext(spr_hp,2,x,y-12-sprite_height/2,2.5,1.5,0,c_white,1);