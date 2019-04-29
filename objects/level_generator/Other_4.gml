/// @description
/*
*/
if (room = global.rm)
{
for(i=0;i<index;i++)
	{
	if (instance_exists(instData[i,0]))
		{
		instData[i,0].image_xscale = instData[i,1]; // scale x;
		instData[i,0].image_yscale = instData[i,2]; // scale y;
		instData[i,0].x = instData[i,3]; // scale x;
		instData[i,0].y = instData[i,4]; // scale y;
		}
	}
	

var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
for(var tilePlaceY = 0;tilePlaceY<levelH*chunkH;tilePlaceY++)
{
	for(var tilePlaceX=0;tilePlaceX<levelW*chunkW;tilePlaceX++)
	{
	var data = ds_grid_get(tileDataGrid,tilePlaceX,tilePlaceY);
	tilemap_set_at_pixel(map_id,data,tilePlaceX*tileW,tilePlaceY*tileW);
	}
}
ds_grid_destroy(tileDataGrid);
ds_list_destroy(acceptedObjects);
instance_destroy();
}
else
{
//if (ds_exists(tileDataGrid,ds_type_grid))ds_grid_destroy(tileDataGrid);
//instance_destroy();	
}