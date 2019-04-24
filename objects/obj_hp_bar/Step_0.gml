/// @description
/*
*/
if (target != noone)
{
	if (instance_exists(target))
	{
	x += (target.x-x)*xw;
	y += (target.y-y)*yw;
	}
	else{instance_destroy();}
}
