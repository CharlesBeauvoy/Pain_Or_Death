event_inherited();

clicked = false;
selected_key = "";
selected_key_name = "";

image_blend = c_black;
timer = noone;
/*
if obj_persistent.pnj_selected.alarm[3] > 0
{
	timer = instance_create_layer(x-sprite_width/2-sprite_get_width(spr_timer_feature)/2,y,"Instances_panel_droit",obj_timer_feature);
	timer.texte = obj_persistent.pnj_selected.watch_soul_count;
	
	clicked = true;
	color = c_black;
	image_blend = c_white;
}