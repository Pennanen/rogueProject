/// @description
/*
*/
randomize();
bottomLine = 1500;
topLine = -1700;
globalvar FLOOR, DIFFICULTY;
FLOOR = -1;
DIFFICULTY = 0;
global.wastedDiamonds = 0;
global.wastedManaCells = 0;
rooms = ds_list_create();
ds_list_add(rooms,room_arena);
globalvar music,sectionMusic;
music = msc_1;
sectionMusic = music;
audio_play_sound(music,1,1);
maxGain = 0.5;
