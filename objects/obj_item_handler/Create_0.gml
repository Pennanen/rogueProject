/// @description
/*
*/
depth =-499
diamonds = 0;
commonPool = ds_list_create();
rarePool = ds_list_create();
uRarePool = ds_list_create();

collectedItems = ds_list_create();
actives = 0;
ds_list_add(commonPool,item_orange_syringe,item_orange_syringe);
ds_list_add(commonPool,item_yellow_syringe,item_yellow_syringe);
ds_list_add(commonPool,item_red_syringe,item_red_syringe);
ds_list_shuffle(commonPool);


ds_list_add(rarePool,item_black_syringe,item_white_syringe,item_double_up,
item_gunpowder,item_gelatin_ball,item_gelatin_cube,item_boots,item_bayonet);
ds_list_shuffle(rarePool);

ds_list_add(uRarePool,item_rainbow_syringe);
ds_list_shuffle(uRarePool);

viewx = camera_get_view_x(view_camera[0]);
viewy = camera_get_view_y(view_camera[0]);

vieww = camera_get_view_width(view_camera[0]);
viewh = camera_get_view_height(view_camera[0]);

slot[0] = instance_create_depth(x,y,-500,obj_slot);
slot[0].slotKey = mb_left;
slot[0].keyIndex = 0;
slot[1] = instance_create_depth(x,y,-500,obj_slot);
slot[1].slotKey = mb_right;
slot[1].keyIndex = 1;
slot[2] = instance_create_depth(x,y,-500,obj_slot);
slot[2].slotKey = ord("Q");
slot[2].keyIndex = 2;
slot[3] = instance_create_depth(x,y,-500,obj_slot);
slot[3].slotKey = ord("E");
slot[3].keyIndex = 3;

activex[0] = 0;
activey[0] = 0;

activex[1] = 0;
activey[1] = 0;

activex[2] = 0;
activey[2] = 0;

activex[3] = 0;
activey[3] = 0;

alarm[0] = 1;