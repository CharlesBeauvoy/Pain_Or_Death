///@param object_index

var size = ds_list_size(obj_persistent.pnj_selected.list_etiquette);
var index = ds_list_find_index(obj_persistent.pnj_selected.list_etiquette, argument0);
if index == -1 and size < 3
{
	ds_list_add(obj_persistent.pnj_selected.list_etiquette,argument0);
	scr_create_etiquette(size,argument0);
}
else if index != -1
	scr_del_etiquette(argument0);