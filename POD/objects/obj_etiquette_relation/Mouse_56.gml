if instance_place(mouse_x,mouse_y,all) == noone
{
	var rel_obj = ds_list_find_value(obj_persistent.pnj_selected.list_relation_sup_obj,ds_list_size(obj_persistent.pnj_selected.list_relation_sup_obj)-1)
	scr_delete_pnj_relation(rel_obj);
	instance_destroy(obj_etiquette_relation);
}