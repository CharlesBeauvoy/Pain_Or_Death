if room == rm_main
	x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
else if room == rm_relation
	x = 150;
y = camera_get_view_y(view_camera[0])+origin_y;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

draw_set_font(fnt_jauge);
draw_set_color(c_black);

draw_set_halign(true);
draw_set_valign(true);

draw_text(x,y,ds_list_find_value(month_list,obj_persistent.action_number));

draw_set_halign(false);
draw_set_valign(false);