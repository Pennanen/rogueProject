/// @description
/*
*/
repeat(5)
{
	var xx = x+irandom_range(-7,7);
	var yy = y+irandom_range(-7,7);
instance_create_depth(xx,yy,depth,obj_block_parts);
}