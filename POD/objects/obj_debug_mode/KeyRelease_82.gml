///@description reveal all

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
		scr_set_pnj_bio(map_information_known,"name",name,self);
		signe.visible = true;
		for(var i=0; i<ds_list_size(clef_relation);i++)
		{
			var clef = ds_list_find_value(clef_relation, i);
			var value = ds_map_find_value(map_relation,clef);
			if ds_list_find_index(list_relation, value.pnj_destination_linked.object_index) < 0
				scr_add_pnj_relation(self,value,true);
		}
	}
}