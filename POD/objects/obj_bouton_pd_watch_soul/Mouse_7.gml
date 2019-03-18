if obj_persistent.pnj_selected.info_known >= 6
	return scr_infos_contexte("Toute l'âme de "+obj_persistent.pnj_selected.name+" est découverte");
if !clicked
{
	scr_loss_sang(20);
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
	obj_persistent.pnj_selected.watch_soul_count = obj_persistent.pnj_selected.watch_soul_count_base;
	obj_persistent.pnj_selected.alarm[3] = -1;
}
clicked = !clicked;