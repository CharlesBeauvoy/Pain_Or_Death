if reveal >= 3
	return -1;
	
if reveal == 1
{
	with obj_meta_pnj
		draw_relation_link = true;
	reveal = 2;
}
else if reveal == 2
{
	with obj_meta_pnj
		draw_relation_link = false;
	reveal = 1;
}

if reveal == 0
{
	reveal = 1;
	with obj_meta_pnj
	{
		ds_map_replace(map_information_known,"name",name);
		info_known += 1;
		signe.visible = true;
		for(var i=0; i<ds_list_size(clef_relation);i++)
		{
			var clef = ds_list_find_value(clef_relation, i);
			var value = ds_map_find_value(map_relation,clef);
			if ds_list_find_index(list_relation, value.pnj_destination_linked.object_index) < 0
			{
				ds_list_add(list_relation, value.pnj_destination_linked.object_index);
				ds_list_add(list_relation_weigth, value.force_relation);
				ds_list_add(list_relation_text, value.bio_relation);
			}
		}
	}
}