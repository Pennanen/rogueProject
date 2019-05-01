/// @description
/*
*/
e = noone;
if (room != room_chunkRoom)
{
var cur = instance_number(obj_enemy_1);
var maxE = DIFFICULTY*4+5;

if (cur <= maxE)
	{
	e = choose(obj_enemy_spinner,obj_enemy_bird);
	instance_create_depth(x,y,-1,e);instance_destroy();
	}
	else
	{
	instance_destroy();	
	}
}