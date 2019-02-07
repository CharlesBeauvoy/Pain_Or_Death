/// @description down_scale
if image_xscale > 0.8
{
	image_xscale -= 0.025;
	image_yscale -= 0.025;
	alarm[0] = 2;
}
else
	alarm[1] = 1;
