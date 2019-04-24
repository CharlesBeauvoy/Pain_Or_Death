///@param obj_relation
with argument0
{
	var index = ds_list_find_index(pnj_source.list_relation_sup_obj,self);
	ds_list_delete(pnj_source.list_relation_sup_obj,index);
	ds_list_delete(pnj_source.list_relation_sup,index);
	ds_list_delete(pnj_source.list_relation_sup_text,index);
	ds_list_delete(pnj_source.list_relation_weigth_sup,index);
	instance_destroy(self);
}