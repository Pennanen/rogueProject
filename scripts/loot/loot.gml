
var rarity = argument0;
var type = choose(1,2)
if (type = 1)
{
repeat(choose(1,2,3)*rarity)
	{
		instance_create_depth(x,y,depth-1,obj_diamond);
	}
}
else if (type = 2)
	{
		instance_create_depth(x,y,depth-1,obj_mana_cell);
	}