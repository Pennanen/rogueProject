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
if(onGround){vSpd -= choose(0,0,0,0,0,0,0,1,1,2,2);}
}
