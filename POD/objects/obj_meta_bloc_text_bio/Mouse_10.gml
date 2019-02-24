if hyperlink and !obj_persistent.not_clickable
{
	window_set_cursor(cr_handpoint);
	font = fnt_pop_up_bio_bold;
	if obj_persistent.pnj_hovered == noone
	{
		obj_persistent.pnj_hovered = scr_find_pnj_index(texte);
		if obj_persistent.pnj_hovered != noone
			obj_persistent.pnj_hovered.alarm[0] = 1;
	}
}