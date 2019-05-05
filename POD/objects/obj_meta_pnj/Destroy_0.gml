//scr_gain_sang(gain_sang);
var souffrance = 0;
for(var i=0; i<ds_list_size(clef_relation);i++)
{
	var clef = ds_list_find_value(clef_relation,i);
	var value = ds_map_find_value(map_relation,clef)
	if instance_exists(value.pnj_linked)
		souffrance += value.force_relation;
}
scr_gain_souffrance(souffrance*5);

if self == obj_persistent.pnj_selected
{
	instance_destroy(obj_pop_up_display);
	scr_hide_pop_up();
}
if self == obj_persistent.pnj_hovered
{
	obj_persistent.pnj_hovered = noone;
}
ds_list_destroy(list_relation);
ds_list_destroy(list_relation_weigth);
ds_list_destroy(list_relation_text);
ds_list_destroy(list_etiquette);

ds_list_destroy(list_relation_sup);
ds_list_destroy(list_relation_sup_text);
ds_list_destroy(list_relation_weigth_sup);
for(var i=0; i< ds_list_size(list_relation_sup_obj);i++)
	instance_destroy(ds_list_find_value(list_relation_sup_obj,i));
ds_list_destroy(list_relation_sup_obj);

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
obj_jauge_sang.value_thresold = obj_jauge_sang.value_max - obj_jauge_souffrance.value_current;
obj_jauge_sang.value_current = obj_jauge_sang.value_thresold;