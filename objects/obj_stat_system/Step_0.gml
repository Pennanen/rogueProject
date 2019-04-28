/// @description
/*
*/
if (manaFill > 0 && canFill){if (manaReal < manaMAX){manaReal++;manaFill--;alarm[1]=2;}else{manaFill--;alarm[1]=1}canFill = false}
if (hudAnchorX != camera_get_view_width(view_camera[0]))hudAnchorX = camera_get_view_width(view_camera[0]);
if (playerHP <= 0 && playerDEAD = false)
	{
	playerDEAD = true;
	obj_enemy_1.pause = true;
	obj_player.playerPause = true;
	alarm[2] = 60;
	
	}
if (!canHurt)
	{
	hurtIndex++;
	if (hurtIndex = 3 && obj_player.image_blend = c_white){obj_player.image_blend = c_red;hurtIndex = 0}
	else if (hurtIndex = 3 && obj_player.image_blend = c_red){obj_player.image_blend = c_white;hurtIndex = 0}
	}
handleMana();	
