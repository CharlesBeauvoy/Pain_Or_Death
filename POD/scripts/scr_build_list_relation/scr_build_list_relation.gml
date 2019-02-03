if argument_count > 1
{
	for(var i=1; i<argument_count;i++)
	{
		var index = ds_list_find_index(obj_persistent.pnj_to_killed,argument[i]);
		if index < 0
			ds_list_add(argument[0],argument[i]);			
	}
}