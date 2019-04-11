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
mass = 2.5;
spinDir = 0;
smacked = false;
spriteIndex = spr_spinner;
imageIndex = 1;
onGround = false;
damage = 1;
knockback = 15;
scale = 2;
depth = -59;

rarity = 2;
hpAlpha = 0;
HpAlphaIncrement = 0.05;
awakeTime = 30; // smaller than 10 leaves hpAlpha too low
awakening = false;
stabThreshold = 40;