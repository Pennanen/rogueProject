/// @description
/*
*/
image_index = index;
vSpd += (0-vSpd)*0.08;
if (ready){if (image_alpha > 0){image_alpha -= 0.1;y-=52;}}
else {image_alpha += (1-image_alpha)*0.02;}
if (ready && image_alpha <= 0.1){instance_destroy()};
y+=vSpd;

if (hover)
	{
	image_blend = c_white;
	hovery += (12-hovery)*0.1;	
	}
	else
	{
	image_blend = c_gray;
	hovery += (0-hovery)*0.1;		
	}