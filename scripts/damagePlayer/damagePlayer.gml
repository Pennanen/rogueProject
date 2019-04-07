var damage = argument0;
var knockback = argument1;

if (obj_stat_system.canHurt)
	{
	if (knockback > 0)
		{
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		obj_player.hSpd = lengthdir_x(knockback,dir)	
		obj_player.vSpd = -knockback+lengthdir_y(knockback,dir)
		}
	playerHP-=damage;
	obj_stat_system.alarm[0] = obj_stat_system.hurtTime;
	obj_stat_system.canHurt = false;	
	}