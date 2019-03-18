obj_month.month += 1;
with obj_month.signe
	instance_destroy(self);
obj_month.signe = instance_create_layer(obj_month.x,obj_month.y,"Instances_UI_above",ds_list_find_value(obj_month.sign_list,obj_month.month));
obj_month.signe.image_blend = c_black;

with obj_meta_pnj
{
	if obj_month.signe.object_index == signe.object_index and visited
		signe.image_blend = c_yellow;
}

if obj_month.month >= 3//ds_list_size(obj_month.month_list)
{
	obj_month.month = 0;
	obj_month.day = 1;
	with obj_month.signe
		instance_destroy(self);
	obj_month.signe = instance_create_layer(obj_month.x,obj_month.y,"Instances_UI_above",ds_list_find_value(obj_month.sign_list,obj_month.month));
	obj_month.signe.image_blend = c_black;
	
	scr_display_pop_up_lp();
}
else
{
	scr_infos_contexte("Changement de mois : "+ds_list_find_value(obj_month.month_list, obj_month.month));
	scr_infos_contexte("Zodiac : "+obj_month.signe.name);
}