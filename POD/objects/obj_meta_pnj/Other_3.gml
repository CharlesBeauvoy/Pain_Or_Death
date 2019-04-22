//scr_gain_sang(gain_sang);

ds_list_destroy(list_relation);
ds_list_destroy(list_relation_weigth);
ds_list_destroy(list_relation_text);
ds_list_destroy(list_etiquette);

ds_stack_destroy(list_relation_sup);
ds_stack_destroy(list_relation_sup_text);
ds_stack_destroy(list_relation_weigth_sup);

ds_stack_destroy(list_relation_secret);
ds_stack_destroy(list_relation_secret_text);
ds_stack_destroy(list_relation_weigth_secret);

ds_map_destroy(map_information_known);

var key = ds_map_find_first(map_relation);
for(var i=0; i < ds_map_size(map_relation); i++)
{
	var obj_relation = ds_map_find_value(map_relation, key);
	instance_destroy(obj_relation);
	key = ds_map_find_next(map_relation, key);
}
ds_map_destroy(map_relation);
ds_list_destroy(list_relation);