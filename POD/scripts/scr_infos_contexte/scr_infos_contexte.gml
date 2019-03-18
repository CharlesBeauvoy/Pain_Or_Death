///@param texte

var id_interface = layer_get_id("Instances_UI_above");
var hauteur = sprite_get_height(spr_infos_contextuelles);
var tmp = noone;
if obj_persistent.last_infos_contexte != noone
	tmp = instance_create_layer(0,obj_persistent.last_infos_contexte.y+hauteur+30,id_interface,obj_infos_contextuelles);
else
	tmp = instance_create_layer(0,100,id_interface,obj_infos_contextuelles);

tmp.texte = argument0;
obj_persistent.last_infos_contexte = tmp;