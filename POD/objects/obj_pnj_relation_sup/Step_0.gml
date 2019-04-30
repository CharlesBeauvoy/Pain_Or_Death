if !instance_exists(obj_etiquette_relation) and mouse_x >= middle_x-10 and mouse_x <= middle_x+string_width(type)+10 and mouse_y >= middle_y-10 and mouse_y <= middle_y+string_height(type)+10
{
	if  mouse_check_button_released(mb_left) and (!instance_exists(obj_bouton_pd_link_dream) or !obj_bouton_pd_link_dream.clicked)
	{
		obj_persistent.ghost_arrow_current = self;
		scr_display_etiquette_relation();
	}
	else if mouse_check_button_released(mb_left) and (instance_exists(obj_bouton_pd_link_dream) and obj_bouton_pd_link_dream.clicked)
	{
		scr_gain_day(1);
		scr_loss_sang(1);
		scr_check_pnj_relation(self);
	}
	else if mouse_check_button_released(mb_right)
		scr_delete_pnj_relation(self);
}