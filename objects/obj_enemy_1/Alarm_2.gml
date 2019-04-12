/// @description
/*
*/
var tipx = obj_musket.tipXpos;
var tipy = obj_musket.tipYpos;

if (point_distance(x,y,tipx,tipy)<=stabThreshold)
{
breakFree = 0;
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
}