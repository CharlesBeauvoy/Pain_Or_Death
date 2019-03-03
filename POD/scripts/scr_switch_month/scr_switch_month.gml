obj_month.month += 1;
if obj_month.month >= 11//ds_list_size(obj_month.month_list)
{
	obj_month.month = 0;
	scr_display_pop_up_lp();
}