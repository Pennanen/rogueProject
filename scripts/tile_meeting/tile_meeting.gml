
var xx = argument0;
var yy = argument1;
var map = argument2;
var col = false;
if (tilemap_get_at_pixel(map,xx,yy) != 0 && xx > 0 && yy > 0 && xx < room_width && yy < room_height)
	{
	col = true;	
	}

return col;