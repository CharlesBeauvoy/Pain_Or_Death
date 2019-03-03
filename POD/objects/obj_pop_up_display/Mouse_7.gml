if !obj_persistent.not_clickable
{
	if !instance_exists(obj_pop_up_bg)
		scr_display_pop_up(obj_persistent.pnj_selected)
	else
		scr_hide_pop_up();
}