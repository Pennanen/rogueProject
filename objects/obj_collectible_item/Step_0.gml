/// @description
/*
*/

col = collision_circle(x,y,16,obj_collectible_item,0,true);
if (col != noone)
	{
	hSpd += 0.04*sign(x-col.x)
	if (!place_meeting(x+hSpd,y-4,obj_solid))x+=hSpd;
	}

if (spriteGot = false && item != noone)
	{
	sprite_index = object_get_sprite(item);
	spriteGot = true;	
	}
if (!place_meeting(x,y+1,obj_solid))
	{
	vSpd += grav;
	x+=hSpd;	
	y+=vSpd;
	}
	else if (bounces > 0)
		{
		bounces--;
		vSpd = -vSpd/1.5;
		y+=vSpd;
		x+=hSpd;
		}
		/*
if (collision_line(x,y,x,y-10,obj_player,0,0) && item != noone && keyboard_check_pressed(ord("F")))
{
	for(i=0;i<obj_item_handler.inventorySize;i++)
	{
		if (obj_item_handler.invslot[i].item == noone){collectActiveItem(item,obj_item_handler.invslot[i]);instance_destroy();}
		else{}
	}
}*/
if (obj_player.colList[|0] == id && item != noone)
{
	if (buttonAlpha < 1){buttonAlpha +=0.2}else{buttonAlpha = 1}
}
else
{
	if (buttonAlpha > 0){buttonAlpha -=0.2}else{buttonAlpha = 0}
}
	
if (y > room_height+100 && savedForNext = false)
	{
		ds_list_add(obj_room_handler.wastedItems,item);
		savedForNext =true;
	}

if (place_meeting(x+3,y-4,obj_solid))x--;
if (place_meeting(x-3,y-4,obj_solid))x++;