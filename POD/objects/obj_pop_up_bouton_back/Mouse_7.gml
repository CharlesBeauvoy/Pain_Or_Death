/*if instance_exists(obj_pop_up_hyperlink)
	scr_hide_pop_up_hyperlink();
else*/ if instance_exists(obj_pop_up_last_phase)
{
	var layer_id = layer_get_id("Instances_UI_above");
	instance_create_layer(obj_persistent.camera_view_port_width/2, 100,layer_id, obj_timing);
	instance_create_layer(obj_persistent.camera_view_port_width/2+obj_timing.sprite_width, 100,layer_id, obj_pop_up_lp_done);
	scr_hide_pop_up_lp();
}

window_set_cursor(cr_default);