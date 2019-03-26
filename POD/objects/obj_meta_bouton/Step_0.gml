if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)
{
	obj_persistent.button_selected = self.object_index;
	window_set_cursor(cr_handpoint);
	if mouse_check_button_released(mb_left)
	{
		script_execute(script_left_released);
		//event_perform(ev_mouse,ev_left_release);
		window_set_cursor(cr_default);
	}
}
else
{
	if obj_persistent.button_selected == self.object_index
		window_set_cursor(cr_default);
}