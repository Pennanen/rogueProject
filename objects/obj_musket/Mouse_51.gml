/// @description
/*
*/
if (BAYONET)
{
if (canStab && y > 0 && y < room_height && reloadDir = 0)
	{
	//var len = 42*side/2;
	//var tipx = x+lengthdir_x(len,dir+5*sign(side));
	//var tipy = y+lengthdir_y(len,dir+5*sign(side));
	//instance_create_depth(tipx,tipy,depth-1,obj_muzzle);
	stabDamage = playerDAMAGE;
	alarm[1] = 4;
	canStabDamage = true;
	canStab = false;
	stabDir = point_direction(x,y,mouse_x,mouse_y);
	stabbing = true;
	}
}