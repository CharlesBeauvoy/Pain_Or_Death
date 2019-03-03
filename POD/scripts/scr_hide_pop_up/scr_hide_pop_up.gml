if instance_exists(obj_persistent.pnj_selected)
{
	obj_persistent.pnj_selected.draw_relation_link = false;
	obj_persistent.pnj_selected.draw_pop_up_link = false;
	obj_persistent.pnj_selected.sprite_index = spr_pnj_unlocked;
}
obj_persistent.pnj_selected = noone;

instance_destroy(obj_pop_up_bg);
instance_destroy(obj_pop_up_name_pnj);
instance_destroy(obj_pop_up_bio_pnj);
instance_destroy(obj_pop_up_display);
instance_destroy(obj_meta_bloc_text_bio);
instance_destroy(obj_bouton_kill_pnj);