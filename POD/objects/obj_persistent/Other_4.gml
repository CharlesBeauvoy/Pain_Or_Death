scr_hide_panel_selection();
if room == rm_relation
{
	pnj_relation = pnj_instance_selected;
	scr_display_relation();
}
for(var i=0; i< ds_list_size(pnj_to_killed);i++)
{
	instance_destroy(ds_list_find_value(pnj_to_killed,i));
}