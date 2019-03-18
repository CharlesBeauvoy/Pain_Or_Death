///@param position
///@param etiquette

var margin_w = argument0*(sprite_get_width(spr_etiquette_adulte)/8) + argument0*5+15;
var margin_h = (sprite_get_height(spr_etiquette_adulte)/5) + 5;
	
var tmp = instance_create_layer(obj_persistent.pnj_selected.x-obj_persistent.pnj_selected.sprite_width/3+margin_w,obj_persistent.pnj_selected.y+obj_persistent.pnj_selected.sprite_height/4,"Instances_selection_pnj",argument1);
tmp.image_xscale /= 8; 
tmp.image_yscale /= 5; 
tmp.pnj_linked = obj_persistent.pnj_selected;