/// @description
/*
*/
maxHp = 7+DIFFICULTY*2;
hp = maxHp;
vSpd = 0;
hSpd = 0;
hSpdMax = 22;
grav = 1;
awake = false;
stabbed = false;
hAcc = 0.2;
canImpale = true;
spinDir = 0;
mass = 1.2;
spriteIndex = spr_spinner;
imageIndex = 0;
onGround = false;

damage = 0.5;
knockback = 15;
depth = -59;
smacked = false;
rarity = 1;
hpAlpha = 0;
HpAlphaIncrement = 0.1;
awakeTime = 15; // smaller than 10 leaves hpAlpha too low
awakening = false;

stabThreshold = 22;
breakFree = 0;

name = "Spinner"
flying = false;