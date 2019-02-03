draw_set_font(fnt_debug_mode);
draw_set_color(c_white);

for(var i=0; i<ds_list_size(instruction_list);i++)
	draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+10+i*50,ds_list_find_value(instruction_list,i))