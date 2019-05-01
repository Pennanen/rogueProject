/// @description
/*
*/
var xx = viewx+44;
var yy = viewy+45;

for(i=0;i<4;i++)
	{
	if (instance_exists(slot[i]))
		{
		slot[i].x = activex[i];	
		slot[i].y = activey[i];	
		}
	}
for(i=0;i<inventorySize;i++)
	{
	if (instance_exists(invslot[i]))
		{
		invslot[i].x = invx[i];	
		invslot[i].y = invy[i];
		}
	}

if (ds_list_size(collectedItems)>0)
	{
	for(i=0;i<ds_list_size(collectedItems);i++)
		{
		item = ds_list_find_value(collectedItems,i);
		if (item.active)
			{
			actives++;
			}
			else
			{
			item.x = (xx+(i-actives)*60);
			item.y = yy;
			}
		}
		actives = 0;
	}