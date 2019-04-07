/// @description
/*
*/
depth = -400;

globalvar playerHP, playerMAXHP, playerDAMAGE,playerSPEED;
// HP
playerMAXHP = 4;
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
musketSHOTS = 4;
musketKNOCKBACK = 5;
bulletSPEED = 0;
globalvar playerDOUBLEJUMP;
playerDOUBLEJUMP = false;
