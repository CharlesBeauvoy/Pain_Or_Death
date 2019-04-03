if !instance_exists(obj_timing) and !obj_persistent.not_clickable
{
	if visited == false and !instance_exists(obj_timing)
	{
		scr_hide_pop_up();
		scr_display_pop_up(self,false);
	}
	else if visited
	{
		scr_hide_pop_up();
		scr_display_pop_up(self, true);
	}
	scr_set_avatar_pnj();
}
else if instance_exists(obj_timing)
{
	obj_persistent.pnj_selected = self;
	scr_set_avatar_pnj();
	scr_bouton_marked();
}