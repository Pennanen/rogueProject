
var rarity = argument0;
var type = choose(1,1,1,1,2,2,3)
if (type = 1)
{
repeat(choose(2,2,3,3,4)*rarity)
	{
		instance_create_depth(x,y,depth-1,obj_diamond);
	}
}
else if (type = 2)
	{
		var l = choose(obj_mana_cell,obj_key)
		instance_create_depth(x,y,depth-1,l);
	}
else if (type = 3)
	{
	var l = choose(item_bomb,item_apple);
	inst = instance_create_depth(x,y,depth-1,obj_collectible_item);
	inst.item = l;	
	}