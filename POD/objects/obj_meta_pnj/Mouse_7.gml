if !obj_persistent.not_clickable
{
	if visited == false and !instance_exists(obj_timing)
	{
		scr_display_pop_up_hyperlink();
		obj_pop_up_hyperlink.pnj_hovered = self.object_index;
	}
	else if visited
	{
		//visited = true;
		scr_hide_pop_up();
		scr_display_pop_up(self);
	}
}