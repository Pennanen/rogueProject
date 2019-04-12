/// @description
/*
*/

var v = irandom_range(-breakFree,breakFree)*0.2;
var h = irandom_range(-breakFree,breakFree)*0.2;
draw_sprite_ext(spriteIndex,imageIndex,x+h,y+v,image_xscale,image_yscale,spinDir,image_blend,image_alpha);

draw_sprite_ext(spr_hp,0,x,y-12-sprite_height/2,2.5,1.5,0,c_white,hpAlpha);
draw_sprite_ext(spr_hp,1,x,y-12-sprite_height/2,2.5*(hp/maxHp),1.5,0,c_white,hpAlpha);
draw_sprite_ext(spr_hp,2,x,y-12-sprite_height/2,2.5,1.5,0,c_white,hpAlpha);