if draw_relation_link
{
	draw_set_color(c_white);
	for(var i=0; i< ds_list_size(list_relation);i++)
	{
		var tmp = ds_list_find_value(list_relation,i);
		draw_line_width(x,y,tmp.x,tmp.y,5);
	}
}
if draw_pop_up_link
{
	draw_set_color(c_red);
	draw_line_width(x,y,obj_pop_up_bg.x,obj_pop_up_bg.y,5);
}
draw_self();