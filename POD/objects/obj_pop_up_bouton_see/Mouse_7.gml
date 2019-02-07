scr_switch_month();
obj_persistent.not_clickable = false;
with obj_pop_up_hyperlink.pnj_hovered
	event_perform(ev_mouse,ev_left_release);
	
scr_hide_pop_up_hyperlink();