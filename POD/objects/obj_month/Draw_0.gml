draw_set_font(fnt_jauge);
draw_set_color(c_black);

draw_set_valign(true);

draw_text(x,y,string(day)+" "+ds_list_find_value(month_list,month)+" - "+string(day_left)+" jours restants avant le meurtre");

draw_set_valign(false);