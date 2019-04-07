/// @description
/*
*/
if (item != noone){
if (item.collected = false)
	{
	ds_list_add(obj_item_handler.itemPool,item.object_index);
	instance_destroy(item,true);	
	}}