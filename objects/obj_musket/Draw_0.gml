
var hand2dire = 180+point_direction(x,y,obj_player.x,obj_player.y-6);
draw_sprite_ext(spr_hand,0,obj_player.x+(tipXpos-obj_player.x)/2,obj_player.y+(tipYpos-obj_player.y)/2,1,1,hand2dire,c_white,1);

draw_sprite_ext(sprite_index,image_index,x,y+obj_player.animationIndex/8,image_xscale,image_yscale,image_angle+reloadDir*sign(image_xscale),c_white,1);


	//draw_circle(tipXpos,tipYpos,10,0);
	var hand1dire = 180+point_direction(x,y,obj_player.x,obj_player.y-6);
	draw_sprite_ext(spr_hand,0,x,y,1,1,hand1dire,c_white,1);