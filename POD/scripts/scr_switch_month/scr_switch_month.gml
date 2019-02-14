obj_persistent.action_number += 1;
if obj_persistent.action_number >= 3//ds_list_size(obj_month.month_list)
{
	obj_persistent.action_number = 0;
	
	var is_a_pnj_marked = false;
	for(var i=0; i<instance_number(obj_meta_pnj); i++)
	{
		var tmp_obj = instance_find(obj_meta_pnj,i)
		if tmp_obj.marked
		{
			is_a_pnj_marked = true;
			tmp_obj.alarm[2] = 1;
		}
	}
	if is_a_pnj_marked == false // si aucun pnj n'a ete selectionne
	{
		var rdm = irandom_range(0,instance_number(obj_meta_pnj)-1);
		var rdm_obj = instance_find(obj_meta_pnj,rdm);
		if obj_persistent.pnj_selected == rdm_obj.object_index
			scr_hide_pop_up();
		rdm_obj.alarm[2] = 1;
	}
}