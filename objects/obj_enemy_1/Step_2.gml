/// @description
/*
*/
if (place_meeting(x,y,obj_player) && !stabbed)
	{
		damagePlayer(damage,knockback);
		var knockbackSelfDir = point_direction(obj_player.x,obj_player.y,x,y);
		hSpd = lengthdir_x(5,knockbackSelfDir);
		vSpd = lengthdir_y(5,knockbackSelfDir);
	}