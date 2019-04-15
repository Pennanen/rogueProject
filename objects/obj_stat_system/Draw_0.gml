/// @description
/*
*/
var half = string(playerHP % 1);
var xx = camera_get_view_x(view_camera[0])+hudAnchorX/2;
var hpX = xx-(playerMAXHP-1)*50/2;
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90;
for(i=1;i<=playerMAXHP;i++)
	{
	if (i = ceil(playerHP))
		{
		if (half == "0"){draw_sprite_ext(spr_player_hp,0,hpX+(i-1)*50,yy,1.5,2,0,c_white,1);}
		else if (half == "0.50") {draw_sprite_ext(spr_player_hp,1,hpX+(i-1)*50,yy,1.5,2,0,c_white,1);}
		}
	else if (i < ceil(playerHP)){draw_sprite_ext(spr_player_hp,0,hpX+(i-1)*50,yy,1.5,2,0,c_white,1);	}
	else {draw_sprite_ext(spr_player_hp,2,hpX+(i-1)*50,yy,1.5,2,0,c_white,1);	}	
	}
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	//draw_text(xx,yy-10,half);

draw_sprite_ext(spr_player_mana,manaIndex1,xx-60,yy+21,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex2,xx-20,yy+21,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex3,xx+20,yy+21,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex4,xx+60,yy+21,1.5,1.5,0,c_white,1);