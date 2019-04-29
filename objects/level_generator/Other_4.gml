/// @description
/*
*/
if (room = global.rm)
{
global.Layer_Wall = layer_create(-50,"Tiles_1");
global.Tilemap_Wall = layer_tilemap_create(global.Layer_Wall, 0, 0, tileset1, levelW*chunkW, levelH*chunkH);
for(i=0;i<index;i++)
	{
	if (instance_exists(instData[i,0]))
		{
		instData[i,0].image_xscale = instData[i,1]; // scale x;
		instData[i,0].image_yscale = instData[i,2]; // scale y;
		//instData[i,0].x = instData[i,3]; // scale x;
		//instData[i,0].y = instData[i,4]; // scale y;
		var inst =instData[i,0];
		
		// !!!!!!!!!!!!!
		
		// TODO ALLA OLEVA ON BUGI JOKA PITÄÄ KORJATA VESIÄ SPAWNASI KENTÄN ULKOPUOLELLE
		
		// !!!!!!!!!!!!!
		
		if (inst.x > room_width || inst.x < 0 || inst.y > room_height || inst.y < 0 ){instance_destroy(inst);}
		}
	}
	
/*
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
for(var tilePlaceY = 0;tilePlaceY<levelH*chunkH;tilePlaceY++)
{
	for(var tilePlaceX=0;tilePlaceX<levelW*chunkW;tilePlaceX++)
	{
	//var data = ds_grid_get(tileDataGrid,tilePlaceX,tilePlaceY);
	//tilemap_set_at_pixel(map_id,data,tilePlaceX*tileW,tilePlaceY*tileW);
	}
}*/

for(var yy = 0;yy<levelH*chunkH;yy++)
{
	for(var xx=0;xx<levelW*chunkW;xx++)
	{
		//if (xx = 0 || yy = 0 && !place_meeting(xx*tileW,yy*tileW,obj_door_up)){tileDataGrid[# xx,yy] = 1;}
		//else if (xx = chunkW*levelW-1 || yy = chunkH*levelH-1){tileDataGrid[# xx,yy] = 1;}
		scr_update_tile(tileDataGrid, xx, yy, global.Tilemap_Wall, 1);
	}
}


//ds_grid_destroy(tileDataGrid);
ds_list_destroy(acceptedObjects);
instance_destroy();
}
else
{
//if (ds_exists(tileDataGrid,ds_type_grid))ds_grid_destroy(tileDataGrid);
//instance_destroy();	
}