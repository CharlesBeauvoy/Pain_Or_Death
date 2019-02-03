y = camera_get_view_y(view_camera[0])+origin_y;
x = camera_get_view_x(view_camera[0])+origin_x;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_set_font(fnt_jauge);
draw_set_color(c_white);

draw_text(x,y-50,type+" "+string(value_current)+" / "+string(value_thresold));