scr_hide_pop_up();

var layer_id = layer_get_id("Instances_UI_above");
instance_create_layer(obj_persistent.camera_view_port_x,obj_persistent.camera_view_port_y,layer_id,obj_fond_noir);

var pop_up = instance_create_layer(obj_persistent.camera_view_port_x+obj_persistent.camera_view_port_width/2,obj_persistent.camera_view_port_y+400,layer_id,obj_pop_up_last_phase);
var pop_up_bouton_back = instance_create_layer(pop_up.x,pop_up.y+150,layer_id,obj_pop_up_bouton_back);
pop_up.depth -= 1;
pop_up_bouton_back.depth -= 2;

obj_persistent.not_clickable = true;