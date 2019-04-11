/// @description
/*
*/
grav = 0.7;

vSpd = 0;

baseSpdMax = 5;
hSpd = 0;
hSpdMax = baseSpdMax+playerSPEED;
jumpSave = 3; // Save jump, start counter, dont save jump 3 - 2 - 1
maxDamp = 0.8;
hAcc = 1.25;
jumpSpd = 7;
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
keyUpHold = false;
keyDown = false;
