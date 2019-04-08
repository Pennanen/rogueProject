/// @description
/*
*/
var shop = 0//irandom(5);
if (obj_player.y > bottomLine)
	{
	if ((FLOOR+1) % 3 = 0 && shop == 0){rm = room4_shop}
	else
	{
	var i = irandom(ds_list_size(rooms)-1);
	rm = ds_list_find_value(rooms,i)
	}
	room_goto(rm);
	}
	
if (instance_exists(obj_upgrade_screen) || instance_exists(obj_continue))
	{
	if (gain > 0){gain-=0.001;audio_sound_gain(music,gain,0);};
	}
	else
	{
	if (room = room4_shop && music != msc_shop && gain > 0)
		{
		gain-=0.01;audio_sound_gain(music,gain,0);
		}
	else if (music != msc_shop && room = room4_shop) {audio_stop_sound(music);music = msc_shop;audio_play_sound(music,1,1)}
	else if (music != msc_1 && gain > 0 && room != room4_shop){gain-=0.01;audio_sound_gain(music,gain,0)}
	else if (music != msc_1 && room != room4_shop){audio_stop_sound(music);music = msc_1;audio_play_sound(music,1,1)}
	else if (gain < maxGain){gain+=0.001;audio_sound_gain(music,gain,0);};
	
	}
