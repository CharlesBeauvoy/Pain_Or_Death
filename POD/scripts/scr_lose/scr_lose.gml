obj_persistent.not_clickable = true;

if instance_exists(obj_pop_up_bg)
	scr_hide_pop_up();
obj_persistent.pnj_selected = noone;
obj_persistent.pnj_hovered = noone;

for(var i=0; i< instance_number(obj_meta_pnj); i++)
{
	var pnj = instance_find(obj_meta_pnj, i);
	if instance_exists(pnj)
		pnj.alarm[2] = i*15+1;
}

obj_persistent.alarm[0] = (i+1)*20;