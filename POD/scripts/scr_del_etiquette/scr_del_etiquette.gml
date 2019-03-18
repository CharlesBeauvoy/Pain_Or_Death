///@param object_index

if ds_list_find_index(obj_persistent.pnj_selected.list_etiquette, argument0) != -1
{
	var tmp_index = ds_list_find_index(obj_persistent.pnj_selected.list_etiquette, argument0);
	scr_destroy_etiquette(ds_list_find_value(obj_persistent.pnj_selected.list_etiquette,tmp_index));
	ds_list_delete(obj_persistent.pnj_selected.list_etiquette,tmp_index);
	
	for(var i=0; i<ds_list_size(obj_persistent.pnj_selected.list_etiquette);i++)
	{
		var tmp_etiquette = ds_list_find_value(obj_persistent.pnj_selected.list_etiquette,i);
		scr_destroy_etiquette(tmp_etiquette);
		scr_create_etiquette(i, tmp_etiquette);		
	}
	instance_destroy(obj_pop_in);
}