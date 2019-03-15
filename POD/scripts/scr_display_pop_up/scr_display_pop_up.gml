///@param instance
///@param full_panel

///@description on affiche la pop d'information/action lorsqu'on a click sur un pnj

obj_persistent.pnj_selected = argument0;
argument0.draw_relation_link = true;
argument0.draw_pop_up_link = true;

var layer_id = layer_get_id("Instances_panel_droit");

var pop_up_bg = instance_create_layer(room_width-sprite_get_width(spr_panel_selection_pnj)/2,0,layer_id,obj_pop_up_bg);
instance_destroy(obj_pop_up_display);
var pop_up_quit = instance_create_layer(pop_up_bg.x-pop_up_bg.sprite_width/2,50,layer_id,obj_pop_up_display);

//var pop_up_name = instance_create_layer(pop_up_bg.x,pop_up_bg.y+50,layer_id,obj_pop_up_name_pnj);
//pop_up_name.texte = argument0.name;

//pop_up_name.depth -= 1;
pop_up_quit.depth -= 2;

if argument1 == true
{
	var bouton_pd_ws = instance_create_layer(pop_up_bg.x-pop_up_bg.sprite_width/2-sprite_get_width(spr_bouton_panel_droit)/2,pop_up_bg.y+150,layer_id,obj_bouton_pd_listen_dream);
	var bouton_pd_ld = instance_create_layer(pop_up_bg.x-pop_up_bg.sprite_width/2-sprite_get_width(spr_bouton_panel_droit)/2,obj_bouton_pd_listen_dream.y+50,layer_id,obj_bouton_pd_watch_soul);
	var bouton_pd_etiquette = instance_create_layer(pop_up_bg.x-pop_up_bg.sprite_width/2-sprite_get_width(spr_bouton_panel_droit)/2,obj_bouton_pd_watch_soul.y+50,layer_id,obj_bouton_pd_etiquette);
	
	if ds_stack_size(argument0.list_relation_sup)
	{
		var bouton_sup = instance_create_layer(pop_up_bg.x,pop_up_bg.y+700,layer_id,obj_bouton_link_sup);
		bouton_sup.depth -= 2;
	}
	if ds_stack_size(argument0.list_relation_secret)
	{
		var bouton_secret = instance_create_layer(pop_up_bg.x,pop_up_bg.y+800,layer_id,obj_bouton_link_secret);
		bouton_secret.depth -= 2;
	}
	obj_persistent.pnj_selected.bio_height = 0;
	for(var i =0; i< ds_list_size(argument0.list_relation_text);i++)
		scr_display_bloc_texte_bio(ds_list_find_value(argument0.list_relation_text,i));
}
else if argument1 == false
{
	var bouton_see_more = instance_create_layer(pop_up_bg.x,room_height/2,layer_id,obj_pop_up_bouton_see);
	bouton_see_more.depth -= 4;
}

