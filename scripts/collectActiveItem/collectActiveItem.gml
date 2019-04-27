var itemId = argument0;
var preSlot = argument1;

if (!instance_exists(itemId)) 
	{
	item = instance_create_depth(x,y,-500,itemId)
	item.currentSlot = preSlot;
	item.slotSelected = true;
	item.collect = true;
	}

//ds_list_add(obj_item_handler.collectedItems,item);
