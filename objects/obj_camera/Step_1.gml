/// @description
/*
*/

targetx = room_width/2+(obj_player.x-room_width/2)/2;
if (obj_player.y > 0 && obj_player.y < room_height)
	{
	targety = room_height/2+(obj_player.y-room_height/2)/2;
	}
	else
	{
	targety = room_height/2+(obj_player.y-room_height/2)/1.4;
	}

camx += (targetx-camx)*0.1;
camy += (targety-camy)*0.05;

camera_set_view_pos(view_camera[0],camx-camw/2,camy-camh/2);