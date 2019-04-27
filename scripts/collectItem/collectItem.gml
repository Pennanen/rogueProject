var itemId = argument0;

if (!instance_exists(itemId)) {item = instance_create_depth(x,y,-500,itemId)};
item.collect = true;
ds_list_add(obj_item_handler.collectedItems,item);