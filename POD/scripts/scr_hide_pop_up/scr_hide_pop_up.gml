if obj_persistent.pnj_selected != noone
{
	obj_persistent.pnj_selected.draw_relation_link = false;
	obj_persistent.pnj_selected.draw_pop_up_link = false;
	obj_persistent.pnj_selected = noone;
}

instance_destroy(obj_pop_up_bg);
instance_destroy(obj_pop_up_name_pnj);
instance_destroy(obj_pop_up_bio_pnj);
instance_destroy(obj_pop_up_bandeau);
instance_destroy(obj_pop_up_quit);