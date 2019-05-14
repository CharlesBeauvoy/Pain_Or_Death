if obj_persistent.pnj_selected.info_known >= ds_list_size(obj_persistent.list_key_pnj)
{
	scr_bouton_watch_soul();
	window_set_cursor(cr_default);
	obj_persistent.button_selected = noone;
	
	return scr_infos_contexte("Toute l'âme de "+obj_persistent.pnj_selected.name+" est découverte");
}

if !clicked
{
	clicked = true;
	image_blend = c_white;
	color = c_black;
	var value = variable_instance_get(obj_persistent.pnj_selected,key);
	scr_loss_sang(50);
	scr_set_pnj_bio(obj_persistent.pnj_selected.map_information_known,key, value,obj_persistent.pnj_selected);
	if key == "signe"
		obj_persistent.pnj_selected.signe.visible = true;	
	if key == "name"
		obj_persistent.pnj_selected.known = true;
	scr_gain_day(1);
	if obj_persistent.pnj_selected.info_known >= ds_list_size(obj_persistent.list_key_pnj)
	{
		scr_bouton_watch_soul();
		window_set_cursor(cr_default);
		obj_persistent.button_selected = noone;
	
		return scr_infos_contexte("Toute l'âme de "+obj_persistent.pnj_selected.name+" est découverte");
	}
}