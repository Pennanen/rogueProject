/// @description
/*
*/
depth = -400;

globalvar playerHP, playerMAXHP, playerDAMAGE,playerSPEED;
// HP
playerMAXHP = 5;
playerHP = playerMAXHP;
canHurt = true;
hurtTime = 60;
hurtIndex = 0;

// DAMAGE
playerDAMAGE = 1;
// SPEED
playerSPEED = 1;
// BAYONET Upgrade
globalvar BAYONET;
BAYONET = false;