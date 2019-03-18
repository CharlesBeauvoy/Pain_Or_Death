obj_month.month += 1;

with obj_meta_pnj
{
	if obj_month.signe.object_index == signe.object_index and visited
		signe.image_blend = c_yellow;
}

if obj_month.month >= 3//ds_list_size(obj_month.month_list)
{
	obj_month.month = 0;
	obj_month.day = 1;	
	scr_display_pop_up_lp();
}
else
{
	scr_infos_contexte("Changement de mois : "+ds_list_find_value(obj_month.month_list, obj_month.month));
	scr_infos_contexte("Zodiac : "+obj_month.signe.name);
}
obj_month.signe.sprite_index = ds_list_find_value(obj_month.sign_sprite_list,obj_month.month);
obj_month.signe.image_blend = c_black;
obj_month.signe.name = ds_list_find_value(obj_month.sign_name_list,obj_month.month);