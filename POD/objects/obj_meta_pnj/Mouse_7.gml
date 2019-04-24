if obj_persistent.button_selected != noone
	return -1;
if instance_exists(obj_etiquette_relation)
	return scr_infos_contexte("Vous devez d'abord choisir une etiquette");

with obj_meta_pnj
	draw_ghost_arrow = false;

if !instance_exists(obj_timing) and !obj_persistent.not_clickable
{
	if visited == false and !instance_exists(obj_timing)
	{
		scr_hide_pop_up();
		scr_display_pop_up(self,true);
	}
	else if visited
	{
		scr_hide_pop_up();
		scr_display_pop_up(self, true);
	}
	scr_set_avatar_pnj();
}
else if instance_exists(obj_timing)
{
	obj_persistent.pnj_selected = self;
	scr_set_avatar_pnj();
	scr_bouton_marked();
}