/// @description
/*
*/
//Offsets for collision
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
	if (keyUp && onGround){vSpd -= jumpSpd;}
	if (keyUp && jumpSave > 1){vSpd -= jumpSpd;jumpSave = 1}
	else if (keyUp && !onGround && doubleJumped = false && playerDOUBLEJUMP){vSpd = -jumpSpd/1.2;doubleJumped = true}
	// Variable jump and gravity control
	if (keyUpHold && vSpd < 0 && !onGround){}
	else if (vSpd < 0 && !onGround){vSpd+=1;}
	else if (vSpd >= 0 && !onGround){vSpd+=grav/2};
	vSpd+=grav;
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
	}
}
