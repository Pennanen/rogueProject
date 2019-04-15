/// @description
/*
*/
if (!awake && obj_player.y > y-32 && awakening = false){awakening = true;alarm[0] = awakeTime};

else if (awakening)
	{
	if (hpAlpha < 1)hpAlpha+=HpAlphaIncrement;
	}
	
	if (!flying){vSpd+=grav;}
	
	
	if (hp <= 0){instance_destroy();}
	
	
	onGround = collision_line(x,y,x,y+sprite_height/2+2,obj_solid,0,true);
	
	// Deal damage to player
if (place_meeting(x,y,obj_player) && !stabbed)
	{
		damagePlayer(damage,knockback);
		var knockbackSelfDir = point_direction(obj_player.x,obj_player.y,x,y);
		hSpd = lengthdir_x(5,knockbackSelfDir);
		vSpd = lengthdir_y(5,knockbackSelfDir);
	}