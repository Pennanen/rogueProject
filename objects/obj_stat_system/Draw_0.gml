/// @description
/*
*/
var xx = camera_get_view_x(view_camera[0])+50;
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-50;
for(i=0;i<playerMAXHP;i++)
	{
	if (i <= playerHP-1){draw_sprite_ext(spr_player_hp,0,xx+i*40,yy,1.5,1.5,0,c_white,1);	}
	else {draw_sprite_ext(spr_player_hp,0,xx+i*40,yy,1.5,1.5,15,c_gray,0.9);	}	
	}