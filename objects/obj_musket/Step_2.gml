/// @description
/*
*/
if (stabbing)
	{
	obj_player.hSpd = lengthdir_x(stabForce,stabDir);
	obj_player.vSpd = lengthdir_y(stabForce,stabDir);
	}
if (canStabDamage)
{
	instance_create_depth(obj_player.x,obj_player.y,obj_player.depth+1,obj_player_trail);
	var len = 70*side/2;
	var tipx = x+lengthdir_x(len,dir*sign(side));
	var tipy = y+lengthdir_y(len,dir*sign(side));
	inst = collision_line(x,y,tipx,tipy,obj_enemy_1,1,true);
		if (instance_exists(inst))
			{
			if(obj_enemy_1.stabbed = false){inst.stabbed = true;inst.hp-=stabDamage;canStabDamage = false;alarm[2]=stabCooldownSteps};
			}
x += ((obj_player.x+side*7+lengthdir_x(len,dir))-x)*0.4;
y = obj_player.y;
}
else
{
x += ((obj_player.x+side*7)-x)*0.4;
y = obj_player.y;
}
if (reloading)
	{
	if (place_meeting(x,y,obj_enemy_1))
		{
		inst = instance_place(x,y,obj_enemy_1);
		if (instance_exists(inst))
			{
			var hitDire = point_direction(x,y,inst.x,inst.y-30);
			var hitForce = 10;
			inst.hSpd += lengthdir_x(hitForce,hitDire);
			inst.vSpd += lengthdir_y(hitForce,hitDire);
			}
			
		}
	if (reloadSpd < 22)reloadSpd+=4;
	if (reloadDir > 390){alarm[0] = 1;reloading = false;reloadIndex++;}
	if (reloadIndex < 5){reloadIndex+=0.5}
	}
reloadDir+=reloadSpd;
if (canFire)
	{
	if (reloadSpd > 0){reloadSpd-=4}else{reloadSpd = 0}
	if (reloadDir > 355 && reloadDir < 365) {reloadDir = 0;recoverSpd = 0;}
	else if (reloadDir > 360) {reloadDir-=recoverSpd;recoverSpd+=0.5;}
	sprite_index = spr_musket;
	if (BAYONET){image_index = 1}else{image_index = 0;}
	}
	else
	{
	if (!reloading){if (reloadDir > 360) {reloadDir+=(360-reloadDir)*0.1}}
	if (BAYONET){sprite_index = spr_musket_reloading_bayonet;}else{sprite_index = spr_musket_reloading;}
	image_index = reloadIndex;
	}