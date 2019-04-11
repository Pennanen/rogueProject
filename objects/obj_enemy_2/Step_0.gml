/// @description
/*
*/
//Behaviour
if (awake && !stabbed)
{
if (obj_player.x > x && hSpd < hSpdMax){hSpd += hAcc}
if (obj_player.x < x && hSpd > -hSpdMax){hSpd -= hAcc}
spinDir += -hSpd/2;
spinDir += -15*sign(obj_player.x-x);
if(onGround && !smacked){vSpd -= choose(0,0,0,0,0,2,4)+abs((obj_player.y-y))/25;}
}
