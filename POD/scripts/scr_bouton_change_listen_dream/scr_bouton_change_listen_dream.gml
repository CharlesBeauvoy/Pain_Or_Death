var coef = -1
if object_index == obj_bouton_plus
	coef = 1;

with obj_bouton_pd_listen_dream
{
	if (timer.texte > 1 and coef < 0) or (timer.texte < ds_list_size(obj_persistent.list_key_pnj) - obj_persistent.pnj_selected.info_known and coef > 0)
		timer.texte += 1*coef;
}