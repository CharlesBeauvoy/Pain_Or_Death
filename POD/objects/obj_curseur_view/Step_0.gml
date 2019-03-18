destX = mouse_x;
destY = mouse_y;

if device_mouse_x_to_gui(0) < 200 or device_mouse_x_to_gui(0) > 1700 or device_mouse_y_to_gui(0) < 200 or device_mouse_y_to_gui(0) > 800
	delta = 7;
else
	delta = 4;
move_towards_point(destX, destY, delta);