var is_a_pnj_marked = false;
for(var i=0; i<instance_number(obj_meta_pnj); i++)
{
	var tmp_obj = instance_find(obj_meta_pnj,i)
	if tmp_obj.marked
	{
		is_a_pnj_marked = true;
		tmp_obj.alarm[2] = 1;
		instance_destroy(tmp_obj.signe);
	}
}
if is_a_pnj_marked == false // si aucun pnj n'a ete selectionne
{
	var rdm = irandom_range(0,instance_number(obj_meta_pnj)-1);
	var rdm_obj = instance_find(obj_meta_pnj,rdm);
	if obj_persistent.pnj_selected == rdm_obj.object_index
		scr_hide_pop_up();
	rdm_obj.alarm[2] = 1;
	instance_destroy(rdm_obj.signe);
}
obj_persistent.pnj_marked = noone;
obj_persistent.is_pnj_dying = true;
	
instance_destroy(obj_pop_up_lp_done);