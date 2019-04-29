/// @description
/*
*/

tilemap = global.Tilemap_Wall;
inWater = false;
pause = false;
name = "parent"
maxHp = 4+DIFFICULTY*2;
hp = maxHp;
vSpd = 0;
hSpd = 0;
hSpdMax = 22;
grav = 1;
awake = false;
stabbed = false;
hAcc = 0.3;
canImpale = true;
damage = 0.5;
knockback = 15;
mass = 1;

stabThreshold = 20;

rarity = 1;
hpAlpha = 0;
HpAlphaIncrement = 0.1;
awakeTime = 15; // smaller than 10 leaves hpAlpha too low
awakening = false;
smacked = false;
onGround = false;
depth = -48;
breakFree = 0;
flying = false;

hpbar = instance_create_depth(x,y,0,obj_hp_bar);
hpbar.target = id;

awakeDistance = 100;
