/// @description
/*
*/
maxHp = 18+DIFFICULTY*2;
hp = maxHp;
vSpd = 0;
hSpd = 0;
hSpdMax = 12;
grav = 1;
awake = false;
stabbed = false;
hAcc = 0.35;
canImpale = false; // This is elite and cannot be impaled
mass = 5;
spinDir = 0;

spriteIndex = spr_spinner;
imageIndex = 1;
onGround = false;
damage = 1;
knockback = 15;
scale = 2;
depth = -5;