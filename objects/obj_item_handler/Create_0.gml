/// @description
/*
*/
depth =-499
diamonds = 0;
itemPool = ds_list_create();
collectedItems = ds_list_create();
ds_list_add(itemPool,item_orange_syringe,item_orange_syringe);
ds_list_add(itemPool,item_yellow_syringe,item_yellow_syringe);
ds_list_add(itemPool,item_red_syringe,item_red_syringe);

ds_list_add(itemPool,item_gunpowder,item_gelatin_ball,item_gelatin_cube,item_boots,item_bayonet);
ds_list_shuffle(itemPool);

