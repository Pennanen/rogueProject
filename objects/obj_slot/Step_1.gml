/// @description
/*
*/
x1 = obj_item_handler.slot[0].x-40;
y1 = obj_item_handler.slot[0].y-20;
x2 = obj_item_handler.slot[3].x+40;
y2 = obj_item_handler.slot[3].y+40;
if (mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2)
	{
	disabled = true;
	alarm[0] = 3;
	}

if (!disabled)
{
if (slotKey != mb_left && slotKey != mb_right)
	{
		if(keyboard_check_pressed(slotKey) && !slotTrigger){slotTrigger = true};	
	}
	else if (slotKey != noone)
	{
		if(mouse_check_button_pressed(slotKey) && !slotTrigger){slotTrigger = true};
	}

if (slotTrigger && item!=noone)
	{
		if (item.cost <= obj_stat_system.manaReal)
		{
		obj_stat_system.manaReal-=item.cost;
		item.trigger = true;
		}
		slotTrigger = false;
	}
	slotTrigger =false;
}