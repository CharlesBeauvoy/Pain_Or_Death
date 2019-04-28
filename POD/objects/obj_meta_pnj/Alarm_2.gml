/// @description death
if image_xscale > 0.5
{
	image_xscale -= 0.025;
	image_yscale -= 0.025;
	with signe
	{
		image_xscale -= 0.025;
		image_yscale -= 0.025;
	}
	alarm[2] = 2;
}
else
{
	instance_destroy(signe);
	instance_destroy(self);
}
