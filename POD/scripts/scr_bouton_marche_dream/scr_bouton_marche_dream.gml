with obj_bouton_pd_marche_dream
{
	if obj_persistent.pnj_selected.number_pnj_know >= ds_list_size(obj_persistent.pnj_selected.clef_relation)
		return scr_infos_contexte("Vous avez découvert toutes ses relations")
	if !clicked
	{
		scr_close_bouton();
		color = c_black;
		image_blend = c_white;
		
		instance_create_layer(x-sprite_width/2-100/2,y,"Instances_panel_droit",obj_InputBox);
		instance_create_layer(obj_InputBox.x-sprite_get_width(spr_valider)*2,y,"Instances_panel_droit",obj_bouton_valider);
	}
	else
	{
		color = c_white;
		image_blend = c_black;
		
		instance_destroy(obj_InputBox);
		instance_destroy(obj_bouton_valider);
	}
	clicked = !clicked;	
}