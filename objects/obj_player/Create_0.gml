/// @description
/*
*/
colList = ds_list_create();
grav = 0.7;
inWater =false;

vSpd = 0;

baseSpdMax = 4;
hSpd = 0;
hSpdMax = baseSpdMax+playerSPEED;
hSpdResistance = 1;
maxFallSpd = 32;
maxRiseSpd = 24;
jumpSave = 3; // Save jump, start counter, dont save jump 3 - 2 - 1
maxDamp = 0.8;
hAcc = 1.25;
jumpSpd = 12.9;
doubleJumped = false;
aDamp = 0.2;
gDamp = 0.8;

playerPause = false;
onGround = false;
if (room != room_chunkRoom)
{
instance_create_depth(x,y,depth-1,obj_musket);
instance_create_depth(x,y,depth-1,obj_camera);
}
duck = false;

//Keys
keyLeft = false;
keyRight = false;
keyUp = false;
keyUpHold = false;
keyDown = false;

// Animation system
imageScale = 2;
idleImage = spr_player_idle_32;
runImage = spr_player_run;
jumpImage1 = spr_player_jump_2;
jumpImage2 = spr_player_jump;
duckImage = spr_player_duck
currentImage = idleImage;
animationIndex = 0;
animationSpeed = 0.5;
image_speed = 0;