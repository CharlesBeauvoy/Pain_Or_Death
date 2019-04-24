with obj_bouton_pd_link_dream
{
	if ds_list_size(obj_persistent.pnj_selected.list_relation_sup) <= 0
		return scr_infos_contexte("Aucun rêve à lier");
	if !clicked
	{
		scr_close_bouton();
		color = c_black;
		image_blend = c_white;
	}
	else
	{
		color = c_white;
		image_blend = c_black;
	}
	clicked = !clicked;	
}