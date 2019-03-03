//scr_hide_pop_up();
/*
instance_destroy(obj_pop_up_bg);
instance_destroy(obj_pop_up_name_pnj);
instance_destroy(obj_pop_up_bio_pnj);
instance_destroy(obj_pop_up_display);
instance_destroy(obj_meta_bloc_text_bio);
instance_destroy(obj_bouton_kill_pnj);
instance_destroy(obj_bouton_link_sup);
instance_destroy(obj_bouton_link_secret);*/

var layer_id = layer_get_id("Instances_UI_above");
instance_create_layer(0,0,layer_id,obj_fond_noir);

var pop_up = instance_create_layer(room_width/2,400,layer_id,obj_pop_up_last_phase);
var pop_up_bouton_back = instance_create_layer(pop_up.x,pop_up.y+150,layer_id,obj_pop_up_bouton_back);
pop_up.depth -= 1;
pop_up_bouton_back.depth -= 2;

obj_persistent.not_clickable = true;