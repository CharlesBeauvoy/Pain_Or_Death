if obj_persistent.pnj_selected == self and draw_ghost_arrow and instance_position( mouse_x,mouse_y,obj_meta_pnj) == noone
{
	draw_ghost_arrow =  false;
	obj_persistent.pnj_ghosted = noone;
}