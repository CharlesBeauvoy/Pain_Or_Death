///@param pnj
///@param key

var value = ds_map_find_value(argument0.map_information_known,argument1);
if value == "inconnu"
	return -1;

return value;