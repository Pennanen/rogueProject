/// @description
/*
*/
grav = 0.7;

vSpd = 0;

baseSpdMax = 5;
hSpd = 0;
hSpdMax = baseSpdMax+playerSPEED;

maxDamp = 0.8;
hAcc = 1.25;
jumpSpd = 20;
doubleJumped = false;

aDamp = 0.2;
gDamp = 0.8;

playerPause = false;
onGround = false;

instance_create_depth(x,y,depth-1,obj_musket);
instance_create_depth(x,y,depth-1,obj_camera);

//Keys
keyLeft = false;
keyRight = false;
keyUp = false;
keyDown = false;