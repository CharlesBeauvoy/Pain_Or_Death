if keyboard_check_pressed(vk_control) and !instance_exists(obj_curseur_view)
{
	instance_create_layer(gui_width/2, gui_height/2, "Instances", obj_curseur_view);
}

camera_view_port_x = camera_get_view_x(view_camera[0]);
camera_view_port_y = camera_get_view_y(view_camera[0]);