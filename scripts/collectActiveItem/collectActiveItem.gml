var itemId = argument[0];
var success = false;
if (argument_count = 2){var preSlot = argument[1];success = true}
else {var preSlot = noone;}

	item = instance_create_depth(x,y,-500,itemId)
	if (item.consumable && instance_number(obj_player.colList[|0].item)>1)
				{
					instance_destroy(item);
					obj_player.colList[|0].item.amount++;
					success = true;
				}
	if (argument_count < 2){
	if (!success && item.active = false)
		{
		success = true;
		ds_list_add(obj_item_handler.collectedItems,item);
		}
		else
		{
			for(i=0;i<obj_item_handler.inventorySize;i++)
				{
				if (obj_item_handler.invslot[i].item == noone)
					{
					preSlot = obj_item_handler.invslot[i];
					success = true;
					}
				}
		}}

		
if (success = false){instance_destroy(item);}
else if (instance_exists(item))
		{
			item.currentSlot = preSlot;
			item.slotSelected = true;
			item.collect = true;
			
			success = true;
		}
return success;