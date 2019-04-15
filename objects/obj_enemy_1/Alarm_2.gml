/// @description
/*
*/
var tipx = obj_musket.tipXpos;
var tipy = obj_musket.tipYpos;

if (point_distance(x,y,tipx,tipy)<=stabThreshold)
{
breakFree = 0;
}
else if (point_distance(x,y,tipx,tipy)>=stabThreshold*3 && breakFree < 30)
{
breakFree = 30
alarm[2] = 1;
}
else if (breakFree < 30)
{
breakFree++;
alarm[2] = 1;
}
else 
{
stabbed = false;	
breakFree = 0;
			var len = 8;
			var dir = point_direction(obj_musket.x,obj_musket.y,x,y)
			hSpd = lengthdir_x(len,dir);
			vSpd = lengthdir_y(len,dir);
}