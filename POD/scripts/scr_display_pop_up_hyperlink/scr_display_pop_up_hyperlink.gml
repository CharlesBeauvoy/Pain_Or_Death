var layer_id = layer_get_id("Instances_UI_above");
instance_create_layer(0,0,layer_id,obj_fond_noir);

var pop_up = instance_create_layer(room_width/2,400,layer_id,obj_pop_up_hyperlink);
var pop_up_bouton_see = instance_create_layer(pop_up.x,pop_up.y+150,layer_id,obj_pop_up_bouton_see);
var pop_up_bouton_back = instance_create_layer(pop_up.x,pop_up_bouton_see.y+100,layer_id,obj_pop_up_bouton_back);

pop_up.depth -= 1;
pop_up_bouton_see.depth -= 2;
pop_up_bouton_back.depth -= 2;

obj_persistent.not_clickable = true;