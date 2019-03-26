///@param pnj_map
///@param key
///@param val

if !is_string(argument2)
	ds_map_replace(argument0,argument1,argument2.name);
else
	ds_map_replace(argument0,argument1,argument2);