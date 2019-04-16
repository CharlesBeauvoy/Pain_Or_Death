with obj_bouton_pd_etiquette
{
	if !clicked
	{
		obj_persistent.not_clickable = true;
		color = c_black;
		image_blend = c_white;
		var margin = y+50;
		var tmp_etiquette = noone;
		for(var i=0; i<ds_list_size(list_meta_etiquette); i++)
		{
			tmp_etiquette = instance_create_layer(obj_pop_up_bg.x-obj_pop_up_bg.sprite_width/2-sprite_get_width(spr_bouton_panel_droit)/2,margin,"Instances_UI_above",ds_list_find_value(list_meta_etiquette,i));
			var tmp = noone;
			for(var j=0; j< ds_list_size(tmp_etiquette.list_etiquette);j++)
				tmp = instance_create_layer(x,(tmp_etiquette.y+sprite_height+5)+j*sprite_height+j*5,"Instances_UI_above",ds_list_find_value(tmp_etiquette.list_etiquette,j));
			margin = tmp.y+50;
		}
	}
	else
	{
		obj_persistent.not_clickable = false;
		color = c_white;
		image_blend = c_black;
		instance_destroy(obj_meta_titre_etiquette);
		with obj_meta_etiquette
		{
			if pnj_linked == noone
				instance_destroy(self);
		}
	}
	clicked = !clicked;
}