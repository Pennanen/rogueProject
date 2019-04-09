/// @description
/*
*/
depth = -400;
hudAnchorX = camera_get_view_width(view_camera[0]);
globalvar playerHP, playerMAXHP, playerDAMAGE,playerSPEED;
// HP
playerMAXHP = 2;
playerHP = playerMAXHP;
canHurt = true;
hurtTime = 60;
hurtIndex = 0;

// DAMAGE
playerDAMAGE = 1;
// SPEED
playerSPEED = 1;
// BAYONET Upgrade
globalvar BAYONET,musketKNOCKBACK,bulletSPEED,musketSHOTS;
BAYONET = false;
musketSHOTS = 1;
musketKNOCKBACK = 1;
bulletSPEED = 1;
globalvar playerDOUBLEJUMP;
playerDOUBLEJUMP = false;
