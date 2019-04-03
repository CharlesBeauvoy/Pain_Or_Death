with obj_bouton_pd_listen_dream
{
	if obj_persistent.pnj_selected.info_known >= ds_list_size(obj_persistent.list_key_pnj)
		return scr_infos_contexte("Toute l'âme de "+obj_persistent.pnj_selected.name+" est découverte");
	if !clicked
	{
		if obj_bouton_pd_watch_soul.clicked
			script_execute(obj_bouton_pd_watch_soul.script_left_released);
		color = c_black;
		image_blend = c_white;
		
		var plus = instance_create_layer(x-sprite_width/2-sprite_get_width(spr_plus)/2,y,"Instances_panel_droit",obj_bouton_plus);		
		timer = instance_create_layer(plus.x-plus.sprite_width/2-sprite_get_width(spr_timer_feature)/2,y,"Instances_panel_droit",obj_timer_feature);
		var moins = instance_create_layer(timer.x-timer.sprite_width/2-sprite_get_width(spr_moins)/2,y,"Instances_panel_droit",obj_bouton_moins);
		instance_create_layer(moins.x-moins.sprite_width/2-sprite_get_width(spr_valider)/2,y,"Instances_panel_droit",obj_bouton_valider);
		timer.texte = 1;
	}
	else
	{
		color = c_white;
		image_blend = c_black;
		instance_destroy(timer);
		instance_destroy(obj_bouton_plus);
		instance_destroy(obj_bouton_moins);
		instance_destroy(obj_bouton_valider);
		timer = noone;
		obj_persistent.pnj_selected.watch_soul_count = obj_persistent.pnj_selected.watch_soul_count_base;
		obj_persistent.pnj_selected.alarm[3] = -1;
	}
	clicked = !clicked;	
}