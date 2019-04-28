var amount = 1+argument0;

var zoom_width = camera_get_view_width(view_camera[0]);

//var offx = abs(zoom_width*amount - zoom_width);
//var offy = abs(zoom_height*amount - zoom_height);

camera_set_view_size(view_camera[0],clamp(zoom_width*amount,1920,room_width),clamp(zoom_width*amount*obj_persistent.coef_proportion,1080,room_height));

/*
if amount < 1
{
	camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0])+offx/2,0,room_width-zoom_width),clamp(camera_get_view_y(view_camera[0])+offy/2,0,room_height-zoom_height));
}
else if amount > 1
{
	camera_set_view_pos(view_camera[0],clamp(camera_get_view_x(view_camera[0])-offx/2,0,room_width-zoom_width),clamp(camera_get_view_y(view_camera[0])-offy/2,0,room_height-zoom_height));
}