/// @description
/*
*/

	
// Take bullet damage and knockback if stabbed
col = instance_place(x,y,obj_bullet);
if (col != noone)
	{
		if (stabbed)
			{
			stabbed = false;
			var len = obj_musket.stabForce/mass;
			var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
			hSpd = lengthdir_x(len,dir);
			vSpd = lengthdir_y(len,dir);
			}
		hp-=col.damage;
		obj_stat_system.manaFill+=choose(1,2,2,2,3);
		instance_destroy(col,true);
	}	
	
	//collision
	var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
	var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
	var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
	var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
	
	//Horizontal collisions
	x += hSpd;

	//Snap
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
	//Snap
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


