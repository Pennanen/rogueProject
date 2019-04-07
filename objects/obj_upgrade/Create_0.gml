/// @description
/*
*/
index = 1;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
vSpd = 25;
hover = false;
hovery = 0;
typeText = "";
item = noone;
if (ds_list_size(obj_item_handler.itemPool)>0)
{
itemId = ds_list_find_value(obj_item_handler.itemPool,0);
item = instance_create_depth(x,y,depth-1,itemId);
ds_list_delete(obj_item_handler.itemPool,0);
typeText = item.name;
}
if (item = noone){instance_destroy()};

