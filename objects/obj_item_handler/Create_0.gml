/// @description
/*
*/
depth =-499
diamonds = 0;
itemPool = ds_list_create();
collectedItems = ds_list_create();
ds_list_add(itemPool,item_orange_syringe);
ds_list_add(itemPool,item_yellow_syringe);
ds_list_add(itemPool,item_red_syringe);

ds_list_add(itemPool,item_green_stuff,item_boots,item_bayonet);
ds_list_shuffle(itemPool);

