/// @description
/*
*/
//Behaviour
if (awake && !stabbed && !pause)
{
if (changePos = 1)
	{
	if (hp != maxHp && multi > 1) {multi = 1}
	//find new pos
	if (multi = 1){var diste = 16}
	else{var diste = choose(16,16,16,32,32,32)*multi;}
		var tryDir = irandom_range(30,150);
		//tryDir += irandom_range(-90,90);
		var tryX = obj_player.x+lengthdir_x(diste,tryDir);
		var tryY = obj_player.y+lengthdir_y(diste,tryDir);
		
		nonValid = collision_circle(tryX,tryY,16,obj_solid,0,0);
		
		if (!nonValid)
			{
			targetX = tryX;
			targetY = tryY;
			changePos = 2;
			alarm[3] = 120;
			}
			else
			{
			changePos = 1;
			multi = choose(1,1,1,2,3,3);
			}
	}
else if (changePos = 2)
	{
	hSpd += clamp(((targetX-x)*(4-multi)*0.06),-1,1)*0.2;
	vSpd += clamp(((targetY-y)*(4-multi)*0.06),-1,1)*0.2;
	if(point_distance(x,y,targetX,targetY)<32){changePos = 0;alarm[3] = 15;}
	}
else if (changePos = 0)
	{
	hSpd += (0-hSpd)*0.05;
	vSpd += (0-vSpd)*0.05;	
	}
}
else if (stabbed){changePos = 1}

if (!stabbed)
{
imageIndex+=0.2*(4-multi);
spinDir = -(hSpd*4);
if (hSpd != 0 && image_xscale != sign(hSpd))
	{
	image_xscale += (sign(hSpd)-image_xscale)*0.3;
	}
}