scr_switch_month();
scr_hide_panel_selection();

ds_list_add(obj_persistent.pnj_to_killed,obj_persistent.pnj_instance_selected.object_index);

if room == rm_relation
{
	var pnj = obj_persistent.pnj_relation;
	var index = ds_list_find_index(pnj.list_relation,obj_persistent.pnj_instance_selected)
	ds_list_delete(pnj.list_relation,index);
}
instance_destroy(obj_persistent.pnj_instance_selected);