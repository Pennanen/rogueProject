/// @description
/*
*/

var v = irandom_range(-breakFree,breakFree)*0.2;
var h = irandom_range(-breakFree,breakFree)*0.2;
draw_sprite_ext(spriteIndex,imageIndex,x+h,y+v,image_xscale,image_yscale,spinDir,image_blend,image_alpha);
