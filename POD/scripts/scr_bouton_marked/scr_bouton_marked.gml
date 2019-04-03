if obj_persistent.pnj_marked == obj_persistent.pnj_selected
{
	obj_persistent.pnj_selected.marked = false;
	obj_persistent.pnj_marked = noone;
	scr_infos_contexte("Ce pnj n'est plus destiné à la mort");
}
else
{
	if obj_persistent.pnj_marked != noone
	{
		with obj_meta_pnj
			marked = false;
	}
	obj_persistent.pnj_selected.marked = true;
	obj_persistent.pnj_marked = obj_persistent.pnj_selected;
	scr_infos_contexte("Ce pnj a été selectionné pour mourir");
}