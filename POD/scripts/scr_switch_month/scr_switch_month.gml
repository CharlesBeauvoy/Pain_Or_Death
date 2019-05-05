obj_month.month += 1;

with obj_meta_pnj
{
	if ds_map_find_value(self.map_information_known,"signe") == "inconnu"
		self.signe.visible = false;
}

if obj_month.month >= ds_list_size(obj_month.sign_name_list)
{
	obj_month.month = 0;
	obj_month.day = 1;
}
else
	scr_infos_contexte("Changement : Mois du "+obj_month.signe.name);

obj_month.signe.sprite_index = ds_list_find_value(obj_month.sign_sprite_list,obj_month.month);
obj_month.signe.image_blend = c_black;
obj_month.signe.name = ds_list_find_value(obj_month.sign_name_list,obj_month.month);

with obj_meta_pnj
{
	self.signe.image_blend = c_white;
	if obj_month.signe.sprite_index == self.signe.sprite_index
	{
		self.signe.visible = true;
		self.signe.image_blend = c_red;
		scr_set_pnj_bio(self.map_information_known,"signe",self.signe.name,self);
	}
}