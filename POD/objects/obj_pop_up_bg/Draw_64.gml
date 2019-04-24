draw_self();
draw_set_font(fnt_debug_mode);
draw_set_color(c_black);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "name");
draw_text(x-sprite_width/2+25,y+30,"Prénom : "+value);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "surname");
draw_text(x-sprite_width/2+25,y+60,"Nom de famille : "+value);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "age");
draw_text(x-sprite_width/2+25,y+90,"Âge : "+value);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "signe");
draw_text(x-sprite_width/2+25,y+120,"Signe Astro : "+value);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "metier");
draw_text(x-sprite_width/2+25,y+150,"Métier : "+value);

var value = ds_map_find_value(obj_persistent.pnj_selected.map_information_known, "lieu");
draw_text(x-sprite_width/2+25,y+180,"Lieu : "+value);

var hauteur = 265+obj_persistent.pnj_selected.bio_height;

for(var j=0;j<ds_list_size(obj_persistent.pnj_selected.clef_relation);j++)
{
	var clef = ds_list_find_value(obj_persistent.pnj_selected.clef_relation,j);
	var obj_relation = ds_map_find_value(obj_persistent.pnj_selected.map_relation,clef);
	if !obj_relation.unknown
	{
		if obj_relation.surname_relation_known
			draw_text(x-sprite_width/2+25,hauteur,clef+" : ");
		else
			draw_text(x-sprite_width/2+25,hauteur," ? : ");
		hauteur += string_height(clef);
	
		if obj_relation.fully_known
		{
			draw_text(x,hauteur,obj_relation.sentence);
			hauteur += string_height(obj_relation.sentence);
		}
		else
		{
			var tmp_texte = "";
			for(var i=0; i<ds_list_size(obj_relation.list_data);i++)
				tmp_texte += string(ds_list_find_value(obj_relation.list_data,i))+ "/ ";
				
			draw_text_ext(x-sprite_width/2+75,hauteur,tmp_texte,30,sprite_width-100);
			hauteur += string_height_ext(tmp_texte,30,sprite_width-100);
		}
		hauteur += 20;
	}
}
