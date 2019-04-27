/// @description
/*
*/
if (item = noone)
	{
	if (cons = true)
		{
			item = ds_list_find_value(obj_item_handler.shopPoolMinor,irandom(ds_list_size(obj_item_handler.shopPoolMinor)-1))	 
		}
		else
		{
			item = ds_list_find_value(obj_item_handler.shopPoolMajor,irandom(ds_list_size(obj_item_handler.shopPoolMajor)-1))	
		}
		
	}
grav = 0.5;
vSpd = -1;
hSpd = 0;
depth = -51;
image_xscale = 1.5;
image_yscale = 1.5;
bounces = 2;
image_speed= 0;
spriteGot = false;
buttonAlpha = 0;
savedForNext = false;
