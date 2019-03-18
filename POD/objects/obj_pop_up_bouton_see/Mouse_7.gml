obj_persistent.not_clickable = false;
//if instance_exists(obj_persistent.pnj_selected) and obj_persistent.pnj_selected.visited
//	obj_persistent.pnj_selected.sprite_index = spr_pnj_unlocked;
	
var obj = noone;
if !instance_exists(obj_pop_up_hyperlink)
	obj = obj_persistent.pnj_selected;
else
	obj = obj_pop_up_hyperlink.pnj_hovered;
with obj
{
	visited = true;
	event_perform(ev_mouse,ev_left_release);
}

scr_loss_sang(10); //tribut de sang pour reveler un personnage
for(var i=0;i<ds_list_size(obj.list_relation);i++)
{
	var tmp = ds_list_find_value(obj.list_relation,i)
	tmp.known = true;
	ds_map_replace(tmp.map_information_known,"name",tmp.name);
	tmp.info_known += 1;
}
scr_hide_pop_up_hyperlink();
scr_gain_day(20); //tribut de sang pour reveler un personnage
ds_map_replace(obj_persistent.pnj_selected.map_information_known,"name",obj_persistent.pnj_selected.name);
obj_persistent.pnj_selected.info_known += 1;
//obj_persistent.pnj_selected.sprite_index = spr_pnj_selected;