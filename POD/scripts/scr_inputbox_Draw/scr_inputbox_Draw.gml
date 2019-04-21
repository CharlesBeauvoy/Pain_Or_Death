///@function scr_inputbox_Draw(drawbox,drawboxfill,boxselectedcolour,boxselectedfillcolour,boxunselectedcolour,boxunselectedfillcolour,textselectedcolour,textunselectedcolour,highlightcolour);
///@description Draw the input box
///@param drawbox Whether to draw the input box border
///@param drawboxfill Whether to draw the input box fill
///@param boxselectedcolour The selected colour of the input box border
///@param boxselectedfillcolour The selected colour to fill the input box
///@param boxunselectedcolour The unselected colour of the input box border
///@param boxunselectedfillcolour The unselected colour to fill the input box
///@param textselectedcolour The selected colour of the input text
///@param textunselectedcolour The unselected colour of the input text
///@param highlightcolour The colour of highlighting text

drawbox = argument0;
drawboxfill = argument1;
boxselectedcolour = argument2;
boxselectedfillcolour = argument3;
boxunselectedcolour = argument4;
boxunselectedfillcolour = argument5;
textselectedcolour = argument6;
textunselectedcolour = argument7;
highlightcolour = argument8;

if (hidden == true)
{draw_set_font(fnt_bouton_panel_droit);}
else
{draw_set_font(fnt_bouton_panel_droit);}

draw_set_halign(fa_middle);
draw_set_valign(fa_center);

if (selected == true)
{
	if (drawboxfill == true)
	{draw_rectangle_colour(left,top,right,bottom,boxselectedfillcolour,boxselectedfillcolour,boxselectedfillcolour,boxselectedfillcolour,0);}

	if (drawbox == true)
	{draw_rectangle_colour(left,top,right,bottom,boxselectedcolour,boxselectedcolour,boxselectedcolour,boxselectedcolour,1);}
	
	if (selectall == true)
	{draw_rectangle_colour(left+xoffset,top+yoffset,left+xoffset+string_width(displaytext),top+yoffset+string_height(displaytext),highlightcolour,highlightcolour,highlightcolour,highlightcolour,0);}
	
	draw_set_colour(textselectedcolour);
	draw_text(x,y,displaytext+vbar);
	//draw_text(left+xoffset,top+yoffset,displaytext+vbar);
}
else
{
	if (drawboxfill == true)
	{draw_rectangle_colour(left,top,right,bottom,boxunselectedfillcolour,boxunselectedfillcolour,boxunselectedfillcolour,boxunselectedfillcolour,0);}

	if (drawbox == true)
	{draw_rectangle_colour(left,top,right,bottom,boxunselectedcolour,boxunselectedcolour,boxunselectedcolour,boxunselectedcolour,1);}
	
	draw_set_colour(textunselectedcolour);
	draw_text(x,y,displaytext);
	//draw_text(left+xoffset,top+yoffset,displaytext);
}
draw_set_halign(fa_top);
draw_set_valign(fa_left);