/// @description
/*
*/
if (instance_exists(target))
{
draw_sprite_ext(spr_hp,0,x,y-12-target.sprite_height/2,2,1,0,c_white,target.hpAlpha);
draw_sprite_ext(spr_hp,1,x,y-12-target.sprite_height/2,2*(target.hp/target.maxHp),1,0,c_white,target.hpAlpha);
draw_sprite_ext(spr_hp,2,x,y-12-target.sprite_height/2,2,1,0,c_white,target.hpAlpha);
}