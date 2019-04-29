var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

var _mouse_x = (mouse_x - cam_x)/cam_width;
var _mouse_y = (mouse_y - cam_y)/cam_height;

camera_set_view_size(view_camera[0],base_width/zoom,base_height/zoom);
camera_set_view_pos(view_camera[0], mouse_x-cam_width*_mouse_x, mouse_y-cam_height*_mouse_y);