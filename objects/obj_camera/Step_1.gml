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
	if (shakeX != 0)shakeX += (0-shakeX)*0.15;	
	if (shakeY != 0)shakeY += (0-shakeY)*0.15;	
	}


//targetx = room_width/2+(obj_player.x-room_width/2)/1.6;

	var dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	var len = 1+point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y)/55;
	targetx = obj_player.x+lengthdir_x(len,dir);
	targety = obj_player.y+abs(obj_player.vSpd)*obj_player.vSpd*0.15+lengthdir_y(len,dir)-48;


camx += (targetx-camx)*0.1;
camy += (targety-camy)*0.1;
camx = camx+shakeX;
camy = camy+shakeY;
camera_set_view_pos(view_camera[0],camx-camw/2,camy-camh/2);
bg_x = camx/10;
bg_y = camy/10;
layer_x(bg,bg_x);
layer_y(bg,bg_y);