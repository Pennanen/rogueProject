/// @description
/*
*/
if (instance_number(obj_enemy_1) < 1){open = 1}
openX = startx-sprite_width;
if (open = 1)
	{
		x += (openX-x)*0.3;
	}
	else
	{
		x += (closedX-x)*0.3;
	}