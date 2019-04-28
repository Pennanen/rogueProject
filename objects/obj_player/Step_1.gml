/// @description
/*
*/
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUpHold = keyboard_check(ord("W")) || keyboard_check(vk_space);
keyUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
keyDown = keyboard_check(ord("S"));

onGround = collision_rectangle(x-15,y+15,x+15,y+22,obj_solid,true,0);
inWater = collision_rectangle(x-15,y-15,x+15,y+1,obj_water,true,0);

if (inWater){hSpdResistance = 1.5;}else{hSpdResistance = 1;}

if (onGround){doubleJumped = false;jumpSave =3;}
if (jumpSave = 3 && !onGround) {alarm[0]=15;jumpSave = 2};


// Collect items
col = collision_circle_list(x,y,10,obj_collectible_item,0,0,colList,true);
if (col > 0 && colList[|0].item != noone && keyboard_check_pressed(ord("F")))
{
	if(collectActiveItem(colList[|0].item)){instance_destroy(obj_player.colList[|0]);};
}

// buy items
col = collision_circle_list(x,y,10,obj_buyable_item,0,0,colList,true);
if (col > 0 && colList[|0].item != noone && keyboard_check_pressed(ord("F")) && obj_item_handler.diamonds >= colList[|0].cost)
{
	if (collectActiveItem(colList[|0].item)){obj_item_handler.diamonds-=colList[|0].cost;instance_destroy(obj_player.colList[|0]);};
}