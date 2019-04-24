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
		for(var i=0; i<ds_list_size(obj_persistent.pnj_selected.clef_relation);i++)
		{
			var rdm = irandom_range(0,100);
			var clef = ds_list_find_value(obj_persistent.pnj_selected.clef_relation, i);
			var relation = ds_map_find_value(obj_persistent.pnj_selected.map_relation,clef);
			if rdm <= real(obj_InputBox.displaytext) and !relation.pnj_destination_fully_known
			{
				relation.unknown = false;
				///----- connaitre la nature ------///
				var variable_rdm = choose("type_relation","nom_pnj","prenom_pnj","age_pnj","signe_pnj","lieu_pnj","metier_pnj");
				if !relation.type_relation_known and variable_rdm == "type_relation"
				{
					relation.type_relation_known = true;
					ds_list_add(relation.list_data,relation.type_relation);
					if !relation.surname_relation_known
						scr_infos_contexte(obj_persistent.pnj_selected.name+" a un relation de type : "+relation.type_relation);
					else if relation.surname_relation_known
						scr_infos_contexte(obj_persistent.pnj_selected.name+" a un relation de type : "+relation.type_relation+" avec "+clef);
				}
				else if !relation.name_relation_known and variable_rdm == "nom_pnj"
				{
					relation.name_relation_known = true;
					ds_list_add(relation.list_data,relation.pnj_destination_linked.surname);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" a pour nom "+relation.pnj_destination_linked.surname);
				}
				else if !relation.surname_relation_known and variable_rdm == "prenom_pnj"
				{
					relation.surname_relation_known = true;
					//ds_list_add(relation.list_data,relation.pnj_destination_linked.name);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" s'appelle "+relation.pnj_destination_linked.name);
				}
				else if !relation.age_relation_known and variable_rdm == "age_pnj"
				{
					relation.age_relation_known = true;
					ds_list_add(relation.list_data,relation.pnj_destination_linked.age);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" est agé(e) de "+relation.pnj_destination_linked.age);
				}
				else if !relation.signe_relation_known and variable_rdm == "signe_pnj"
				{
					relation.signe_relation_known = true;
					ds_list_add(relation.list_data,relation.pnj_destination_linked.signe.name);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" est "+relation.pnj_destination_linked.signe.name);
				}
				else if !relation.lieu_relation_known and variable_rdm == "lieu_pnj"
				{
					relation.lieu_relation_known = true;
					ds_list_add(relation.list_data,relation.pnj_destination_linked.lieu);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" vie à/au "+relation.pnj_destination_linked.lieu);
				}
				else if !relation.metier_relation_known and variable_rdm == "metier_pnj"
				{
					relation.metier_relation_known = true;
					ds_list_add(relation.list_data,relation.pnj_destination_linked.metier);
					scr_infos_contexte("Une relation de "+obj_persistent.pnj_selected.name+" est "+relation.pnj_destination_linked.metier);
				}
				if relation.type_relation_known and relation.name_relation_known and relation.surname_relation_known and relation.age_relation_known and relation.signe_relation_known and relation.lieu_relation_known and relation.metier_relation_known
					relation.pnj_destination_fully_known = true;
			}
		}
		
		//X/4% de le tourmenter
		var rdm = irandom_range(0,100);
		if rdm <= real(obj_InputBox.displaytext)/4
		{
			scr_infos_contexte("Vous avez tourmenté "+obj_persistent.pnj_selected.name);
			scr_gain_souffrance(20);
		}
	}
}