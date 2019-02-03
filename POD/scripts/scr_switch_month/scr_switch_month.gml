obj_persistent.action_number += 1;
if obj_persistent.action_number >= ds_list_size(obj_month.month_list)
	obj_persistent.action_number = 0;