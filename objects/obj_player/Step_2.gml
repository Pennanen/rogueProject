/// @description
/*
*/
if (hSpd != 0 && onGround)
	{
		currentImage = runImage;
		animationSpeed = abs(hSpd)/20;
	}
	else if (!onGround)
	{
		if (vSpd >= 0){currentImage = jumpImage1}
		else if (vSpd < 0){currentImage = jumpImage2}
		animationSpeed = 0.4;
	}
	else
	{
	currentImage = idleImage;
	animationSpeed = 0.3;
	}
	
	if (animationIndex < 8){animationIndex+=animationSpeed}
	else{animationIndex = 0}