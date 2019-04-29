/// @description
/*
*/

	
// Take bullet damage and knockback if stabbed
if (!pause)
{
col = instance_place(x,y,obj_bullet);
if (col != noone)
	{
		if (!awake && awakening = false){awakening = true;alarm[0] = awakeTime};
		if (stabbed)
			{
			stabbed = false;
			var len = obj_musket.stabForce/mass;
			var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
			hSpd = lengthdir_x(len,dir);
			vSpd = lengthdir_y(len,dir);
			}
			else // Normal knockback
			{
			var len = obj_musket.bulletKnockback/mass;
			var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
			hSpd += lengthdir_x(len,dir);
			vSpd += lengthdir_y(len,dir);	
			}
		hp-=col.damage;
		obj_stat_system.manaFill+=manaGAIN;
		instance_destroy(col,true);
	}	
col = instance_place(x,y,obj_explosion_red);
if (col != noone)
	{
		if (!awake && awakening = false){awakening = true;alarm[0] = awakeTime};

			var len = 22/mass;
			var dir = point_direction(col.x,col.y,x,y-160)
			hSpd += lengthdir_x(len,dir);
			vSpd += lengthdir_y(len,dir);	

		hp-=col.damage;
	}
	if (inWater)
		{
			hSpd = hSpd/1.2
			vSpd = clamp(vSpd,-9,3);
		};
	
	//collision
	var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
	var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
	var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
	var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
	
	x += hSpd;
	//Tile
	if (hSpd > 0)
		{
		var t1 = tile_meeting(bbox_right,bbox_top,tilemap) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_bottom,tilemap) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			x = ((bbox_right & ~31)-1) - sprite_bbox_right;
			hSpd = 0;
			if (stabbed)
				{
				var tipx = obj_musket.tipXpos;
				var tipy = obj_musket.tipYpos;
				if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
				}
			}
		}
		else
		{
		var t1 = tile_meeting(bbox_left,bbox_top,tilemap) & tile_index_mask;
		var t2 = tile_meeting(bbox_left,bbox_bottom,tilemap) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
			hSpd = 0;
			if (stabbed)
				{
				var tipx = obj_musket.tipXpos;
				var tipy = obj_musket.tipYpos;
				if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
				}
			}
		}
	//Object
	if place_meeting(x+sign(hSpd),y,obj_solid) 
	{
		var wall = instance_place(x+sign(hSpd),y,obj_solid);
		if (hSpd > 0) //right
			{
				x = (wall.bbox_left-1)-sprite_bbox_right;
			} 
		else if (hSpd < 0) //left
			{ 
				x = (wall.bbox_right+1)-sprite_bbox_left;
			}
		hSpd = 0;
		if (stabbed)
			{
			var tipx = obj_musket.tipXpos;
			var tipy = obj_musket.tipYpos;
			if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
			}
		
	}
	//Vertical collisions
	y+=vSpd;
	//Tile
	if (vSpd > 0)
		{
		var t1 = tile_meeting(bbox_left,bbox_bottom,tilemap) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_bottom,tilemap) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			y = ((bbox_bottom & ~31)-1) - sprite_bbox_bottom;
			vSpd = 0;
			if (stabbed)
				{
				var tipx = obj_musket.tipXpos;
				var tipy = obj_musket.tipYpos;
				if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
				}
			}
		}
		else
		{
		var t1 = tile_meeting(bbox_left,bbox_top,tilemap) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_top,tilemap) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
			vSpd = 0;
			if (stabbed)
				{
				var tipx = obj_musket.tipXpos;
				var tipy = obj_musket.tipYpos;
				if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
				}
			}
		}


	//Object
	if place_meeting(x,y+sign(vSpd),obj_solid) 
	{
		var wall = instance_place(x,y+sign(vSpd),obj_solid);
		if (vSpd > 0) //bottom
			{
				y = (wall.bbox_top-1)-sprite_bbox_bottom;
			} 
		else if (vSpd < 0) //top
			{ 
				y = (wall.bbox_bottom+1)-sprite_bbox_top;
			}
		vSpd = 0;
		if (stabbed)
			{
			var tipx = obj_musket.tipXpos;
			var tipy = obj_musket.tipYpos;
			if (point_distance(x,y,tipx,tipy)>stabThreshold && breakFree = 0){alarm[2] = 1;breakFree = 1;}
			}
	}
}