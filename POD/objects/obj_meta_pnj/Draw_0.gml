draw_self();
if draw_relation_link
{
	var line_width;
	draw_set_color(c_white);
	for(var i=0; i< ds_list_size(list_relation);i++)
	{
		var tmp = ds_list_find_value(list_relation,i);
		if instance_exists(tmp)
		{
			line_width = 5 + ds_list_find_value(list_relation_weigth,i);
			if tmp == obj_persistent.pnj_hovered
				line_width *= 2;
			scr_draw_arrow(tmp,line_width,self);
		}
	}
	draw_set_color(c_orange);
	with obj_meta_pnj
	{
		var obj = noone
		if obj_persistent.pnj_selected != noone
			obj = obj_persistent.pnj_selected.object_index;
		else if obj_persistent.pnj_hovered != noone
			obj = obj_persistent.pnj_hovered.object_index;
			
		var index = ds_list_find_index(list_relation,obj);
		if visited and index != -1
		{
			line_width = 5 + ds_list_find_value(list_relation_weigth,index);
			scr_draw_arrow(obj,line_width,self);
		}
	}
}
if draw_pop_up_link
{
	draw_set_color(c_red);
	draw_line_width(x,y,obj_pop_up_bg.x,obj_pop_up_bg.y,5);
}
if visited or known
	scr_draw_center_object(fnt_debug_mode,c_white,name);
if visited
{
	if self != obj_persistent.pnj_selected
	{
	}
}
if marked
	scr_draw_center_object(fnt_marked,c_red,"X");