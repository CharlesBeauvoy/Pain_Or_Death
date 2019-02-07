/// @description up_scale

if image_xscale < 1
{
	image_xscale += 0.025;
	image_yscale += 0.025;
	alarm[1] = 2;
}
else
	alarm[0] = 1;
