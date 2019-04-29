if moving_view
{
	camera_view_port_x = camera_view_port_x + drag_x - mouse_x
    camera_view_port_y = camera_view_port_y + drag_y - mouse_y
	camera_set_view_pos(view_camera[0],clamp(camera_view_port_x,0,room_width-camera_get_view_width(view_camera[0])),clamp(camera_view_port_y,0,room_height-camera_get_view_height(view_camera[0])));
}