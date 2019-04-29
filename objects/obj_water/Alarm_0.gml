/// @description
/*
*/
x1 = x;
x2 = x+sprite_width;
y1 = y;
y2 = y+sprite_height;
//impulseSide = 1;
impulse = 10;
onSurface = !collision_rectangle(x1+1,y1,x2-1,y1-16,obj_water,0,true);
showBelow = false;
//create wave points
waveHeight = 1.3;
impulse = 0;
//impulseDir = 0;
dampening = 0.15;
unitW = 8;
maxAlpha = 0.96;
if (!onSurface) {unitW = sprite_width/2};
if (onSurface)
{
if (type = "water"){color = make_color_rgb(0, 75, 122);color2 = make_color_rgb(0, 15, 12);alpha = 0.7;maxAlpha = 0.95;}
if (type = "lava"){color = make_color_rgb(233, 44, 0);color2 = make_color_rgb(233, 44, 0);alpha = 1;maxAlpha = 1;}
if (type = "poison"){color = make_color_rgb(113, 255, 81);color2 = make_color_rgb(27, 181, 0);alpha = 0.94;maxAlpha = 0.98;}
}
else
{
if (type = "water"){color = make_color_rgb(0, 15, 12);color2 = make_color_rgb(0, 15, 12);alpha = 0.7;maxAlpha = 0.94;}
if (type = "lava"){color = make_color_rgb(233, 44, 0);color2 = make_color_rgb(233, 44, 0);alpha = 1;maxAlpha = 1;}
if (type = "poison"){color = make_color_rgb(27, 181, 0);color2 = make_color_rgb(27, 181, 0);alpha = 0.95;maxAlpha = 0.99;}
}
waterAlpha = maxAlpha;
side = -1;
notInWater = true;
waveSide = 1;
for(var i = 0;i<=sprite_width/unitW;i++)
{
wavePoint[i,0] = y1+sprite_height/2+side*sprite_height/2;
wavePoint[i,1] = waveSide*random_range(0.25,0.5);
side *= -1;
if (side = 1){waveSide *=-1}
}
init = true;