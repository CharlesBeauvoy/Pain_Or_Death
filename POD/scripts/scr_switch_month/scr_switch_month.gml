obj_month.month += 1;
if obj_month.month >= 3//ds_list_size(obj_month.month_list)
{
	obj_month.month = 0;
	obj_month.day = 1;
	scr_display_pop_up_lp();
}