///@param obj_relation_sup

var rel_sup = argument0;

var correct_destination = false;

///on verifie d'abord si le pnj destination est bon
var index = ds_list_find_index(rel_sup.pnj_source.clef_relation, rel_sup.pnj_destination.name);
if index != -1
{
	correct_destination = true;
	if rel_sup.pnj_destination.known
		scr_infos_contexte(rel_sup.pnj_source.name+" a bien une relation avec "+rel_sup.pnj_destination.name);
	else
		scr_infos_contexte(rel_sup.pnj_source.name+" a bien une relation avec cette personne");
	
	var rel = ds_map_find_value(rel_sup.pnj_source.map_relation,rel_sup.pnj_destination.name);
	if rel.type_relation == rel_sup.type
	{
		scr_infos_contexte("Ce lien est bien de type "+rel.type_relation);
		ds_list_add(rel.pnj_linked.list_relation,rel_sup.pnj_destination.object_index);
		ds_list_add(rel.pnj_linked.list_relation_text,rel.bio_relation);
		ds_list_add(rel.pnj_linked.list_relation_weigth,rel.force_relation);
		rel.fully_known = true;
		rel_sup.pnj_destination.known = true;
		scr_delete_pnj_relation(rel_sup);
		rel.pnj_linked.draw_relation_link = true;
		rel.pnj_linked.known = true;
		rel.pnj_linked.number_pnj_know += 1;
		
		if ds_map_find_value(obj_persistent.pnj_selected.map_information_known,"name") == "inconnu"
			scr_set_pnj_bio(obj_persistent.pnj_selected.map_information_known,"name", obj_persistent.pnj_selected.name,obj_persistent.pnj_selected);
		
		scr_hide_pop_up();
		scr_display_pop_up(obj_persistent.pnj_selected,true);
	}
}
else
{
	scr_infos_contexte("Ces PNJ n'ont pas de relation");
	/*var nom_pnj_source_known = scr_check_pnj_bio(rel_sup.pnj_source, "name");
	var nom_pnj_dest_known = scr_check_pnj_relation(rel_sup.pnj_destination,"name");
	if scr_check_pnj_bio(rel_sup.pnj_source, "name") != -1 and scr_check_pnj_bio(rel_sup.pnj_destination, "name") != -1
		scr_infos_contexte(rel_sup.pnj_source.name+" n'a pas de relation avec "+rel_sup.pnj_destination.name);*/
}

///on verifie ensuite si le pnj a bien une ou plusieurs relations de ce type