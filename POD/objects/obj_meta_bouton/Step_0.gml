if obj_persistent.is_pnj_dying
	return -1;

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)
{
	obj_persistent.button_selected = self.object_index;
	window_set_cursor(cr_handpoint);
	if mouse_check_button_released(mb_left)
	{
		script_execute(script_left_released);
		window_set_cursor(cr_handpoint);
	}
}
else if !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)
{
	if obj_persistent.button_selected == self.object_index
	{
		window_set_cursor(cr_default);
		obj_persistent.button_selected = noone;
	}
}