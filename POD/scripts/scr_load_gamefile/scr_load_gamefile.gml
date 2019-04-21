var str = scr_open_txt_file_str(argument0);
var theMap = json_decode(str);
var clef = ds_map_find_first(theMap);
var map_correspondance = ds_map_create();
/*
while ds_map_exists(theMap,clef)
{
	var theMiniMap = ds_map_find_value(theMap,clef)
	var box = noone;
	var posX = real(theMiniMap[? "posX"]);
	var posY = real(theMiniMap[? "posY"]);
	
	if theMiniMap[? "type"] == "Choice"
		box = instance_create_depth(posX,posY,-1,obj_input_choice_ada); //surement retirer la position de la view
	else
		box = instance_create_depth(posX,posY,-1,obj_input_texte_ada);
		
	box.id_unique = clef;
	ds_map_add(map_correspondance,box.id_unique,box.id)
	box.texte.text_draw = theMiniMap[? "texte"];
	box.texte.text = theMiniMap[? "texte"];
	box.titre.text_draw = theMiniMap[? "titre"];
	box.titre.text = theMiniMap[? "titre"];
	
	var i = 0;
	while theMiniMap[? "effet_"+string(i)] != undefined
	{
		var effet = theMiniMap[? "effet_"+string(i)];
		var tmp = instance_create_depth(box.x-box.sprite_xoffset,box.y-box.sprite_yoffset+sprite_get_height(spr_input_texte)+ds_list_size(box.liste_effet)*100,-15,obj_effect_added);
		tmp.texte = scr_substring(effet,"-",":");
		tmp.effect_linked = scr_retrieve_effect(tmp.texte);
		tmp.contenu_effet = theMiniMap[? "effet_"+string(i)];
		tmp.parent = box;
		ds_list_add(box.liste_effet,tmp);
		i += 1;
	}
	while theMiniMap[? "suivant_"+string(i)] != undefined
	{
		var val = theMiniMap[? "suivant_"+string(i)];
		ds_list_add(box.link_front.linked,val);
		
		i += 1;
	}
	input_text_set_enabled(box.titre, false);
	input_text_set_enabled(box.texte, false);
	clef = ds_map_find_next(theMap, clef);
}

with obj_meta_box
{
	for(var i=0;i<ds_list_size(self.link_front.linked);i++)
		ds_list_replace(self.link_front.linked,i,map_correspondance[? ds_list_find_value(self.link_front.linked,i)].link_back);
}