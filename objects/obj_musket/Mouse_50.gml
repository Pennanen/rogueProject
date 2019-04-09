/// @description
/*
*/
if (canFire && y > 0 && y < room_height && reloadDir = 0)
	{
	shotsAvailable--;
	var len = 42*side/2;
	var tipx = x+lengthdir_x(len,dir+5*sign(side));
	var tipy = y+lengthdir_y(len,dir+5*sign(side));
	bullet = instance_create_depth(tipx,tipy,depth+1,obj_bullet);
	instance_create_depth(tipx,tipy,depth-1,obj_muzzle);
	bullet.dir = point_direction(x,y,mouse_x,mouse_y);
	canFire = false;
	if (shotsAvailable = 0){reloading = true;audio_play_sound(snd_reload,0,0)}
	else{kick = true;reloadDir = 360;audio_play_sound(snd_stab,0,0);};
	recoverSpd = -5;
	obj_player.hSpd += lengthdir_x(-knockback*3,bullet.dir);
	obj_player.vSpd += lengthdir_y(-knockback,bullet.dir);
	audio_play_sound(snd_shoot,0,0);
	}