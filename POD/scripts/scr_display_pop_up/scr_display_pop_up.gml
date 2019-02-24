///@param instance

///@description on affiche la pop d'information/action lorsqu'on a click sur un pnj

obj_persistent.pnj_selected = argument0;
argument0.draw_relation_link = true;
argument0.draw_pop_up_link = true;

// on calcule les bonnes coordonnées pour placer correctement la pop-up en fonction de la position du pnj
var posX = argument0.x - argument0.sprite_width - sprite_get_width(spr_panel_selection_pnj)/2;  // on aligne en largeur
var posY = argument0.y - argument0.sprite_height/2; // on aligne en hauteur

if posX - sprite_get_width(spr_panel_selection_pnj)/2 < 0
	posX = argument0.x + argument0.sprite_width + sprite_get_width(spr_panel_selection_pnj)/2;
if posY + sprite_get_height(spr_panel_selection_pnj) > room_height
	posY = posY - (posY+sprite_get_height(spr_panel_selection_pnj) - room_height) - 50;

var layer_id = layer_get_id("Instances_selection_pnj");

var pop_up_bg = instance_create_layer(posX,posY,layer_id,obj_pop_up_bg);
var pop_up_bandeau = instance_create_layer(posX,posY,layer_id,obj_pop_up_bandeau);
var pop_up_quit = instance_create_layer(posX+sprite_get_width(spr_panel_selection_pnj)/2,posY,layer_id,obj_pop_up_quit);

var pop_up_name = instance_create_layer(pop_up_bg.x,pop_up_bg.y+50,layer_id,obj_pop_up_name_pnj);
pop_up_name.texte = argument0.name;

if instance_exists(obj_timing)
{
	var pop_up_bouton_kill = instance_create_layer(pop_up_bg.x,pop_up_bg.y+pop_up_bg.sprite_height+50,layer_id,obj_bouton_kill_pnj);
	pop_up_bouton_kill.depth -= 1;
}
pop_up_name.depth -= 1;
pop_up_bandeau.depth -= 1;
pop_up_quit.depth -= 2;

scr_display_bloc_texte_bio(argument0.bio);