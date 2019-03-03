if !instance_exists(obj_timing) and !obj_persistent.not_clickable and !instance_place(mouse_x,mouse_y,obj_pop_up_display)
{
	if visited == false and !instance_exists(obj_timing)
	{
		scr_display_pop_up_hyperlink();
		obj_pop_up_hyperlink.pnj_hovered = self.object_index;
	}
	else if visited
	{
		if instance_exists(obj_persistent.pnj_selected)
		{
			if obj_persistent.pnj_selected.visited
				obj_persistent.pnj_selected.sprite_index = spr_pnj_unlocked;
			else 
				obj_persistent.pnj_selected.sprite_index = spr_pnj_unknown;
		}
		scr_hide_pop_up();
		scr_display_pop_up(self);
		sprite_index = spr_pnj_selected;
	}
}
else if instance_exists(obj_timing)
	marked = !marked;