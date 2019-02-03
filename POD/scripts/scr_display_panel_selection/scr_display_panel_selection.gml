///@param instance
///@param bio
///@param info
///@param spr_avatar
///@param liste_relation

var layer_id = layer_get_id("Instances_selection_pnj");
instance_activate_layer(layer_id);

obj_persistent.pnj_instance_selected = argument0;
obj_persistent.pnj_bio_selected = argument1;
obj_persistent.pnj_info_selected = argument2;
obj_persistent.pnj_avatar_selected = argument3;

ds_list_copy(obj_persistent.pnj_list_relation,argument4)

obj_avatar_selection_pnj.sprite_index = argument3;
obj_info_selection_pnj.texte = argument2;
obj_bio_selection_pnj.texte = argument1;