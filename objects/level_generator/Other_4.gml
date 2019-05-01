/// @description
/*
*/
if (room = global.rm)
{
solidR = instance_create_depth(chunkW*tileW*levelW,-1500,0,obj_solid_outside);
solidR.image_xscale = 20;
solidR.image_yscale = 50+chunkW*tileW*levelW/64;

solidL = instance_create_depth(0,-1500,0,obj_solid_outside);
solidL.image_xscale = -20;
solidL.image_yscale = 50+chunkW*tileW*levelW/64;

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
	
var ww = 0;
var endCutting = 0;
for(var chunkY = 0;chunkY<levelH;chunkY++)
{
	for(var chunkX = 0;chunkX<levelW;chunkX++)
	{
	var cutW = choose(4,5,6);
		
	var val = ds_grid_get(level,chunkX,chunkY);
	if (val == 3) // cut up
		{
			var cutStartX = irandom(chunkW-cutW);
			var cutStartY = 8;
			for(var tileY=cutStartY;tileY>-chunkH*1.5;tileY--)
			{
				if (endCutting > 0 && endCutting < 2){endCutting++}
				else if (endCutting = 2){endCutting = 0;break;}
				var xx = chunkX*chunkW+cutStartX;
				var yy = chunkY*chunkH+tileY;
				if (tileDataGrid[# xx,yy] = 0 && tileY < cutStartY-chunkH/2){endCutting = 1;}
				repeat(cutW)
					{
					var col = collision_circle(xx*tileW+tileW/2+ww*tileW,yy*tileW,tileW*2,all,0,0)
					if (instance_exists(col) && 
					col.object_index != obj_door_up 
					&& col.object_index != obj_solid_outside 
					&& col.object_index != parent_nonchunks 
					&& col.object_index != obj_inv_slot){instance_destroy(col);}
					if (ww = 0 && tileDataGrid[# xx+ww,yy] = 1 || ww = cutW && tileDataGrid[# xx+ww,yy] = 1){tileDataGrid[# xx+ww,yy] = choose(0,0,1);}
					else{tileDataGrid[# xx+ww,yy] = 0;}
					ww++;
					}
				ww = 0;
			}
		}
	else if (val = 5)
		{
				var xx1 = chunkX*chunkW+chunkW/2-2;
				var xx2 = chunkX*chunkW+chunkW/2+2;
				
				var yy = (chunkY*chunkH)*tileW;
				
				solid1 = instance_create_depth(0,yy,0,obj_solid_outside);
				solid1.image_yscale = -40; solid1.image_xscale = xx1*tileW/64;
				solid2 = instance_create_depth(xx2*tileW,yy,0,obj_solid_outside);
				solid2.image_yscale = -40; solid2.image_xscale = (room_width-xx2*tileW)/64;
			
		}
	else if (val = 6)
		{
				var xx1 = chunkX*chunkW+chunkW/2-2;
				var xx2 = chunkX*chunkW+chunkW/2+2;
				
				var yy = (chunkY*chunkH+chunkH)*tileW;
				
				solid3 = instance_create_depth(0,yy,0,obj_solid_outside);
				solid3.image_yscale = 40; solid3.image_xscale = xx1*tileW/64;
				solid4 = instance_create_depth(xx2*tileW,yy,0,obj_solid_outside);
				solid4.image_yscale = 40; solid4.image_xscale = (room_width-xx2*tileW)/64;
			
		}
		
	}
}

for(var yy = 0;yy<levelH*chunkH;yy++)
{
	for(var xx=0;xx<levelW*chunkW;xx++)
	{
		if (xx = 0){tileDataGrid[# xx,yy] = 1;}
		else if (xx = chunkW*levelW-1){tileDataGrid[# xx,yy] = 1;}
		scr_update_tile(tileDataGrid, xx, yy, global.Tilemap_Wall, 1);
	}
}
var as_id = layer_get_id("Assets_1");

sp1 = layer_sprite_create(as_id,0,-900,spr_gradient); // 1920 x 2000
layer_sprite_xscale(sp1,room_width/1920);
sp2 = layer_sprite_create(as_id,0,room_height+900,spr_gradient); // 1920 x 2000
layer_sprite_xscale(sp2,room_width/1920);
layer_sprite_yscale(sp2,-1);

instance_destroy();
}
else
{

}