/// @description
/*
*/
if (shaking)
	{
	if (shakeDirection == -1)
		{
			var dir = irandom(360);
			shakeX += lengthdir_x(shakePower,dir);
			shakeY += lengthdir_y(shakePower,dir);
		}
		else
		{
			var dir = shakeDirection;
			shakeX += lengthdir_x(shakePower,dir);
			shakeY += lengthdir_y(shakePower,dir);
		}
	}
	else
	{
	if (shakeX != 0)shakeX += (0-shakeX)*0.1;	
	if (shakeY != 0)shakeY += (0-shakeY)*0.1;	
	}


//targetx = room_width/2+(obj_player.x-room_width/2)/1.6;

if (obj_player.y > 0 && obj_player.y < room_height)
	{
	var dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	var len = 1+point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)/15;
	targetx = obj_player.x+lengthdir_x(len,dir);
	targety = obj_player.y+lengthdir_y(len,dir)-48;
	}
	else
	{
	var dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	var len = 1+point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)/55;
	targetx = obj_player.x+lengthdir_x(len,dir);
	targety = room_height/2+(obj_player.y-room_height/2)/1.425+lengthdir_y(len,dir);;
	}

camx += (targetx-camx)*0.1;
camy += (targety-camy)*0.05;
camx = camx+shakeX;
camy = camy+shakeY;
camera_set_view_pos(view_camera[0],camx-camw/2,camy-camh/2);
bg_x = camx/10;
bg_y = camy/10;
layer_x(bg,bg_x);
layer_y(bg,bg_y);