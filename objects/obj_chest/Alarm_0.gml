/// @description
/*
*/
instance_destroy(icon);
if (itemType = 0)
	{

var times = choose(3,3,3,3,5,5)
		repeat(times)
			{
				type = choose(obj_diamond,obj_diamond,obj_diamond,obj_diamond,obj_key,obj_mana_cell)
				i = instance_create_depth(x,y-48,depth-1,type);
				i.vSpd = random_range(-8,-12);
				i.hSpd = random_range(-3,3)
			}
	}
	else
	{
		i = instance_create_depth(x,y-32,0,obj_collectible_item);
		i.item = item;
		i.vSpd = -10;
	}