/// @description
/*
*/
camw = camera_get_view_width(view_camera[0]);
camh = camera_get_view_height(view_camera[0]);

x = room_width/2+(obj_player.x-room_width/2)/1.6;
y = obj_player.y;
targetx = x;
targety = y;
camx = x;
camy = y;
bg = layer_get_id("Background");