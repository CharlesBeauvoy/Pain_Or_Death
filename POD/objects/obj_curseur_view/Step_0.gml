// in Step
var mw = mouse_wheel_up() - mouse_wheel_down();
if mw != 0
{
    var mx = mouse_x, my = mouse_y;
    var cx = (mx - camera_get_view_x(view_camera[0])) / zoom;
    var cy = (my - camera_get_view_y(view_camera[0])) / zoom;
    if (mw < 0)
        zoom *= sqrt(1.1);
	else
		zoom /= sqrt(1.1);

	camera_set_view_size(view_camera[0],1920*zoom,1920*zoom*obj_persistent.coef_proportion);
	var coorx = mx - cx * zoom;
	var coory = my - cy * zoom;
	camera_set_view_pos(view_camera[0],coorx,coory);
}