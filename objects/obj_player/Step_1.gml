/// @description
/*
*/
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUpHold = keyboard_check(ord("W")) || keyboard_check(vk_space);
keyUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
keyDown = keyboard_check(ord("S"));


var t1 = tile_meeting(bbox_left,bbox_bottom+3,tilemap) & tile_index_mask;
var t2 = tile_meeting(bbox_right,bbox_bottom+3,tilemap) & tile_index_mask;
if (t1 != 0 || t2!=0 || collision_rectangle(x-15,y+15,x+15,y+22,obj_solid,true,0)) {onGround = true}
else if (onGround != false){onGround = false};

inWater = collision_rectangle(x-15,y-15,x+15,y+1,obj_water,true,0);

if (inWater){hSpdResistance = 1.5;}else{hSpdResistance = 1;}

if (onGround){doubleJumped = false;jumpSave =3;}
if ( jumpSave = 3 && !onGround) {alarm[0]=15;jumpSave = 2};

col = collision_circle_list(x,y,20,parent_interact,0,0,colList,true);

// Collect items
if (col > 0 && colList[|0].object_index = obj_collectible_item  && colList[|0].item != noone && keyboard_check_pressed(ord("F")))
{
	camShakeReal(2,5);
	if(collectActiveItem(colList[|0].item)){instance_destroy(obj_player.colList[|0]);};
}

// buy items
else if (col > 0 && colList[|0].object_index = obj_buyable_item && colList[|0].item != noone && keyboard_check_pressed(ord("F")) && obj_item_handler.diamonds >= colList[|0].cost)
{
	camShakeReal(2,15);
	if (collectActiveItem(colList[|0].item)){obj_item_handler.diamonds-=colList[|0].cost;instance_destroy(obj_player.colList[|0]);};
}

//chests
else if (col > 0 && colList[|0].object_index = obj_chest && !colList[|0].open  && keyboard_check_pressed(ord("F")) && obj_item_handler.keys >= colList[|0].cost)
{
	camShakeReal(2,25);
	colList[|0].open = true;
	obj_item_handler.keys--;
}