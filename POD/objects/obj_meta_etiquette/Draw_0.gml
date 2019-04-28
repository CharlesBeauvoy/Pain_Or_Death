event_inherited();
if pnj_linked != noone
{
	draw_self();
}
if self.object_index == obj_etiquette_relation
{
	draw_self();
	scr_draw_center_object(font,color,texte,image_xscale,image_yscale,0);
}