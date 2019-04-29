/// @description
/*
*/
//Offsets for collision
if (duck) {image_index = 1;}else{image_index = 0}
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);

if (playerPause) // Player is "paused"
{
}
else // Player not paused
{
	/******************************************************************************************/
	//Dampening of horizontal movement
	if (onGround)
		{
		if (hSpd > hSpdMax){hSpd-=maxDamp}
		if (hSpd < -hSpdMax){hSpd+=maxDamp}
		if (!keyLeft && hSpd <= -gDamp){hSpd +=gDamp}
		if (!keyRight && hSpd >= gDamp){hSpd-=gDamp}
		if (!keyRight && !keyLeft && hSpd >= -gDamp && hSpd <= gDamp) {hSpd = 0}
		}
	else
		{
		if (hSpd > hSpdMax){hSpd-=maxDamp/2}
		if (hSpd < -hSpdMax){hSpd+=maxDamp/2}
		if (!keyLeft && hSpd <= -aDamp){hSpd +=aDamp};
		if (!keyRight && hSpd >= aDamp){hSpd-=aDamp};
		if (!keyRight && !keyLeft && hSpd >= -aDamp && hSpd <= aDamp) {hSpd = 0}
		}
	if (hSpdMax != baseSpdMax+playerSPEED) {hSpdMax = baseSpdMax+playerSPEED};
	
	//Movement
	if (keyLeft && !keyRight && hSpd > -hSpdMax){hSpd -= hAcc;image_xscale = -1}
	if (keyRight && !keyLeft && hSpd < hSpdMax){hSpd += hAcc;image_xscale = 1}
	if (keyUp && onGround && jumpSave > 1){vSpd -= jumpSpd;jumpSave = 1;}
	
	if (keyUp && !onGround && jumpSave > 1 || !onGround && keyUp && inWater){vSpd = -jumpSpd;jumpSave = 1}
	else if (keyUp && !onGround && doubleJumped = false && playerDOUBLEJUMP){vSpd = -jumpSpd;doubleJumped = true}
	// Variable jump and gravity control
	if (keyUpHold && vSpd < 0 && !onGround){}//normal
	else if (vSpd < 0 && !onGround){vSpd+=1;}
	else if (vSpd >= 0 && !onGround){vSpd+=grav/2};
	//if (onGround && keyDown) {duck = true}
	//else if (!tile_meeting(x,y-9,global.Tilemap_Wall) && !place_meeting(x,y-12,obj_solid)){duck = false};
	vSpd+=grav;
	if (inWater)
		{
		vSpd = clamp(vSpd,-maxRiseSpd,2);
		}
		else
		{
		vSpd = clamp(vSpd,-maxRiseSpd,maxFallSpd);
		}
	if (duck) {hSpd /= 1.3}
	hSpd = hSpd/hSpdResistance;
	
	

	//Horizontal collisions
	x += hSpd;
	//Tile
	if (hSpd > 0)
		{
		var t1 = tile_meeting(bbox_right,bbox_top,global.Tilemap_Wall) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_bottom,global.Tilemap_Wall) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			x = ((bbox_right & ~31)-1) - sprite_bbox_right;
			hSpd = 0;
			}
		}
		else
		{
		var t1 = tile_meeting(bbox_left,bbox_top,global.Tilemap_Wall) & tile_index_mask;
		var t2 = tile_meeting(bbox_left,bbox_bottom,global.Tilemap_Wall) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
			hSpd = 0;
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
	}
	//Vertical collisions
	y+=vSpd;
	//Tile
	if (vSpd > 0)
		{
		var t1 = tile_meeting(bbox_left,bbox_bottom,global.Tilemap_Wall) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_bottom,global.Tilemap_Wall) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			y = ((bbox_bottom & ~31)-1) - sprite_bbox_bottom;
			vSpd = 0;
			}
		}
		else
		{
		var t1 = tile_meeting(bbox_left,bbox_top,global.Tilemap_Wall) & tile_index_mask;
		var t2 = tile_meeting(bbox_right,bbox_top,global.Tilemap_Wall) & tile_index_mask;
		if (t1 > 0 || t2 > 0)
			{
			y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
			vSpd = 0;
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
	}
}
