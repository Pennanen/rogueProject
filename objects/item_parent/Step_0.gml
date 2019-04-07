/// @description
/*
*/
	
	if (hover)
		{
		scale += (2.5-scale)*0.2;
		hovery += (1-hovery)*0.2;
		}
	else
		{
		scale += (1.5-scale)*0.2;
		hovery+= (0-hovery)*0.2;
		}
		if (hovery = 0 && showText) showText = false;
	image_xscale =scale;
	image_yscale =scale;