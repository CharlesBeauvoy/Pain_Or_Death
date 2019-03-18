draw_self();

draw_set_color(c_black);
draw_set_font(fnt_infos_contexte);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+sprite_width/2,y+sprite_height/2,texte);

draw_set_halign(fa_left);
draw_set_valign(fa_top);