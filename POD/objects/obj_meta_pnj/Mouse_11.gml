window_set_cursor(cr_default);
if !instance_exists(obj_pop_up_bg)
{
	obj_persistent.pnj_hovered = noone;
	draw_relation_link = false;
	with obj_pnj_relation_sup
		draw = false;
}