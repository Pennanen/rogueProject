/// @description
/*
*/
if (stabbing)
{
stabbing = false;
alarm[1] = 10;
}
else if (canStabDamage)
	{
	canStabDamage = false;
	alarm[2] = stabCooldownSteps;
	}
