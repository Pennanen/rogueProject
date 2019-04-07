/// @description
/*
*/
if (!reloading && canFire && reloadDir = 0)
	{
	reloading = true;
	recoverSpd = -5;
	canFire = false;
	audio_play_sound(snd_reload,0,0)
	}