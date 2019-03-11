with obj_meta_pnj
{
	if self == obj_persistent.pnj_selected
		sprite_index = spr_pnj_selected;
	else
	{
		if visited
			sprite_index = spr_pnj_unlocked;
		else
			sprite_index = spr_pnj_unknown
	}
}