///@param pnj_map
///@param key
///@param val
///@param pnj

if ds_map_find_value(argument0, argument1) != "inconnu"
	return -1;

if !is_string(argument2)
	ds_map_replace(argument0,argument1,argument2.name);
else
	ds_map_replace(argument0,argument1,argument2);
	
argument3.info_known += 1;