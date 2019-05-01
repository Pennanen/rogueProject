/// @description
/*
*/
randomize();
bottomLine = room_height+10;
global.Tilemap_Wall = layer_tilemap_get_id(layer_get_id("Tiles_1"));
globalvar FLOOR, DIFFICULTY;
FLOOR = -1;
DIFFICULTY = 0;
global.wastedDiamonds = 0;
global.wastedKeys = 0;
global.wastedManaCells = 0;

wastedItems = ds_list_create();

loadRooms();

globalvar music,sectionMusic, audioGlobalGain;
music = msc_1;
audioGlobalGain = 0;	// VOLUME
sectionMusic = music;
audio_play_sound(music,1,1);
audio_sound_gain(music,audioGlobalGain,0);
maxGain = 0.5;

fork = false;

side = 0;
fl[0,0] = section1;
fl[1,0] = section1;
fl[2,0] = section1;
fl[3,0] = section1;
fl[4,0] = section1;

fl[5,0] = section2left;
fl[6,0] = section2left;
fl[7,0] = section2left;
fl[8,0] = section2left;
fl[9,0] = section2left;

fl[5,1] = section2right;
fl[6,1] = section2right;
fl[7,1] = section2right;
fl[8,1] = section2right;
fl[9,1] = section2right;

fl[10,0] = section3left;
fl[11,0] = section3left;
fl[12,0] = section3left;
fl[13,0] = section3left;
fl[14,0] = section3left;

fl[10,1] = section3right;
fl[11,1] = section3right;
fl[12,1] = section3right;
fl[13,1] = section3right;
fl[14,1] = section3right;

