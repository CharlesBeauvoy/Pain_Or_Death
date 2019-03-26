///@param texte

var pop_in = instance_create_layer(mouse_x+30,mouse_y+30,"Instances_UI_above",obj_pop_in);

draw_set_font(fnt_pop_in);
pop_in.image_xscale = string_width_ext(argument0,25,100)+10;
pop_in.image_yscale = string_height_ext(argument0,25,100)+10;
pop_in.texte = argument0;