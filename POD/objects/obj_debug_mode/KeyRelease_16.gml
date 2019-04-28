if !instance_exists(obj_InputBox)
{
	if zoom == false
		camera_set_view_size(view_camera[0],room_width, room_width*obj_persistent.coef_proportion);
	else
		camera_set_view_size(view_camera[0],1920, 1080);

	obj_persistent.camera_view_port_width = camera_get_view_width(view_camera[0]);
	obj_persistent.camera_view_port_height = camera_get_view_height(view_camera[0]);
	camera_set_view_pos(view_camera[0],0,0);
	zoom = !zoom;
}