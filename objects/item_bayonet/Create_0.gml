/// @description
/*
*/

// Inherit the parent event
event_inherited();

active = true;
name = "Bayonet"
description = "Impale enemies with bayonet."
image_index = 4;
currentSlot = obj_item_handler.slot[1];
currentSlot.item = id;
cost = 10;
initialScale = 0.75;