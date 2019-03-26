if !instance_exists(obj_pop_up_bg)
{
	sprite_index = spr_pop_up_quit;
	with obj_persistent.pnj_selected
		event_perform(ev_mouse, ev_left_release);
}
else
	scr_hide_pop_up();