/// @description
/*
*/
depth = -400;
hudAnchorX = camera_get_view_width(view_camera[0]);
globalvar playerHP, playerMAXHP, playerDAMAGE,playerSPEED,manaGAIN,playerDEAD;
// HP
playerDEAD = false;
playerMAXHP = 1;
playerHP = playerMAXHP;
manaGAIN = 1;
canHurt = true;
hurtTime = 60;
hurtIndex = 0;
manaReal = 40;

manaIndex1 = 10;
manaIndex2 = 10;
manaIndex3 = 10;
manaIndex4 = 10;
canFill = true;
manaMAX = 40;
manaFill = 0;
// DAMAGE
playerDAMAGE = 1;
// SPEED
playerSPEED = 1;
// BAYONET Upgrade
globalvar BAYONET,musketKNOCKBACK,bulletSPEED,musketSHOTS,bulletsPerShot;
BAYONET = false;
bulletsPerShot = 1;
musketSHOTS = 1;
musketKNOCKBACK = 1;
bulletSPEED = 1;
globalvar playerDOUBLEJUMP;
playerDOUBLEJUMP = false;