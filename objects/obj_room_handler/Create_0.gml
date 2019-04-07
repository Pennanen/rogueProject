/// @description
/*
*/
randomize();
bottomLine = 3500;
topLine = -1700;
globalvar FLOOR, DIFFICULTY;
FLOOR = -1;
DIFFICULTY = 0;
global.wastedDiamonds = 0;
rooms = ds_list_create();
ds_list_add(rooms,room0,room1,room2,room3);
audio_play_sound(msc_shop,1,1);