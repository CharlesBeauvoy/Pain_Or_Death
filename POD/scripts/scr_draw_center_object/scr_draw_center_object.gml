///@param font
///@param color
///@param texte
draw_set_font(argument0);
draw_set_color(argument1);

draw_set_halign(true);
draw_set_valign(true);

draw_text(x,y,argument2);

draw_set_halign(false);
draw_set_valign(false);