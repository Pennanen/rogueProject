
var rarity = argument0;
repeat(choose(1,2,3)*rarity)
	{
		instance_create_depth(x,y,depth-1,obj_diamond);
	}