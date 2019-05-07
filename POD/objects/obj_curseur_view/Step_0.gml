// in Step
var mw = mouse_wheel_up() - mouse_wheel_down();
if (mw < 0 and 1920*zoom*sqrt(1.1) < room_width) or (mw > 0 and 1920*zoom/sqrt(1.1) > 1920)
{
	var mx = mouse_x, my = mouse_y;
	var cx = (mx - camera_get_view_x(view_camera[0])) / zoom;
	var cy = (my - camera_get_view_y(view_camera[0])) / zoom;
	if (mw < 0)
	    zoom *= sqrt(1.1);
	else
		zoom /= sqrt(1.1);

	camera_set_view_size(view_camera[0],1920*zoom,1920*zoom*obj_persistent.coef_proportion);
	var coorx = clamp(mx - cx * zoom,0,room_width-camera_get_view_width(view_camera[0]));
	var coory = clamp(my - cy * zoom,0,room_height-camera_get_view_height(view_camera[0]));
	camera_set_view_pos(view_camera[0],coorx,coory);
}

if mouse_check_button_pressed(mb_left) and instance_place(x,y,all) == noone
{
	mouse_xstart = window_views_mouse_get_x();
	mouse_ystart = window_views_mouse_get_y();
}
if mouse_check_button(mb_left)
{
	var posx = camera_get_view_x(view_camera[0])+mouse_xstart - window_views_mouse_get_x();
	var posy = camera_get_view_y(view_camera[0])+mouse_ystart - window_views_mouse_get_y();
	camera_set_view_pos(view_camera[0],clamp(posx,0,room_width-camera_get_view_width(view_camera[0])),clamp(posy,0,room_height-camera_get_view_height(view_camera[0])));
}