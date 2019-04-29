if mouse_wheel_down() and zoom>zoom_min
{
	zoom -= 0.1;
	event_user(0);	
}
else if mouse_wheel_up() and zoom<zoom_max
{
	zoom += 0.1;
	event_user(0);
}