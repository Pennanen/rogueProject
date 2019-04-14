/// @description
/*
*/
ww = 1280;
hh = 720;
camera_set_view_size(view_camera[0],ww,hh)

camw = camera_get_view_width(view_camera[0]);
camh = camera_get_view_height(view_camera[0]);
x = obj_player.x;
y = obj_player.y;
targetx = x;
targety = y;
camx = x;
camy = y;

shakeX = 0;
shakeY = 0;
shaking = false;
shakePower = 0;
shakeDirection = 0;
bg = layer_get_id("Background");