with obj_bouton_pd_listen_dream
{
	
	instance_destroy(obj_bouton_moins);
	instance_destroy(obj_bouton_plus);

	timer.x = x-sprite_width/2-sprite_get_width(spr_timer_feature)/2
	timer.y = y;
	timer.texte = obj_persistent.pnj_selected.watch_soul_count*timer.texte;
	timer.visible = false;
	
	obj_persistent.pnj_selected.watch_soul_count = timer.texte;
	with obj_persistent.pnj_selected
		alarm[3] = room_speed;
	instance_destroy(obj_bouton_valider);
}