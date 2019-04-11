/// @description
/*
*/

// Inherit the parent event
event_inherited();

active = true;
name = "Bayonet"
description = "Enables thrust attack for Main Weapon. And reloading does damage."
image_index = 4;
currentSlot = obj_item_handler.slot[1];
currentSlot.item = id;
cost = 10;