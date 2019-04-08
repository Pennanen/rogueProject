/// @description
/*
*/
depth =-499
diamonds = 0;
commonPool = ds_list_create();
rarePool = ds_list_create();
uRarePool = ds_list_create();

collectedItems = ds_list_create();

ds_list_add(commonPool,item_orange_syringe,item_orange_syringe);
ds_list_add(commonPool,item_yellow_syringe,item_yellow_syringe);
ds_list_add(commonPool,item_red_syringe,item_red_syringe);
ds_list_shuffle(commonPool);


ds_list_add(rarePool,item_black_syringe,item_white_syringe,item_double_up,
item_gunpowder,item_gelatin_ball,item_gelatin_cube,item_boots,item_bayonet);
ds_list_shuffle(rarePool);

ds_list_add(uRarePool,item_rainbow_syringe);
ds_list_shuffle(uRarePool);