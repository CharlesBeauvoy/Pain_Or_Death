///@param string

var str = argument0 + chr(32);

var liste_mot = ds_list_create();
var mot = "";

for(var i=1; i<string_length(str)+1; i++)
{
	var char = string_char_at(str,i);
	if char != chr(32)
		mot += char;
	else
	{
		ds_list_add(liste_mot,mot);
		mot = "";
	}
}

var posX = obj_pop_up_bg.x -obj_pop_up_bg.sprite_width/2 + 20;
var posY = obj_pop_up_bg.y + 250;
var layer_id = layer_get_id("Instances_panel_droit");

var espacement = 10;
var interlignage = obj_persistent.pnj_selected.bio_height;

var largeur = 0;
draw_set_font(fnt_pop_up_bio);

for(var i=0; i< ds_list_size(liste_mot); i++)
{
	var bloc_mot = instance_create_layer(posX + largeur,posY + interlignage,layer_id,obj_meta_bloc_text_bio);
	bloc_mot.texte = ds_list_find_value(liste_mot,i);
	bloc_mot.image_xscale = string_width(bloc_mot.texte) / bloc_mot.sprite_width;
	bloc_mot.image_yscale = string_height(bloc_mot.texte) / bloc_mot.sprite_height;
	bloc_mot.depth -= 3;
	
	largeur += (espacement + bloc_mot.sprite_width);
	if largeur >= obj_pop_up_bg.sprite_width - 20
	{
		largeur = 0;
		interlignage += 40;
		if bloc_mot.x + bloc_mot.sprite_width > obj_pop_up_bg.x + obj_pop_up_bg.sprite_width/2
		{
			bloc_mot.x = posX;
			bloc_mot.y = posY + interlignage;
			largeur += (bloc_mot.sprite_width + espacement);
			bloc_mot.offset_x = obj_pop_up_bg.x - bloc_mot.x;
			bloc_mot.offset_y = obj_pop_up_bg.y - bloc_mot.y;
		}
	}
	if ds_list_find_index(obj_persistent.listing_name_pnj,bloc_mot.texte) != -1
		bloc_mot.hyperlink = true;
}
if interlignage <= 0
	interlignage += 40;
obj_persistent.pnj_selected.bio_height += interlignage;