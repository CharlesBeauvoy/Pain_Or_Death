if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_width, y - sprite_height/2, x + sprite_width, y + sprite_height/2)
{
	obj_persistent.button_selected = self;
	window_set_cursor(cr_handpoint);
	if mouse_check_button_released(mb_left)
		script_execute(script_left_released)
}
else
{
	if obj_persistent.button_selected == self
		window_set_cursor(cr_default);
}