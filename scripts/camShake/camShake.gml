var p = argument0;
var d = argument1;
var l = argument2;
if (obj_camera.shaking)
	{
	obj_camera.alarm[0] = l;
	obj_camera.shakePower += p;
	obj_camera.shakeDirection += d;
	}
	else
	{
	obj_camera.alarm[0] = l;
	obj_camera.shaking = true;
	obj_camera.shakePower = p;
	obj_camera.shakeDirection = d;
	}