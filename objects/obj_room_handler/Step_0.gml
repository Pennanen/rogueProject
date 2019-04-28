/// @description
/*
*/
var shop = 0//irandom(5);
if (obj_player.y > bottomLine)
	{
	/*if (room = fork_1){if (obj_player.x < room_width/2){side = 0}else{side = 1}}
	if (FLOOR = 6){rm = fork_1;fork = true}
	else if (FLOOR = 11){rm = fork_2;fork = true}
	else if ((FLOOR+1) % 5 = 0 && shop == 0){rm = room4_shop}
	else
		{
		var i = irandom(ds_list_size(fl[FLOOR,side])-1);
		rm = ds_list_find_value(fl[FLOOR,side],i)
		}*/
		if ((FLOOR+1) % 5 = 0 && shop == 0){rm = room4_shop}
		else
			{
				rm = choose(rm_s1_arena,rm_s1_arena_2,rm_s1_stairs,rm_s1_stairs_2);
			}
	changeMusic(msc_between,0.05,0.2);
	room_goto(rm);
	}
	