///@param pnj

with argument0
{		
	scr_watch_soul(self); // on devoile la nouvelle information
	scr_gain_day(1); //on progresse d'une nuit
	scr_loss_sang(1);
	scr_infos_contexte("L'âme de "+self.name+" est connue");// on affiche du contexte

}