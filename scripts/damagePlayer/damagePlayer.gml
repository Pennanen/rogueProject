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
	if (playerHP <= 0){handle = instance_create_depth(x,y,0,obj_dead_handler);handle.cause = name}
	obj_stat_system.alarm[0] = obj_stat_system.hurtTime;
	obj_stat_system.canHurt = false;	
	}