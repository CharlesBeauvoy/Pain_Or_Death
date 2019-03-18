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
