/// @description reload end
/*
*/

if (reloadIndex < 11)
	{
	reloadIndex++;	
	alarm[0] = 1;
	}
	else
	{
	canFire = true;
	reloadIndex = 0;
	shotsAvailable = musketSHOTS;
	}

