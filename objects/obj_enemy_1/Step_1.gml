/// @description
/*
*/
if (!awake && obj_player.y > y-32 && awakening = false){awakening = true;alarm[0] = awakeTime};

else if (awakening)
	{
	if (hpAlpha < 1)hpAlpha+=HpAlphaIncrement;
	}
	
	vSpd+=grav;
	
	
	if (hp <= 0){instance_destroy();}
	
	
	onGround = collision_line(x,y,x,y+sprite_height/2+2,obj_solid,0,true);