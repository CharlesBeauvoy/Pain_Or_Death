for(var i=0; i< ds_list_size(pnj_to_killed);i++)
{
	instance_destroy(ds_list_find_value(pnj_to_killed,i));
}