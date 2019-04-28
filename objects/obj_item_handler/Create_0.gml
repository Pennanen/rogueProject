/// @description
/*
*/
depth =-499
diamonds = 0;
keys = 1;
commonPool = ds_list_create();
rarePool = ds_list_create();
uRarePool = ds_list_create();
shopPoolMinor = ds_list_create();
shopPoolMajor = ds_list_create();

collectedItems = ds_list_create();
actives = 0;
// COMMON
ds_list_add(commonPool,item_yellow_syringe,item_blue_syringe,item_red_syringe);
ds_list_shuffle(commonPool);
// RARE
ds_list_add(rarePool,item_black_syringe,item_white_syringe,item_double_up,
item_gunpowder,item_gelatin_ball,item_gelatin_cube,item_boots,item_double_barrel);
ds_list_shuffle(rarePool);

// ULTRA RARE
ds_list_add(uRarePool,item_triple_barrel,item_rainbow_syringe);
ds_list_shuffle(uRarePool);

// SHOP
ds_list_add(shopPoolMinor,item_bomb,item_apple);
ds_list_add(shopPoolMajor,item_bayonet,item_yellow_syringe,item_blue_syringe,item_red_syringe);
ds_list_shuffle(shopPoolMinor);
ds_list_shuffle(shopPoolMajor);

// Backups of full pools
buCommon = ds_list_create(); ds_list_copy(buCommon,commonPool);
buRare = ds_list_create(); ds_list_copy(buRare,rarePool);
buURare = ds_list_create(); ds_list_copy(buURare,uRarePool);
buMinorShop = ds_list_create();ds_list_copy(buMinorShop,shopPoolMinor);
buMajorShop = ds_list_create();ds_list_copy(buMajorShop,shopPoolMajor);


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

inventorySize = 3;
for(i=0;i<inventorySize;i++)
{
invslot[i] = instance_create_depth(x,y,-500,obj_inv_slot);	
}

//Alusta active positiot
for(i=0;i<4;i++)
{
activex[i] = 0;
activey[i] = 0;
}

// Alusta inventory positiot
for(i=0;i<inventorySize;i++)
{
invx[i] = 0;
invy[i] = 0;
}


alarm[0] = 1;