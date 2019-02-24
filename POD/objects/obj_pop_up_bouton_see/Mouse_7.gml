obj_persistent.not_clickable = false;
with obj_pop_up_hyperlink.pnj_hovered
{
	visited = true;
	event_perform(ev_mouse,ev_left_release);
}
scr_loss_sang(10); //tribut de sang pour reveler un personnage
scr_hide_pop_up_hyperlink();
scr_switch_month();