/// @description
/*
*/
if (!reloading && reloadDir = 0)
	{
	reloading = true;
	recoverSpd = -5;
	canFire = false;
	kick = false;
	audio_play_sound(snd_reload,0,0)
	}
	/*else if (!reloading && reloadDir > 370)
	{
	reloadDir -= 360;
	reloading = true;
	canFire = false;
	kick = false;
	audio_play_sound(snd_reload,0,0)
	}