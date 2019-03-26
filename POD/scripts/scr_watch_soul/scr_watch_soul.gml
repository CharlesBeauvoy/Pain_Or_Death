///@param instance
if argument0.info_known >= 6
	return scr_infos_contexte("Toute l'âme de "+argument0.name+" est découverte");

var rdm_index = irandom_range(0,ds_list_size(obj_persistent.list_key_pnj)-1);
var rdm_key = ds_list_find_value(obj_persistent.list_key_pnj,rdm_index);
var rdm_value = ds_map_find_value(argument0.map_information_known,rdm_key);

if rdm_value == "inconnu"
{
	var val = variable_instance_get(argument0,rdm_key);
	scr_set_pnj_bio(argument0.map_information_known,rdm_key, val);
}
else
{
	while ds_map_find_value(self.map_information_known,rdm_key) != "inconnu"
	{
		rdm_key = ds_map_find_next(self.map_information_known,rdm_key);
		if is_undefined(rdm_key)
			rdm_key = ds_map_find_first(self.map_information_known);
	}
	var val = variable_instance_get(argument0,rdm_key);
	scr_set_pnj_bio(argument0.map_information_known,rdm_key, val);
}

argument0.info_known += 1;