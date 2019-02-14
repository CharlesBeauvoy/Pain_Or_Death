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
			draw_line_width(x,y,tmp.x,tmp.y,line_width);
		}
	}
}
if draw_pop_up_link
{
	draw_set_color(c_red);
	draw_line_width(x,y,obj_pop_up_bg.x,obj_pop_up_bg.y,5);
}
if visited
{
	draw_set_color(c_white);
	draw_set_font(fnt_debug_mode);
	draw_set_halign(true);
	draw_text(x,y-sprite_height,name);
	draw_set_halign(false)
}

draw_self();
if marked
	scr_draw_center_object(fnt_marked,c_red,"X");