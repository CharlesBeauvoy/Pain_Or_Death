///@param font
///@param color
///@param texte
///@param sep
///@param width

draw_set_font(argument0);
draw_set_color(argument1);

draw_set_halign(true);
draw_set_valign(true);

draw_text_ext(x,y,argument2,argument3,argument4);

draw_set_halign(false);
draw_set_valign(false);