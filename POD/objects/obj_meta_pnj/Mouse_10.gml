if !obj_persistent.not_clickable
{
	window_set_cursor(cr_handpoint);
	if visited and !instance_exists(obj_pop_up_bg)
		draw_relation_link = true;
}