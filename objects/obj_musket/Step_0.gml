/// @description
/*
*/
if (shoot && !disabled && obj_player.playerPause = false && !instance_position(mouse_x,mouse_y,obj_slot))
	{
	shotsAvailable--;
	var len = 30;
	var dire = point_direction(x,y,mouse_x,mouse_y);
	var	tempBulletTipx = x+lengthdir_x(len,dire);
	var	tempBulletTipy = y+lengthdir_y(len,dire);
	if (bulletsPerShot > 1)
		{
			for(i=0;i<bulletsPerShot;i++)
			{
			bullet = instance_create_depth(tempBulletTipx,tempBulletTipy,depth+1,obj_bullet);
			bullet.dir = point_direction(x,y,mouse_x,mouse_y)-(bulletsPerShot*3)/2 + i*6;
			}
			camShake(1,bullet.dir+180,4);
			
		}
		else
		{
			bullet = instance_create_depth(tempBulletTipx,tempBulletTipy,depth+1,obj_bullet);
			bullet.dir = point_direction(x,y,mouse_x,mouse_y);
			camShake(1,bullet.dir+180,4);
		}
	instance_create_depth(tempBulletTipx,tempBulletTipy,depth-1,obj_muzzle);
	canFire = false;
	if (shotsAvailable = 0){reloading = true;audio_play_sound(snd_reload,0,0)}
	else{kick = true;reloadDir = 360;audio_play_sound(snd_stab,0,0);};
	recoverSpd =8-(bulletsPerShot*4);
	obj_player.hSpd += lengthdir_x(-knockback*2,bullet.dir);
	obj_player.vSpd += lengthdir_y(-knockback,bullet.dir);
	audio_play_sound(snd_shoot,0,0);
	shoot = false;
	}
	
if (BAYONET)
{
if (stab && obj_player.playerPause = false && !instance_position(mouse_x,mouse_y,obj_slot))
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
		var dire = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		var tipx = obj_player.x+lengthdir_x(len,dire);
		var tipy = obj_player.y+lengthdir_y(len,dire);
		x += (tipx-x)*0.9;
		y += (tipy-y)*0.9;
	if (impaledEnemy.stabbed = false){impale = false;impaledEnemy = noone}
	else if (impaledEnemy.canImpale)
		{
			var len = 40*sign(side);
			var dire = dir;
			var impaleXpos = x+lengthdir_x(len,dire);
			var impaleYpos = y+lengthdir_y(len,dire);
			var dist = point_distance(impaleXpos,impaleYpos,impaledEnemy.x,impaledEnemy.y);
		if (dist<impaledEnemy.stabThreshold*3 && !collision_point(impaleXpos,impaleYpos,obj_solid,0,0))
			{
			impaledEnemy.hSpd = (impaleXpos-impaledEnemy.x);
			impaledEnemy.vSpd = (impaleYpos-impaledEnemy.y);
			}else 
				{
				impaledEnemy.hSpd += (0-impaledEnemy.hSpd)*0.3;
				impaledEnemy.vSpd += (0-impaledEnemy.vSpd)*0.3;
				if (impaledEnemy.breakFree = 0){impaledEnemy.alarm[2] = 1;impaledEnemy.breakFree = 1;}
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