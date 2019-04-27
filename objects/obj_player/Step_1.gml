/// @description
/*
*/
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUpHold = keyboard_check(ord("W")) || keyboard_check(vk_space);
keyUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
keyDown = keyboard_check(ord("S"));

onGround = collision_rectangle(x-15,y+15,x+15,y+23,obj_solid,true,0);
if (onGround){doubleJumped = false;jumpSave =3;}
if (jumpSave = 3 && !onGround) {alarm[0]=15;jumpSave = 2};

// Collect items
col = collision_circle_list(x,y,10,obj_collectible_item,0,0,colList,true);
if (col > 0 && colList[|0].item != noone && keyboard_check_pressed(ord("F")))
{
	for(i=0;i<obj_item_handler.inventorySize;i++)
	{
		if (instance_exists(colList[|0].item)){colList[|0].item.amount++;instance_destroy(colList[|0]);break;}
		if (obj_item_handler.invslot[i].item == noone){collectActiveItem(colList[|0].item,obj_item_handler.invslot[i]);instance_destroy(colList[|0]);break;}
		else{}
	}
}