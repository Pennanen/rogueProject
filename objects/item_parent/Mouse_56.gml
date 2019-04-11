/// @description
/*
*/
if (dragging && active)
	{
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
		else
		{
			
		}
		dragging = false;
		obj_musket.disabled = false;
	}