///@param pnj_name

///@description retourne l'index du pnj dont on a le nom

with obj_meta_pnj
{
	if self.name = argument0
		return self.object_index;	
}
return noone;