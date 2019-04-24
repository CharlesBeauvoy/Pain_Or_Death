if mouse_x >= middle_x-10 and mouse_x <= middle_x+string_width(type)+10 and mouse_y >= middle_y-10 and mouse_y <= middle_y+string_height(type)+10
{
	if  mouse_check_button_released(mb_left)
	{
		obj_persistent.ghost_arrow_current = self;
		scr_display_etiquette_relation();
	}
	else if mouse_check_button_released(mb_right)
	{
		var index = ds_list_find_index(pnj_source.list_relation_sup_obj,self);
		ds_list_delete(pnj_source.list_relation_sup_obj,index);
		ds_list_delete(pnj_source.list_relation_sup,index);
		ds_list_delete(pnj_source.list_relation_sup_text,index);
		ds_list_delete(pnj_source.list_relation_weigth_sup,index);
		instance_destroy(self);
	}
}