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
redColor = make_color_rgb(255, 40, 40);
grav = 0.5;
vSpd = -1;
hSpd = 0;
depth = 10;
icon = instance_create_depth(x,y+16,0,obj_button_icon_chest);
icon.buttonAlpha= 0;
icon.target = id;
image_xscale = 1.5;
image_yscale = 1.5;
bounces = 2;
image_speed= 0;
spriteGot = false;
buttonAlpha = 0;
savedForNext = false;
