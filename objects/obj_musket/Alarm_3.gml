/// @description kick end
/*
*/
if (reloadIndex > 0)
	{
	reloadIndex--;	
	alarm[3] = 1;
	}
	else
	{
	canFire = true;
	reloadIndex = 0;
	}