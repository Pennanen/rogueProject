/// @description
/*
*/
//Behaviour
if (awake && !stabbed && !pause)
{
if (obj_player.x > x && hSpd < hSpdMax){hSpd += hAcc}
if (obj_player.x < x && hSpd > -hSpdMax){hSpd -= hAcc}
spinDir += -hSpd;
if (inWater){spinDir+=-5*sign(obj_player.x-x);}
spinDir += -7*sign(obj_player.x-x);
if ((place_meeting(x+24,y+4,obj_solid)&& obj_player.x > x )||( tile_meeting(x+24,y+6,tilemap) && obj_player.x > x)){vSpd = -11};
if ((place_meeting(x-24,y+4,obj_solid)&& obj_player.x < x )||( tile_meeting(x-24,y+6,tilemap) && obj_player.x < x)){vSpd = -11};
if(onGround && !smacked){vSpd -= (choose(0,0,0,0,0,0,1)+abs((obj_player.y-y))/24)*(room_width-distance_to_point(obj_player.x,obj_player.y))/1000;}

image_xscale += (sign(obj_player.x-x)-image_xscale)*0.1;

}
