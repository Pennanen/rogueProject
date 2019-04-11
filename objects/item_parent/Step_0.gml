/// @description
/*
*/
	
	if (hover)
		{
		scale += (2-scale)*0.2;
		hovery += (1-hovery)*0.2;
		}
	else
		{
		scale += (1.5-scale)*0.2;
		hovery+= (0-hovery)*0.2;
		}
		if (hovery = 0 && showText) showText = false;
	image_xscale =scale*initialScale;
	image_yscale =scale*initialScale;
	
	if (active && !dragging)
		{
			x = currentSlot.x;
			y = currentSlot.y;

		}
		else if (active && dragging)
		{
			x = mouse_x;
			y = mouse_y;
		}
