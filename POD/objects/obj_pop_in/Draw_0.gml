draw_set_font(fnt_pop_in);
draw_set_color(c_black);

var x_scale = camera_get_view_width(view_camera[0]) / 1920;
var y_scale = camera_get_view_height(view_camera[0]) / 1080;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*x_scale,image_yscale*y_scale,image_angle,c_white,image_alpha);

draw_text_ext_transformed(x+5,y+5,texte,25,100,x_scale,y_scale,image_angle);