/// @description
/*
*/
if (targetAudio != noone)
	{
	if (targetAudio != music && currentGain > 0) 
		{
			currentGain-=spd;
			audio_sound_gain(music,currentGain,0);
		}
	else if (targetAudio != music && currentGain <= 0)
		{
			audio_stop_sound(music);
			music=targetAudio;
			audio_play_sound(music,1,1);
		}
	else if (targetAudio == music && currentGain < maxGain) 
		{
		currentGain+=spd;
		audio_sound_gain(music,currentGain,0);
		}
	else if (targetAudio == music && currentGain >= maxGain)
		{
		currentGain=maxGain;
		audio_sound_gain(music,currentGain,0);
		instance_destroy();
		}
	}
