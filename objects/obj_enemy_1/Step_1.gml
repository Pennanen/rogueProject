/// @description
/*
*/
inWater = collision_rectangle(x-15,y-15,x+15,y+1,obj_water,true,0);
if (!awake && obj_player.y > y-32 && awakening = false || !awakening && !awake && point_distance(obj_player.x,obj_player.y,x,y)< awakeDistance){awakening = true;alarm[0] = awakeTime};

else if (awakening)
	{
	if (hpAlpha < 1)hpAlpha+=HpAlphaIncrement;
	}
	
	if (!flying){vSpd+=grav;}
	
	
	if (hp <= 0){instance_destroy();}
	
var t1 = tile_meeting(bbox_left,bbox_bottom+3,tilemap) & tile_index_mask;
var t2 = tile_meeting(bbox_right,bbox_bottom+3,tilemap) & tile_index_mask;
if (t1 != 0 || t2!=0 || collision_rectangle(x-15,y+15,x+15,y+22,obj_solid,true,0)) {onGround = true}
else if (onGround != false){onGround = false};
	
	// Deal damage to player
if (place_meeting(x,y,obj_player) && !stabbed)
	{
		damagePlayer(damage,knockback);
		var knockbackSelfDir = point_direction(obj_player.x,obj_player.y,x,y);
		hSpd = lengthdir_x(5,knockbackSelfDir);
		vSpd = lengthdir_y(5,knockbackSelfDir);
	}
