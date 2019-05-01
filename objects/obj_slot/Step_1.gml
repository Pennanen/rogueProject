/// @description
/*
*/
if (hover)
	{
		scale += (1.6-scale)*0.3;
		image_index = 1;
	}
	else
	{
		scale += (1.5-scale)*0.3;
		image_index=  0;
	}
	
	image_xscale = scale;
	image_yscale = scale;
	/*
if (instance_exists(obj_item_handler)){
x1 = obj_item_handler.slot[0].x-40;
y1 = obj_item_handler.slot[0].y-20;
x2 = obj_item_handler.slot[3].x+40;
y2 = obj_item_handler.slot[3].y+40;}
if (instance_exists(obj_player))
{
if (mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2 || obj_player.y < 0 || obj_player.y > room_height || instance_position(mouse_x,mouse_y,obj_slot))
	{
	disabled = true;

	}
	else
	{
	disabled = false;
	}
}*/
if (!disabled && keyIndex != -1)
{
if (instance_exists(item) && item.canHold)
{
	if (slotKey != mb_left && slotKey != mb_right)
	{
		if(keyboard_check(slotKey) && !slotTrigger){slotTrigger = true};	
	}
	else if (slotKey != noone)
	{
		if(mouse_check_button(slotKey) && !slotTrigger){slotTrigger = true};
	}
		
}
else if (instance_exists(item))
{
	if (slotKey != mb_left && slotKey != mb_right)
	{
		if(keyboard_check_pressed(slotKey) && !slotTrigger){slotTrigger = true};	
	}
	else if (slotKey != noone)
	{
		if(mouse_check_button_pressed(slotKey) && !slotTrigger){slotTrigger = true};
	}
		
}
	

if (slotTrigger && item!=noone)
	{
		if (item.cost <= obj_stat_system.manaReal)
		{
		item.trigger = true;
		}
		slotTrigger = false;
	}
	slotTrigger =false;
}