if !clicked
{
	color = c_black;
	image_blend = c_white;
	var index = 0;
	for(var i=0; i<ds_list_size(obj_persistent.list_key_pnj); i++)
	{
		var key = ds_list_find_value(obj_persistent.list_key_pnj,i);
		var rdm_value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known,key);
		if rdm_value == "inconnu"
		{
			var tmp = instance_create_layer(obj_bouton_pd_watch_soul.x-sprite_width-5,obj_bouton_pd_watch_soul.y+index*sprite_height+index*5,"Instances_panel_droit",obj_bouton_bio);
			tmp.key = key;
			tmp.texte = ds_list_find_value(obj_persistent.list_name_key_pnj,i);
			index += 1;
		}
	}
	if index == 0
		return scr_infos_contexte("Vous connaissez toute son âme");
	
}
else
{
	color = c_white;
	image_blend = c_black;
	instance_destroy(obj_bouton_bio);
}
clicked = !clicked;	