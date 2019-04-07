/// @description
/*
*/
if (playerHP <= 0)
	{
	game_restart();	
	}
if (!canHurt)
	{
	hurtIndex++;
	if (hurtIndex = 3 && obj_player.image_blend = c_white){obj_player.image_blend = c_red;hurtIndex = 0}
	else if (hurtIndex = 3 && obj_player.image_blend = c_red){obj_player.image_blend = c_white;hurtIndex = 0}
	}