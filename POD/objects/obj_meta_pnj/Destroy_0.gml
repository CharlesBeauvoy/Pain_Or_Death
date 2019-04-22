//scr_gain_sang(gain_sang);

for(var i=0; i<ds_list_size(list_relation);i++)
{
	if instance_exists(ds_list_find_value(list_relation,i))
	{
		var weigth = ds_list_find_value(list_relation_weigth,i);
		scr_gain_souffrance(weigth*5);
	}
}

obj_jauge_sang.value_thresold = obj_jauge_sang.value_max - obj_jauge_souffrance.value_current;
obj_jauge_sang.value_current = obj_jauge_sang.value_thresold;

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