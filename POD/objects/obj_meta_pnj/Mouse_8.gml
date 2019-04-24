if obj_persistent.pnj_ghosted != self
{
	with obj_persistent.pnj_ghosted
	{
		ds_list_add(list_relation_sup,other.object_index);
		ds_list_add(list_relation_weigth_sup,2);
		ds_list_add(list_relation_sup_text,"");
		var tmp = instance_create_depth(x,y,-100,obj_pnj_relation_sup);
		tmp.pnj_source = self;
		tmp.pnj_destination = other
		tmp.draw = true;
		ds_list_add(list_relation_sup_obj,tmp);
		draw_ghost_arrow = false;
		depth += 100;
	}
	obj_persistent.pnj_ghosted = noone;
}
else
{
	draw_ghost_arrow = false;
	obj_persistent.pnj_ghosted = noone;
}

if !obj_persistent.not_clickable and obj_persistent.pnj_selected == self and !obj_persistent.pnj_ghosted
{
	depth -= 100;
	draw_ghost_arrow = true;
	obj_persistent.pnj_ghosted = self
}
