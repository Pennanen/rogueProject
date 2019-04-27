/// @description
/*
*/
if (hover)
	{
		scale += (1.4-scale)*0.3;
		image_index = 3;
	}
	else
	{
		scale += (1.25-scale)*0.3;
		image_index=  2;
	}
	
	image_xscale = scale;
	image_yscale = scale;
/*
x1 = obj_item_handler.slot[0].x-40;
y1 = obj_item_handler.slot[0].y-20;
x2 = obj_item_handler.slot[3].x+40;
y2 = obj_item_handler.slot[3].y+40;
if (mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2 || obj_player.y < 0 || obj_player.y > room_height)
	{
	disabled = true;

	}
	else
	{
	disabled = false;
	}
*/
