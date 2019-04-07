/// @description
/*
*/
if (ready)
	{
	if (image_alpha > 0){image_alpha-=0.1}
	else{
	instance_destroy(upgrade[0],true);
	instance_destroy(upgrade[1],true);
	instance_destroy(upgrade[2],true);
	obj_player.playerPause = false;
	instance_destroy();}
	}
	else
	{
	if (image_alpha < 1){image_alpha += 0.05};	
	}