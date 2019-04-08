/// @description
/*
*/
var xx = camera_get_view_x(view_camera[0])+44;
var yy = camera_get_view_y(view_camera[0])+45;
if (ds_list_size(collectedItems)>0)
	{
	for(i=0;i<ds_list_size(collectedItems);i++)
		{
		item = ds_list_find_value(collectedItems,i);
		item.x = (xx+i*50);
		item.y = yy;
		}
	}