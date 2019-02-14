obj_jauge_sang.value_current += gain_sang;

for(var i=0; i<ds_list_size(list_relation);i++)
{
	if instance_exists(ds_list_find_value(list_relation,i))
	{
		var weigth = ds_list_find_value(list_relation_weigth,i);
		obj_jauge_souffrance.value_current += weigth*5;
	}
}

ds_list_destroy(list_relation);