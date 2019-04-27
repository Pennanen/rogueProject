/// @description
/*
*/
if (obj_player.playerPause = false)
{
if (stabbing)
	{
	obj_player.hSpd = lengthdir_x(stabDashForce,stabDir);
	obj_player.vSpd = lengthdir_y(stabDashForce,stabDir);
	}
	

if (canStabDamage)
	{
	instance_create_depth(obj_player.x,obj_player.y,obj_player.depth+1,obj_player_trail);
	var len = 32*sign(side);
	inst = collision_line(obj_player.x,obj_player.y,tipXpos,tipYpos,obj_enemy_1,1,true);
	inst2 = collision_circle(tipXpos,tipYpos,5,obj_enemy_1,1,true);
	if (instance_exists(inst))
		{
			if(inst.stabbed = false){impaledEnemy = inst;impale = true;inst.stabbed = true;inst.hp-=stabDamage;canStabDamage = false;alarm[2]=stabCooldownSteps};
		}
	else if (instance_exists(inst2))
		{
			if(inst2.stabbed = false){impaledEnemy = inst2;impale = true;inst2.stabbed = true;inst2.hp-=stabDamage;canStabDamage = false;alarm[2]=stabCooldownSteps};
		}
	x += ((obj_player.x+side*6+lengthdir_x(len,dir))-x)*0.4;
	y = obj_player.y;
	}
else if (!impale)
	{
	var	kickPowerx = lengthdir_x(reloadSpd*1*side/2,dir);
	var	kickPowery = lengthdir_y(reloadSpd*1*side/2,dir);
	x += ((obj_player.x+side*8)-x)*0.4+kickPowerx;
	if (obj_player.duck){y = obj_player.y+3+kickPowery*3;}
	else{y = obj_player.y-3+kickPowery*3;}
	}
	


if (reloading)
	{
	if (place_meeting(x,y,obj_enemy_1))
		{
		inst = instance_place(x,y,obj_enemy_1);
		if (instance_exists(inst))
			{
			if (inst.smacked = false)
			{
			inst.smacked = true;
			if (BAYONET){inst.hp-=bayonetDmg};
			var hitDire = point_direction(x,y,inst.x,inst.y-10);
			inst.hSpd/=2;
			var hitForce = smackForce/inst.mass;
			inst.hSpd = lengthdir_x(hitForce,hitDire);
			inst.vSpd = lengthdir_y(hitForce*3,hitDire);
			inst.alarm[1] = 30;
			}
			}
			
		}
	if (reloadSpd < 4+reloadSpeedMulti*4)reloadSpd+=4;
	if (reloadDir > 360){alarm[0] = 1;reloading = false;reloadIndex++;}
	if (reloadIndex < 8){reloadIndex+=0.5}
	}
else if (kick)
	{
	if (reloadSpd < 15)reloadSpd+=2;
	if (reloadDir > 370){alarm[3] = 1;kick=false;reloadIndex++;}
	if (reloadIndex < 2){reloadIndex+=0.5}
	}
	
reloadDir+=reloadSpd;
if (canFire)
	{
	if (reloadSpd > 0.3){reloadSpd+=(0-reloadSpd)*0.5}else{reloadSpd = 0}
	if (reloadDir > 340 && reloadDir < 380) {recoverSpd = 0;reloadDir = 0;}
	else if (reloadDir > 360) {recoverSpd+=0.5;reloadDir-=recoverSpd;}
	sprite_index = spr_musket;
	if (BAYONET){image_index = 1}else{image_index = 0;}
	}
	else
	{
	if (!reloading){if (reloadDir > 360) {reloadDir+=(360-reloadDir)*0.05}}
	else if (!reloading && !kick && reloadIndex <= 4){if (reloadDir > 0) {reloadDir+=(0-reloadDir)*0.1}}
	if (BAYONET){sprite_index = spr_musket_reloading_bayonet;}else{sprite_index = spr_musket_reloading;}
	image_index = reloadIndex;
	}
}