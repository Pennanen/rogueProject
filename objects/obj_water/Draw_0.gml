
draw_set_color(c_white);
draw_set_alpha(waterAlpha);

draw_triangle_color(x1,y1,x1,y2,x1+unitW,y2,color,color2,color2,0);
draw_triangle_color(x2,y1,x2,y2,x2-unitW,y2,color,color2,color2,0);
for(var i = 0;i<=sprite_width/unitW;i++)
{
if (i < sprite_width/unitW && i > 0){
if (wavePoint[i-1,0] != y2){
draw_triangle_color(
	x+i*unitW,wavePoint[i,0],
	x+(i+1)*unitW,wavePoint[i+1,0],
	x+(i-1)*unitW,wavePoint[i-1,0],color2,color,color,0);}
if (wavePoint[i-1,0] = y2){
draw_triangle_color(
	x+i*unitW,wavePoint[i,0],
	x+(i+1)*unitW,wavePoint[i+1,0],
	x+(i-1)*unitW,wavePoint[i-1,0],color,color2,color2,0);}
//draw_line_width(x+i*unitW,wavePoint[i,0],x+(i-1)*unitW,wavePoint[i-1,0],1);

}
draw_set_color(c_black);
draw_set_alpha(waterAlpha);
	if (i<= sprite_width/unitW-2 && wavePoint[i,0] != y2 && onSurface)
	{
	draw_line_width(x+i*unitW,wavePoint[i,0],x+(i+2)*unitW,wavePoint[i+2,0],1+(abs(wavePoint[i,1]+wavePoint[i+2,1])/4));
	draw_line_width(x+1+i*unitW,wavePoint[i,0]+1,x+1+(i+2)*unitW,wavePoint[i+2,0]+1,1+(abs(wavePoint[i,1]+wavePoint[i+2,1])/4));
	}
}
draw_set_alpha(1);
draw_set_color(c_white);


