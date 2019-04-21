///@param pnj_name
///@param pnj_index

var miniMap = ds_map_find_value(obj_persistent.theMap,argument0);
if !is_undefined(miniMap)
{
	var clef = ds_map_find_first(miniMap)
	for(var i=0; i<ds_map_size(miniMap);i++)
	{
		if clef == "texte_initial"
			argument1.texte_initial = ds_map_find_value(miniMap, "texte_initial");	 //on recupere la bio de base
		else
		{
			var list_relation = ds_map_find_value(miniMap, clef);
			var tmp = instance_create_depth(argument1.x, argument1.y,0,obj_pnj_relations);
			tmp.pnj_linked = argument1;
			tmp.nom_relation = ds_list_find_value(list_relation,0);
			tmp.force_relation = ds_list_find_value(list_relation,1);
			tmp.bio_relation = ds_list_find_value(list_relation,2);
			
			ds_map_add(argument1.map_relation, clef, tmp);
			
			ds_list_destroy(list_relation);
		}
		clef = ds_map_find_next(miniMap, clef);
	}
	ds_map_destroy(miniMap);
}