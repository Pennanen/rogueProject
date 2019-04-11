/// @description
/*
*/

//Behaviour
if (awake && !stabbed)
{
if (obj_player.x > x && hSpd < hSpdMax){hSpd += hAcc}
if (obj_player.x < x && hSpd > -hSpdMax){hSpd -= hAcc}
}
