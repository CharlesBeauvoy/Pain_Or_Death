//draw_self();

draw_set_font(font);
draw_set_color(c_black);
draw_set_valign(true);

draw_text(x,y,texte);

draw_set_valign(false);

if hyperlink
	draw_line_width(x,y+sprite_height/2,x+sprite_width,y+sprite_height/2,3);