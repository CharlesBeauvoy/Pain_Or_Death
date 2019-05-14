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

if argument3.info_known >= ds_list_size(obj_persistent.list_key_pnj)
{
	with obj_meta_pnj
	{
		var obj = argument3.object_index; //on cherche self dans les listes de tout les pnj			
		var index = ds_list_find_index(list_relation,obj);
		if index != -1
		{
			var rel = ds_map_find_value(self.map_relation,argument3.name);
			var validate = scr_validate_pnj_relation(rel);
			if validate
				ds_list_replace(self.list_relation_linked_visible,index,true);
		}
	}
}