var is_a_pnj_marked = false;
for(var i=0; i<instance_number(obj_meta_pnj); i++)
{
	var tmp_obj = instance_find(obj_meta_pnj,i)
	if tmp_obj.marked
	{
		is_a_pnj_marked = true;
		tmp_obj.alarm[2] = 1;
		instance_destroy(tmp_obj.signe);
	}
}
if is_a_pnj_marked == false // si aucun pnj n'a ete selectionne
{
	var rdm = irandom_range(0,instance_number(obj_meta_pnj)-1);
	var rdm_obj = instance_find(obj_meta_pnj,rdm);
	if obj_persistent.pnj_selected == rdm_obj.object_index
		scr_hide_pop_up();
	rdm_obj.alarm[2] = 1;
	instance_destroy(rdm_obj.signe);
}
obj_persistent.pnj_marked = noone;
	
instance_destroy(obj_pop_up_lp_done);
instance_destroy(self);

/*scr_hide_pop_up();

var layer_id = layer_get_id("Instances_UI_above");
instance_create_layer(obj_persistent.camera_view_port_x,obj_persistent.camera_view_port_y,layer_id,obj_fond_noir);

var pop_up = instance_create_layer(obj_persistent.camera_view_port_x+obj_persistent.camera_view_port_width/2,obj_persistent.camera_view_port_y+400,layer_id,obj_pop_up_last_phase);
var pop_up_bouton_back = instance_create_layer(pop_up.x,pop_up.y+150,layer_id,obj_pop_up_bouton_back);
pop_up.depth -= 1;
pop_up_bouton_back.depth -= 2;

obj_persistent.not_clickable = true;*/