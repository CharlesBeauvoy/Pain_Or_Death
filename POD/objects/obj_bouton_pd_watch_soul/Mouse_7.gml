if !clicked
{
	color = c_black;
	image_blend = c_white;
	timer = instance_create_layer(x-sprite_width/2-sprite_get_width(spr_timer_feature)/2,y,"Instances_panel_droit",obj_timer_feature);
	timer.texte = obj_persistent.pnj_selected.watch_soul_count;
	with obj_persistent.pnj_selected
		alarm[3] = room_speed;
}
else
{
	color = c_white;
	image_blend = c_black;
	instance_destroy(timer);
	timer = noone;
	obj_persistent.pnj_selected.watch_soul_count = 30;
	obj_persistent.pnj_selected.alarm[3] = -1;
}
clicked = !clicked;