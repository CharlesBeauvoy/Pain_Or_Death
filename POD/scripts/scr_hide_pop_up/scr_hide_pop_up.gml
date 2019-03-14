if instance_exists(obj_persistent.pnj_selected)
{
	obj_persistent.pnj_selected.draw_relation_link = false;
	obj_persistent.pnj_selected.draw_pop_up_link = false;
}
//obj_persistent.pnj_selected = noone;

instance_destroy(obj_pop_up_bg);
instance_destroy(obj_pop_up_name_pnj);
instance_destroy(obj_pop_up_bio_pnj);
instance_destroy(obj_pop_up_bouton_see);
//instance_destroy(obj_pop_up_display);
if instance_exists(obj_pop_up_display)
{
	obj_pop_up_display.x = room_width-obj_pop_up_display.sprite_width;
	obj_pop_up_display.image_xscale *= -1;
}
instance_destroy(obj_meta_bloc_text_bio);
instance_destroy(obj_bouton_kill_pnj);
instance_destroy(obj_bouton_link_sup);
instance_destroy(obj_bouton_link_secret);

instance_destroy(obj_bouton_pd_etiquette);