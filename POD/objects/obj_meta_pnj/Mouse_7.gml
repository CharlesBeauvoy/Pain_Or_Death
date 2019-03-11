if !instance_exists(obj_timing) and !obj_persistent.not_clickable and !instance_place(mouse_x,mouse_y,obj_pop_up_display)
{
	if visited == false and !instance_exists(obj_timing)
	{
		if !known
		{
			scr_display_pop_up_hyperlink();
			obj_pop_up_hyperlink.pnj_hovered = self.object_index;
		}
		else
		{
			scr_hide_pop_up();
			scr_display_pop_up(self,false);
			draw_relation_link = false;
		}
	}
	else if visited
	{
		scr_hide_pop_up();
		scr_display_pop_up(self, true);
	}
	scr_set_avatar_pnj();
}
else if instance_exists(obj_timing)
	marked = !marked;