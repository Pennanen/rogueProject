/// @description
/*
*/
// ITEM collection

ds_list_clear(colList);


if (hSpd != 0 && onGround)
	{
		if (!duck)
		{
		currentImage = runImage;
		animationSpeed = abs(hSpd)/20;
		}
		else
		{
		currentImage = duckImage;
		animationSpeed = abs(hSpd)/20;
		}
	}
	else if (!onGround)
	{
		if (vSpd >= 0){currentImage = jumpImage1}
		else if (vSpd < 0){currentImage = jumpImage2}
		animationSpeed = 0.4;
	}
	else if (duck && hSpd = 0)
	{
		currentImage = duckImage;
		animationSpeed = 0;
		animationIndex = 0;
	}
	else
	{
	currentImage = idleImage;
	animationSpeed = 0.3;
	}
	
	if (animationIndex < 8){animationIndex+=animationSpeed}
	else{animationIndex = 0}