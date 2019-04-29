if (init = true && room != room_chunkRoom && instance_exists(obj_player))
{
showBelow = obj_player.inWater;
if (showBelow && waterAlpha > alpha) {waterAlpha-=0.01}
else if (!showBelow && waterAlpha < maxAlpha) {waterAlpha+=0.01}

if (onSurface)
{
for(var i = 0;i<=sprite_width/unitW;i++)
{
if (i < (sprite_width/unitW)-1 && i > 1 && wavePoint[i,0] != y2)
	{
	if (wavePoint[i,1]>waveHeight) {wavePoint[i,1]=waveHeight}
	else if (wavePoint[i,1]<-waveHeight) {wavePoint[i,1]=-waveHeight}

	
	var inst = instance_nearest(x, y, obj_player);
	if (instance_exists(inst))
		 {
		 var x11 = x + (i-2)*unitW;
		 var y11 = y1+24;
		 var x22 = x + (i+2)*unitW;
		 var y22 = y1+24;
	if (point_in_triangle(inst.x, inst.y, x+i*unitW, wavePoint[i,0], x11, y11, x22, y22) && notInWater)
		{
		if (wavePoint[i,0] < y1+sprite_height/4 && wavePoint[i,0] > y1-sprite_height/5 && wavePoint[i,1] < 1)
			{
			
				wavePoint[i,1]+=inst.vSpd/10;
				wavePoint[i-2,1]+=inst.vSpd/4;
				wavePoint[i+2,1]+=inst.vSpd/4;
				if	( i > 4){wavePoint[i-4,1] -= wavePoint[i,1]/5;}
				if	( i < (sprite_width/unitW)-4){wavePoint[i+4,1] -= wavePoint[i,1]/5;}
				var number = 1;
				for(var a = i;a<sprite_width/unitW;a++)
					{wavePoint[a,1] += wavePoint[i,1]/number;number += unitW*0.1}
					
					number = 1;
				for(var b = i;b>0;b--)
					{wavePoint[b,1] += wavePoint[i,1]/number;number += unitW*0.1}
				notInWater = false;
			}	
		wavePoint[0,0] = y1;
		wavePoint[sprite_width/unitW,0] = y1;
		
		}			

if (wavePoint[i,0] >= y1+dampening){wavePoint[i,1] -= dampening;}
if (wavePoint[i,0] <= y1-dampening){wavePoint[i,1] += dampening;}
	wavePoint[i,0] += wavePoint[i,1];
	}}
}
}
if (!collision_rectangle(x1,y1+2,x2,y2,obj_player,0,0)){notInWater = true}
}