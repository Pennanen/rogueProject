/// @description
/*
*/
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check(ord("S"));

onGround = collision_rectangle(x-15,y+15,x+15,y+17,obj_solid,true,0);
if (onGround){doubleJumped = false}