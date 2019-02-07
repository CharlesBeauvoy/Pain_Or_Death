if draw_relation_link
{
	var line_width = 5;
	draw_set_color(c_white);
	for(var i=0; i< ds_list_size(list_relation);i++)
	{
		var tmp = ds_list_find_value(list_relation,i);
		if tmp == obj_persistent.pnj_hovered
			line_width = 10;
		else line_width = 5;
		draw_line_width(x,y,tmp.x,tmp.y,line_width);
	}
}
if draw_pop_up_link
{
	draw_set_color(c_red);
	draw_line_width(x,y,obj_pop_up_bg.x,obj_pop_up_bg.y,5);
}
draw_self();