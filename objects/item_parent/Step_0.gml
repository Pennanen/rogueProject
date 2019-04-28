/// @description
/*
*/  
if (collect){
if (destroy){currentSlot.item = noone;instance_destroy()}
	if (consumable && trigger)
		{
		if (amount <= 1){destroy = true};	
		else {amount--};
		}
	if (hover && !mouse_check_button(mb_left))
		{
		scale += (2-scale)*0.2;
		hovery += (1-hovery)*0.1;
		}
	else
		{
		scale += (1.5-scale)*0.2;
		hovery+= (0-hovery)*0.1;
		}
		if (hovery = 0 && showText) showText = false;
	image_xscale =scale*initialScale;
	image_yscale =scale*initialScale;
	
	if (active && !dragging && instance_exists(currentSlot))
		{
			x = currentSlot.x;
			y = currentSlot.y;
			depth = -500;

		}
		else if (active && dragging)
		{
			depth = -501;
			x = mouse_x;
			y = mouse_y;
		}
}
else
{
	exit;
}