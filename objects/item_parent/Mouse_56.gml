/// @description
/*
*/
if (dragging && active && collect)
	{
	obj_musket.shoot = false;
	if (place_meeting(mouse_x,mouse_y,obj_slot))
		{
		s = collision_point(mouse_x,mouse_y,obj_slot,0,0);
		if (instance_exists(s)) 
			{
			if (s.item != noone)
				{
					var tempId = s.item.id;
					tempId.currentSlot = currentSlot.id; 
					currentSlot.item = tempId;
					
					//Asetetaan itselle uusi slotti
					currentSlot = s;
					s.item = id;
				}
			else
				{
					currentSlot.item = noone;
					currentSlot = s.id;
					currentSlot.item = id;
				}
				obj_slot.disabled = true;
				obj_slot.alarm[0] = 30;
			}
		}
		else if (object_index != item_musket)
		{
		if (consumable)
			{
				repeat(amount)
					{
						dropitem = instance_create_depth(obj_player.x,obj_player.y-10,depth,obj_collectible_item);
						dropitem.item = object_index;
					}
			}
			else
			{
		dropitem = instance_create_depth(obj_player.x,obj_player.y-10,depth,obj_collectible_item);
		dropitem.item = object_index;
			}
		currentSlot.item = noone;
		instance_destroy();
		}
		dragging = false;
		obj_musket.disabled = false;
	}