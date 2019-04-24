/// @description
/*
*/
var cur = instance_number(obj_enemy_1);
var maxE = DIFFICULTY;

if (cur <= maxE)
	{
	var e = choose(obj_enemy_spinner,obj_enemy_bird);
	instance_create_depth(x,y,0,e);
	instance_destroy();
	}
	else
	{
	instance_destroy();	
	}