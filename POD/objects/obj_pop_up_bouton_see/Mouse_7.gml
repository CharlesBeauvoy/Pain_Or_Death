obj_persistent.not_clickable = false;
with obj_pop_up_hyperlink.pnj_hovered
{
	visited = true;
	event_perform(ev_mouse,ev_left_release);
}
scr_loss_sang(10); //tribut de sang pour reveler un personnage
scr_gain_day(20); //tribut de sang pour reveler un personnage
for(var i=0;i<ds_list_size(obj_pop_up_hyperlink.pnj_hovered.list_relation);i++)
{
	var tmp = ds_list_find_value(obj_pop_up_hyperlink.pnj_hovered.list_relation,i)
	tmp.known = true;
}
scr_hide_pop_up_hyperlink();