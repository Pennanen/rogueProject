/// @description
/*
*/
if (item != noone){
if (item.collected = false)
	{
	ds_list_add(currentPool,item.object_index);
	instance_destroy(item,true);	
	}}