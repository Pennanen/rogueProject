/// @description
/*
*/
if (instance_number(level_generator)>1){instance_destroy()};
global.rm = room_duplicate(room_template_chunk_clean);
room_set_camera(global.rm,0,obj_camera);
//room_assign(room_template_chunk_clean,global.rm);

randomize();

chunkNumber_horisontal	= 3;
chunkNumber_vertical	= 2;

chunkIndexX = 0;
chunkIndexY = 0;

acceptedObjects = ds_list_create();
ds_list_add(acceptedObjects,obj_solid,obj_chest,obj_water,obj_player_spawn,obj_enemy_spawn
							,obj_door_up,obj_breakable_block);
levelW = 3;
levelH = 3;

tunnels = 4;

levelH+=tunnels;
tileW = 32;

chunkW = 32;
chunkH = 16;

padding = 32;
roomW = levelW*tileW*chunkW;
roomH = levelH*tileW*chunkH+128
room_set_width(global.rm,roomW);
room_set_height(global.rm,roomH);

level = ds_grid_create(levelW,levelH);
ds_grid_clear(level,1);
var levelDone = false;
var startChunkX = irandom(levelW-1);
var curX= startChunkX;
var curY= 2;

ds_grid_set(level,curX,0,7);
ds_grid_set(level,curX,1,7);
ds_grid_set(level,curX,curY,5);
var dir = choose("right","left");

	show_debug_message("starting level path generation.")

while(!levelDone)
{
	
	var success = false;
	switch(dir)
	{
	case "right":
		if (curX < levelW-1 && ds_grid_get(level,curX+1,curY) = 1){curX++;success = true;};
	break;
	case "left":
		if (curX > 0 && ds_grid_get(level,curX-1,curY) = 1){curX--;success = true;};
	break;
	case "down":
		if (curY < levelH-tunnels/2 && ds_grid_get(level,curX,curY+1) = 1){curY++;success = true;};
	break;
	}
	if (success)
	{
		if (curY = levelH-1-tunnels/2 && dir != "down"){levelDone = true}
		else if (dir = "down"){ds_grid_set(level,curX,curY,3);}
		else {ds_grid_set(level,curX,curY,2);}
		if (levelDone){ds_grid_set(level,curX,curY,6);ds_grid_set(level,curX,curY+1,7);ds_grid_set(level,curX,curY+2,7);}
	}
	if (curY = levelH-1-tunnels/2 || curY = tunnels/2 && curX = startChunkX){dir = choose("right","left");}
	else {dir = choose("right","left","down");}
}

show_debug_message("level path generation end.")

// Add random chunks
for(iy=tunnels/2;iy<levelH-tunnels/2;iy++)
{
	for(ix=0;ix<levelW;ix++)
	{
	if (ds_grid_get(level,ix,iy)=1 && iy > 0 && ds_grid_get(level,ix,iy-1)=1 || ds_grid_get(level,ix,iy)=1 && iy = 0)
		{ds_grid_set(level,ix,iy,choose(1,1,2))};
	}
}

chunkData = ds_list_create();
globalvar tileDataGrid;
//tileDataGrid = ds_grid_create(chunkW*levelW,chunkH*levelH);
tileDataGrid = ds_grid_create(roomW/tileW,roomH/tileW);
ds_grid_clear(tileDataGrid, 0);

index= 0;
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);

for(aY = 0; aY < levelH; aY++)
{
	for(aX = 0; aX < levelW; aX++)
	{
		
	// Select random chunk
	var val = ds_grid_get(level,aX,aY);
	if (val == 5) {chunkIndexX = 0;chunkIndexY = 0;} // start
	else if (val == 6){chunkIndexX = 0;chunkIndexY = 1;} // end
	else if (val == 7){chunkIndexX = 0;chunkIndexY = 3;} // tunnel
	else if (val == 2 || val == 3) // normal
	{
	chunkIndexX = irandom_range(1,chunkNumber_horisontal);
	chunkIndexY = irandom_range(0,chunkNumber_vertical);
	}
	else {chunkIndexX = 0;chunkIndexY = 2;} // filled

	
	// Get instances from that chunk
	var x1 = padding*(chunkIndexX+1)+chunkIndexX*tileW*chunkW; //64+0
	var y1 = padding*(chunkIndexY+1)+chunkIndexY*tileW*chunkH;
	var x2 = padding*(chunkIndexX+1)+(chunkIndexX+1)*tileW*chunkW; //32+512
	var y2 = padding*(chunkIndexY+1)+(chunkIndexY+1)*tileW*chunkH;
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
		if (data > 0)tileDataGrid[# xx,yy] = 1;
		//ds_grid_add(tileDataGrid,xx,yy,data);
		}
	}
	}
}
//}
room_goto(global.rm);

