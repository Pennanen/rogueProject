/// @description
/*
*/
index = 1;
image_speed = 0;
image_xscale = 1.5;
image_yscale = 1.5;
image_alpha = 0;
vSpd = 60;
hover = false;
hovery = 0;
typeText = "";
item = noone;
yy = 0;
rarity = irandom(99);

if (rarity < 5 && ds_list_size(obj_item_handler.uRarePool)>0){currentPool = obj_item_handler.uRarePool}
else if (rarity < 30 && ds_list_size(obj_item_handler.rarePool)>0){currentPool = obj_item_handler.rarePool}
else {currentPool = obj_item_handler.commonPool}

if (ds_list_size(currentPool)>0)
{
itemId = ds_list_find_value(currentPool,0);
item = instance_create_depth(x,y,depth-1,itemId);
ds_list_delete(currentPool,0);
typeText = item.name;
}
if (item = noone){instance_destroy()};

