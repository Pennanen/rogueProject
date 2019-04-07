var itemId = argument0;
if (!instance_exists(itemId)) {item = instance_create_depth(x,y,-500,itemId)};
item.collect = true;
ds_list_delete(obj_item_handler.itemPool,ds_list_find_index(obj_item_handler.itemPool,itemId));
ds_list_add(obj_item_handler.collectedItems,item);