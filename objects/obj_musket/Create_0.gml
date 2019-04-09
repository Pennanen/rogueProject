/// @description
/*
*/
knockback = musketKNOCKBACK*1.5;

reloadSpeedMulti=4; // only cosmetic

reloading = false;
reloadSpd = 0;
stabbing = false;

stabForce = 24;
stabDashForce = 16;
smackForce = 23;

canStab = true;

stabDir = 0;
canStabDamage = false;
stabCooldownSteps = 60;

stabDamage = 1;
bayonetDmg = 0.5;//damage on reloading with bayonet
shotsAvailable = musketSHOTS;
canFire = true;
dir = 0;
kick = false;
image_yscale = 2;
image_xscale = 2;
reloadDir = 0;
reloadIndex = 0;
recoverSpd = 0;
side = 1;
if (BAYONET) image_index = 1;