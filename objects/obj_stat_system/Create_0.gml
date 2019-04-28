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

manaIndex1 = 5;
manaIndex2 = 5;
manaIndex3 = 5;
manaIndex4 = 5;

manaIndex5 = 5;
manaIndex6 = 5;
manaIndex7 = 5;
manaIndex8 = 5;


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