if !obj_persistent.not_clickable
{
	if visited == false
	{
		scr_display_pop_up_hyperlink();
		obj_pop_up_hyperlink.pnj_hovered = self.object_index;
	}
	else
	{
		//visited = true;
		scr_hide_pop_up();
		scr_display_pop_up(self);
	}
	//scr_switch_month();
}