/// @description
/*
*/
onGround = collision_line(x,y,x,y+sprite_height/2+2,obj_solid,0,true);
	vSpd+=grav;
if (hp < 1){instance_destroy();}
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
//Behaviour
if (awake && !stabbed)
{
if (obj_player.x > x && hSpd < hSpdMax){hSpd += hAcc}
if (obj_player.x < x && hSpd > -hSpdMax){hSpd -= hAcc}
spinDir += -hSpd/2;
spinDir += -15*sign(obj_player.x-x);
if(onGround){vSpd -= choose(0,0,0,0,0,0,0,1,1,2,3);}
}
if (stabbed)
	{
	if (canImpale)
		{
		var len = 70;
		var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
		var tipx = obj_musket.x+lengthdir_x(len,dir);
		var tipy = obj_musket.y+lengthdir_y(len,dir);
		hSpd = (tipx-x);
		vSpd = (tipy-y);
		}
		else
		{
		var len = 30/mass;
		var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
		hSpd = lengthdir_x(len*1.5,dir);
		vSpd = lengthdir_y(len,dir);
		stabbed = false;
		}
	}

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
		instance_destroy(col,true);
	}

	// Collision
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
			var len = 70;
			var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
			var tipx = obj_musket.x+lengthdir_x(len,dir);
			var tipy = obj_musket.y+lengthdir_y(len,dir);
			if (point_distance(x,y,tipx,tipy)>40){stabbed = false;}
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
			var dir = point_direction(obj_musket.x,obj_musket.y,mouse_x,mouse_y)
			var len = 70;
			var tipx = obj_musket.x+lengthdir_x(len,dir);
			var tipy = obj_musket.y+lengthdir_y(len,dir);
			if (point_distance(x,y,tipx,tipy)>40){stabbed = false;}
			}
	}