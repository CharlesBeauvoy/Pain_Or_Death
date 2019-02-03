var layer_id = layer_get_id("Instances_selection_pnj");
instance_activate_layer(layer_id);

var layer_id_instances = layer_get_id("Instances");

obj_avatar_selection_pnj.sprite_index = obj_persistent.pnj_avatar_selected;
obj_info_selection_pnj.texte = obj_persistent.pnj_info_selected;
obj_bio_selection_pnj.texte = obj_persistent.pnj_bio_selected;

instance_deactivate_object(obj_bouton_see_link_pnj);

var j = 0;
var h = 0;
for(var i=0; i< ds_list_size(obj_persistent.pnj_list_relation);i++)
{
	if i mod 4
	{
		h = 0;
		j += 1;
	}
	instance_create_layer(200+j*200,150+(h*120),layer_id_instances,ds_list_find_value(obj_persistent.pnj_list_relation,i));
	h += 1;
}

var tmp = instance_create_layer(700,950,layer_id_instances,obj_persistent.pnj_instance_selected);
tmp.display_link = true;