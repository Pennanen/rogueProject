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
		if (half == "0"){draw_sprite_ext(spr_player_hp,0,hpX+(i-1)*51,yy,1.5,2,0,c_white,1);}
		else if (half == "0.50") {draw_sprite_ext(spr_player_hp,1,hpX+(i-1)*51,yy,1.5,2,0,c_white,1);}
		}
	else if (i < ceil(playerHP)){draw_sprite_ext(spr_player_hp,0,hpX+(i-1)*51,yy,1.5,2,0,c_white,1);	}
	else {draw_sprite_ext(spr_player_hp,2,hpX+(i-1)*51,yy,1.5,2,0,c_white,1);	}	
	}
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	//draw_text(xx,yy-10,half);
var m = 26;
draw_sprite_ext(spr_player_mana,manaIndex1,xx-m/2-m*3,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex2,xx-m/2-m*2,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex3,xx-m/2-m*1,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex4,xx-m/2,yy+16,1,1,0,c_white,1);

draw_sprite_ext(spr_player_mana,manaIndex5,xx+m/2,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex6,xx+m/2+m*1,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex7,xx+m/2+m*2,yy+16,1,1,0,c_white,1);
draw_sprite_ext(spr_player_mana,manaIndex8,xx+m/2+m*3,yy+16,1,1,0,c_white,1);