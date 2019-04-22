if instance_exists(obj_persistent.pnj_selected)
{
	obj_persistent.pnj_selected.draw_relation_link = false;
	obj_persistent.pnj_selected.draw_pop_up_link = false;
}
//obj_persistent.pnj_selected = noone;

instance_destroy(obj_pop_up_bg);
instance_destroy(obj_pop_up_bouton_see);
instance_destroy(obj_bouton_bio);
if instance_exists(obj_pop_up_display)
{
	obj_pop_up_display.x = obj_persistent.gui_width-obj_pop_up_display.sprite_width;
	obj_pop_up_display.sprite_index = spr_pop_up_quit_rev;
}
instance_destroy(obj_meta_bloc_text_bio);
instance_destroy(obj_bouton_link_sup);
instance_destroy(obj_bouton_link_secret);
instance_destroy(obj_bouton_marked);
with obj_bouton_pd_etiquette
{
	if clicked
		script_execute(script_left_released);
}
instance_destroy(obj_bouton_pd_etiquette);
instance_destroy(obj_timer_feature);
instance_destroy(obj_bouton_pd_watch_soul);
instance_destroy(obj_bouton_pd_listen_dream);
instance_destroy(obj_bouton_pd_marche_dream);
instance_destroy(obj_InputBox);