/// @description
/*
*/
if (instance_number(level_generator)>1){instance_destroy()};
global.rm = room_duplicate(room_template_chunk_clean);
room_set_camera(global.rm,0,obj_camera);
//room_assign(room_template_chunk_clean,global.rm);

randomize();
start = true;
chunkNumber_horisontal	= 2;
chunkNumber_vertical	= 1;

chunkIndexX = 0;
chunkIndexY = 0;

acceptedObjects = ds_list_create();
ds_list_add(acceptedObjects,obj_solid,obj_chest,obj_water,obj_player_spawn,obj_enemy_spawn);
levelW = 3;
levelH = 4;

tileW = 32;

chunkW = 24;
chunkH = 12;

padding = 32;
chunkData = ds_list_create();
tileDataGrid = ds_grid_create(tileW*chunkW*levelW,tileW*chunkH*levelH);
index= 0;
generationIndex = 0;
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);

for(aY = 0; aY < levelW; aY++)
{
	for(aX = 0; aX < levelH; aX++)
	{
	// Select random chunk
	if (start) {chunkIndexX = 0;chunkIndexY = 0;start = false}
	else
	{
	chunkIndexX = irandom_range(1,chunkNumber_horisontal);
	chunkIndexY = irandom_range(0,chunkNumber_vertical);
	}
	// Get instances from that chunk
	var x1 = 1+padding*(chunkIndexX+1)+chunkIndexX*tileW*chunkW; //64+0
	var y1 = 1+padding*(chunkIndexY+1)+chunkIndexY*tileW*chunkH;
	var x2 = -2+padding*(chunkIndexX+1)+(chunkIndexX+1)*tileW*chunkW; //32+512
	var y2 = -2+padding*(chunkIndexY+1)+(chunkIndexY+1)*tileW*chunkH;
	col = collision_rectangle_list(x1,y1,x2,y2,all,0,true,chunkData,1);
	// Save Instances to next room
	for(i=0;i<col;i++)
		{
		if (ds_list_find_index(acceptedObjects,chunkData[|0].object_index) != -1)
		{
			var relativeX = (padding*(chunkIndexX+1)+(chunkIndexX*chunkW*tileW))-chunkData[|0].x;
			var relativeY = (padding*(chunkIndexY+1)+(chunkIndexY*chunkH*tileW))-chunkData[|0].y;
			var xx = aX*tileW*chunkW-relativeX;
			var yy = aY*tileW*chunkH-relativeY;
			var idd = room_instance_add(global.rm,xx,yy,chunkData[|0].object_index);
			instData[index,0] = idd; // id
			instData[index,1] = chunkData[|0].image_xscale; // scale x
			instData[index,2] = chunkData[|0].image_yscale; // scale y
			instData[index,3] = xx; // x
			instData[index,4] = yy; // y
			index++;
			}
		ds_list_delete(chunkData,0);
		}
		ds_list_clear(chunkData);
	// Get tiledata from chunk
	for(var tileY=0;tileY<chunkH;tileY++)
	{
		for(var tileX=0;tileX<chunkW;tileX++)
		{
		var x1 = padding*(chunkIndexX+1)+chunkIndexX*tileW*chunkW+1+tileX*tileW;
		var y1 = padding*(chunkIndexY+1)+chunkIndexY*tileW*chunkH+1+tileY*tileW;
		
		var data = tilemap_get_at_pixel(map_id, x1, y1);
		// Save tiledata;
		var relativeX = tileX;
		var relativeY = tileY;
		var xx = aX*chunkW+relativeX;
		var yy = aY*chunkH+relativeY;
		
		ds_grid_add(tileDataGrid,xx,yy,data);
		}
	}
	generationIndex++;
	}
}
//}
room_goto(global.rm);

