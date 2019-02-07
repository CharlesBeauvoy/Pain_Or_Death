if following_mouse
{
	x = mouse_x;
	y = mouse_y;
	
	obj_pop_up_bg.x = x;
	obj_pop_up_bg.y = y;
	
	obj_pop_up_quit.x = obj_pop_up_bg.x + obj_pop_up_bg.sprite_width/2;
	obj_pop_up_quit.y = y;
	
	obj_pop_up_name_pnj.x = x;
	obj_pop_up_name_pnj.y = y + 50;
	
	with obj_meta_bloc_text_bio
	{
		x = obj_pop_up_bg.x - offset_x;
		y = obj_pop_up_bg.y - offset_y;
	}
}