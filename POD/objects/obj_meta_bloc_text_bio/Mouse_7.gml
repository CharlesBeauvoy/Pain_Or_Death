if !obj_persistent.not_clickable
{
	if hyperlink and obj_persistent.pnj_hovered.visited
	{
		window_set_cursor(cr_default);
		obj_persistent.pnj_hovered.image_xscale = 1;
		obj_persistent.pnj_hovered.image_yscale = 1;
		obj_persistent.pnj_hovered.alarm[0] = -1;
		obj_persistent.pnj_hovered.alarm[1] = -1;
		with obj_persistent.pnj_hovered
			event_perform(ev_mouse,ev_left_release);
	
		obj_persistent.pnj_hovered = noone;
	}
	else if hyperlink and !obj_persistent.pnj_hovered.visited
	{
		scr_display_pop_up_hyperlink();
		obj_pop_up_hyperlink.pnj_hovered = obj_persistent.pnj_hovered;
	}
}