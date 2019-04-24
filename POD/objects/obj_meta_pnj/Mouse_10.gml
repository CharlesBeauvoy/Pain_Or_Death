window_set_cursor(cr_handpoint);
if !instance_exists(obj_pop_up_bg)
{
	obj_persistent.pnj_hovered = self;
	draw_relation_link = true;
	for(var i=0; i<ds_list_size(list_relation_sup);i++)
	{
		var rel_sup = ds_list_find_value(list_relation_sup_obj,i);
		rel_sup.draw = true;
		rel_sup.color = c_lime;
	}
	with obj_meta_pnj
	{
		var obj = other.object_index; //on cherche self dans les listes de tout les pnj			
		var index = ds_list_find_index(list_relation_sup,obj); //s'il a ete devoile on affiche la fleche
		if index != -1
		{
			var tmp =  ds_list_find_value(list_relation_sup_obj,index);
			tmp.color = c_yellow;
			tmp.draw = true;
		}
	}
}