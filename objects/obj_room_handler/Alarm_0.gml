/// @description
/*
*/
if (FLOOR % 2 = 0 || FLOOR % 2 = 1)
	{
	instance_create_depth(obj_camera.camx,obj_camera.camy,-551,obj_upgrade_screen);
	}
	else
	{
	instance_create_depth(obj_camera.camx,obj_camera.camy,-551,obj_continue);
	}