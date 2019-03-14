///@param font
///@param color
///@param texte
///@param xscale
///@param yscale
///@param image_angle
draw_set_font(argument0);
draw_set_color(argument1);

draw_set_halign(true);
draw_set_valign(true);

draw_text_transformed(x,y,argument2,argument3,argument4,argument5);

draw_set_halign(false);
draw_set_valign(false);