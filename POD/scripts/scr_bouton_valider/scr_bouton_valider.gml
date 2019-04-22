if obj_bouton_pd_listen_dream.clicked
{
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
}
else
{
	with obj_bouton_pd_marche_dream
	{
		if obj_InputBox.displaytext == "" or real(obj_InputBox.displaytext) > 100 or real(obj_InputBox.displaytext) <= 0
			return scr_infos_contexte("Vous devez rentrer une valeur entre 1 et 100");
			
		//X% de chance d'avoir une info sur un LIEN ou une variable de l'être aimé
		var rdm_index = irandom_range(0,ds_list_size(obj_persistent.pnj_selected.clef_relation)-1);
		var rdm_clef = ds_list_find_value(obj_persistent.pnj_selected.clef_relation, rdm_index);
		var rdm_relation = ds_map_find_value(obj_persistent.pnj_selected.map_relation,rdm_clef);
		rdm_relation.unknown = false;
		///----- connaitre la nature ------///
		if !rdm_relation.nom_relation_known
		{
			rdm_relation.nom_relation_known = true;
			ds_list_add(rdm_relation.list_data,rdm_relation.nom_relation);
			if !rdm_relation.pnj_relation_known
				scr_infos_contexte(obj_persistent.pnj_selected.name+" a un relation de type : "+rdm_relation.nom_relation);
			else if rdm_relation.pnj_relation_known
				scr_infos_contexte(obj_persistent.pnj_selected.name+" a un relation de type : "+rdm_relation.nom_relation+" avec "+rdm_clef);
		}
		
		
		if rdm_relation.nom_relation_known and rdm_relation.pnj_relation_known and rdm_relation.force_relation_known
			rdm_relation.fully_known = true;
		
		//X/4% de le tourmenter
		var rdm = irandom_range(0,100);
		if rdm <= real(obj_InputBox.displaytext)/4
		{
			scr_infos_contexte("Vous avez tourmenté "+obj_persistent.pnj_selected.name);
			scr_gain_souffrance(20);
		}
	}
}