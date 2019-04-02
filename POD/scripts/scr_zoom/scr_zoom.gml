var amount = 1+argument0;

var zoom_width = camera_get_view_width(view_camera[0]);
var zoom_height = camera_get_view_height(view_camera[0]);

var offx = abs(zoom_width*amount - zoom_width);
var offy = abs(zoom_height*amount - zoom_height);

camera_set_view_size(view_camera[0],zoom_width*amount,zoom_height*amount);

if amount < 1
{
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+offx/2,camera_get_view_y(view_camera[0])+offy/2);
}
else if amount > 1
{
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-offx/2,camera_get_view_y(view_camera[0])-offy/2);
}