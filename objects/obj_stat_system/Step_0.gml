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
	
if (manaReal >= 30)
	{
	manaIndex1 = 10;
	manaIndex2 = 10;
	manaIndex3 = 10;
	manaIndex4 = manaReal-30;	
	}
else if (manaReal >= 20)
	{
	manaIndex1 = 10;
	manaIndex2 = 10;
	manaIndex3 = manaReal-20;
	manaIndex4 = 0;
	}
else if (manaReal >= 10)
	{
	manaIndex1 = 10;
	manaIndex2 = manaReal-10;
	manaIndex3 = 0;
	manaIndex4 = 0;
	}
else
	{
	manaIndex1 = manaReal;
	manaIndex2 = 0;
	manaIndex3 = 0;
	manaIndex4 = 0;
	}