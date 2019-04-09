/// @description
/*
*/
var half = string(playerHP % 1);
var xx = camera_get_view_x(view_camera[0])+hudAnchorX/2;
var hpX = xx-(playerMAXHP-1)*50/2;
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-60;
for(i=0;i<playerMAXHP;++i)
	{
	if (i = ceil(playerHP)-1)
		{
		if (half == "0"){draw_sprite_ext(spr_player_hp,0,hpX+i*50,yy,1.5,2,0,c_white,1);}
		else if (half == "0.50") {draw_sprite_ext(spr_player_hp,1,hpX+i*50,yy,1.5,2,0,c_white,1);}
		}
	else if (i < ceil(playerHP)-1){draw_sprite_ext(spr_player_hp,0,hpX+i*50,yy,1.5,2,0,c_white,1);	}
	else {draw_sprite_ext(spr_player_hp,2,hpX+i*50,yy,1.5,2,0,c_white,1);	}	
	}
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	//draw_text(xx,yy-10,half);