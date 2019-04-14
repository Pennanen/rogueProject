/// @description
/*
*/
if (shoot && !disabled)
	{
	shotsAvailable--;
	bullet = instance_create_depth(tipXpos,tipYpos,depth+1,obj_bullet);
	instance_create_depth(tipXpos,tipYpos,depth-1,obj_muzzle);
	bullet.dir = point_direction(x,y,mouse_x,mouse_y);
	camShake(1,bullet.dir+180,3);
	canFire = false;
	if (shotsAvailable = 0){reloading = true;audio_play_sound(snd_reload,0,0)}
	else{kick = true;reloadDir = 360;audio_play_sound(snd_stab,0,0);};
	recoverSpd = -5;
	obj_player.hSpd += lengthdir_x(-knockback*2,bullet.dir);
	obj_player.vSpd += lengthdir_y(-knockback,bullet.dir);
	audio_play_sound(snd_shoot,0,0);
	shoot = false;
	}
	
if (BAYONET)
{
if (stab)
	{
	stabDamage = playerDAMAGE;
	alarm[1] = 3;
	canStabDamage = true;
	canStab = false;
	stabDir = point_direction(x,y,mouse_x,mouse_y);
	stabbing = true;
	audio_play_sound(snd_stab,0,0);
	stab = false;
	}
}




if (impale && instance_exists(impaledEnemy))
	{
		var len = 25;
		var dire = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
		var tipx = obj_player.x+lengthdir_x(len,dire);
		var tipy = obj_player.y+lengthdir_y(len,dire);
		x += (tipx-x)*0.9;
		y += (tipy-y)*0.9;
	if (impaledEnemy.stabbed = false){impale = false;impaledEnemy = noone}
	else if (impaledEnemy.canImpale)
		{
			var len = 40;
			var dire = point_direction(x,y,mouse_x,mouse_y)
			var impaleXpos = x+lengthdir_x(len,dire);
			var impaleYpos = y+lengthdir_y(len,dire);
			var dist = point_distance(impaleXpos,impaleYpos,impaledEnemy.x,impaledEnemy.y);
		if (dist<impaledEnemy.stabThreshold*2)
			{
			impaledEnemy.hSpd = (impaleXpos-impaledEnemy.x);
			impaledEnemy.vSpd = (impaleYpos-impaledEnemy.y);
			}
		}
		else
		{
		var len = stabForce/impaledEnemy.mass;
		var dire = point_direction(x,y,mouse_x,mouse_y)
		impaledEnemy.hSpd += lengthdir_x(len*1.5,dire);
		impaledEnemy.vSpd += lengthdir_y(len,dire);
		obj_player.hSpd *=-1;
		obj_player.vSpd *=-1;
		impaledEnemy.stabbed = false;
		impale = false;
		}
	}
if (instance_exists(impaledEnemy))
	{
	if (impaledEnemy.stabbed = false){impale = false;impaledEnemy = noone};
	}
	else if (impaledEnemy != noone || impale != false)
	{impale = false;impaledEnemy = noone}