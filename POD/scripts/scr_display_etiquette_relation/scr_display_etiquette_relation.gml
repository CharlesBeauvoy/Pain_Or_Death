var yscale = camera_get_view_height(view_camera[0]) / 1080;
for(var i=0; i<ds_list_size(obj_persistent.list_name_relation_pnj);i++)
{
	if obj_persistent.pnj_selected.y+ds_list_size(obj_persistent.list_name_relation_pnj)*sprite_get_height(spr_etiquette_age) < obj_persistent.camera_view_port_x + obj_persistent.gui_height-300
		var tmp = instance_create_depth(obj_persistent.pnj_selected.x,obj_persistent.pnj_selected.y+obj_persistent.pnj_selected.sprite_height+i*sprite_get_height(spr_etiquette_adulte)*yscale+i*5,-100,obj_etiquette_relation);
	else
		var tmp = instance_create_depth(obj_persistent.pnj_selected.x,obj_persistent.pnj_selected.y-obj_persistent.pnj_selected.sprite_height-i*sprite_get_height(spr_etiquette_adulte)*yscale-i*5,-100,obj_etiquette_relation);
	tmp.texte = ds_list_find_value(obj_persistent.list_name_relation_pnj,i);
	tmp.image_xscale = camera_get_view_width(view_camera[0]) / 1920;
	tmp.image_yscale = camera_get_view_height(view_camera[0]) / 1080;
}