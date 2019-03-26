with obj_persistent.pnj_selected
{
	//on ajoute à la liste des relations le nouveau pnj
	var tmp = ds_stack_pop(list_relation_secret);
	tmp.known = true;
	ds_list_add(list_relation,tmp);
	ds_list_add(list_relation_weigth,ds_stack_pop(list_relation_weigth_secret));
	ds_list_add(list_relation_text,ds_stack_pop(list_relation_secret_text));
	
	scr_display_bloc_texte_bio(ds_list_find_value(list_relation_text,ds_list_size(list_relation_text)-1));
	scr_gain_day(28);
	
	if ds_stack_empty(list_relation_secret)
		instance_destroy(other);
}