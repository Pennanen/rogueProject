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