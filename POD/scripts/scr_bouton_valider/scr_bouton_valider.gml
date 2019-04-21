if obj_bouton_pd_listen_dream.clicked
{
	with obj_bouton_pd_listen_dream
	{
		instance_destroy(obj_bouton_moins);
		instance_destroy(obj_bouton_plus);

		timer.x = x-sprite_width/2-sprite_get_width(spr_timer_feature)/2
		timer.y = y;
		timer.texte = obj_persistent.pnj_selected.watch_soul_count*timer.texte;
		timer.visible = false;
	
		obj_persistent.pnj_selected.watch_soul_count = timer.texte;
		with obj_persistent.pnj_selected
			alarm[3] = room_speed;
		instance_destroy(obj_bouton_valider);
	}
}
else
{
	with obj_bouton_pd_marche_dream
	{
		if obj_InputBox.displaytext == "" or real(obj_InputBox.displaytext) > 100 
			return scr_infos_contexte("Vous devez rentrer une valeur entre 1 et 100");
			
		//X% de chance d'avoir une info sur un LIEN ou une variable de l'être aimé
		
		//X/4% de le tourmenter
		var rdm = irandom_range(0,100);
		if rdm <= real(obj_InputBox.displaytext)/4
			scr_gain_souffrance(20);
	}
}