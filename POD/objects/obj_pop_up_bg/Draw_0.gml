draw_self();
draw_set_font(fnt_debug_mode);
draw_set_color(c_black);

draw_text(x-sprite_width/2+25,y+30,"Prénom :"+obj_persistent.pnj_selected.name);
draw_text(x-sprite_width/2+25,y+60,"Nom de famille :"+obj_persistent.pnj_selected.surname);
draw_text(x-sprite_width/2+25,y+90,"Âge :"+obj_persistent.pnj_selected.age);
draw_text(x-sprite_width/2+25,y+120,"Signe Astro :"+obj_persistent.pnj_selected.signe.name);
draw_text(x-sprite_width/2+25,y+150,"Métier :"+obj_persistent.pnj_selected.metier);
draw_text(x-sprite_width/2+25,y+180,"Lieu :"+obj_persistent.pnj_selected.lieu);