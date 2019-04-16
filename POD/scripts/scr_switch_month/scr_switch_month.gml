obj_month.month += 1;

obj_month.signe.sprite_index = ds_list_find_value(obj_month.sign_sprite_list,obj_month.month);
obj_month.signe.image_blend = c_black;
obj_month.signe.name = ds_list_find_value(obj_month.sign_name_list,obj_month.month);

with obj_meta_pnj
{
	self.signe.image_blend = c_white;
	if obj_month.signe.sprite_index == self.signe.sprite_index// and visited
		self.signe.image_blend = c_red;
}

if obj_month.month >= ds_list_size(obj_month.sign_name_list)
{
	obj_month.month = 0;
	obj_month.day = 1;
}
else
{
	scr_infos_contexte("Changement : Mois du "+obj_month.signe.name);
	//scr_infos_contexte("Zodiac : "+obj_month.signe.name);
}