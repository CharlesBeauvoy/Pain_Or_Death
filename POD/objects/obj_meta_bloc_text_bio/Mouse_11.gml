font = fnt_pop_up_bio;
window_set_cursor(cr_default);
if obj_persistent.pnj_hovered != noone
{
	obj_persistent.pnj_hovered.image_xscale = 1;
	obj_persistent.pnj_hovered.image_yscale = 1;
	obj_persistent.pnj_hovered.alarm[0] = -1;
	obj_persistent.pnj_hovered.alarm[1] = -1;
}

obj_persistent.pnj_hovered = noone;