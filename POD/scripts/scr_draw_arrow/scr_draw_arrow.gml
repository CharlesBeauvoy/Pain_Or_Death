///@param dest
///@param line_width
///@param source
///@param type

var posSX = argument2.x;
var posSY = argument2.y;

var posDX = argument0.x;
var posDY = argument0.y;

if (posDX >= posSX and posDY >= posSY)
{
	posSX = argument2.x+argument2.sprite_width/2;
	posSY = argument2.y-argument2.sprite_height/2;
	posDX += argument0.sprite_width/2;
	posDY -= argument0.sprite_height/2;
}
else if (posDX >= posSX and posDY < posSY)
{
	posSX = argument2.x+argument2.sprite_width/2;
	posSY = argument2.y+argument2.sprite_height/2;
	posDX += argument0.sprite_width/2;
	posDY += argument0.sprite_height/2;
}
else if (posDX < posSX and posDY < posSY)
{
	posSX = argument2.x-argument2.sprite_width/2;
	posSY = argument2.y+argument2.sprite_height/2;
	posDX -= argument0.sprite_width/2;
	posDY += argument0.sprite_height/2;
}
else if (posDX < posSX and posDY >= posSY)
{
	posSX = argument2.x-argument2.sprite_width/2;
	posSY = argument2.y-argument2.sprite_height/2;
	posDX -= argument0.sprite_width/2;
	posDY -= argument0.sprite_height/2;
}
draw_line_width(posSX,posSY,posDX,posDY,argument1);
draw_arrow(posSX,posSY,posDX,posDY,40);
if argument3 != "" and argument3 != noone
{
	middle_x = (posSX+posDX)/2;
	middle_y = (posSY+posDY)/2;
	draw_set_font(fnt_bouton_panel_droit);
	var xscale = camera_get_view_width(view_camera[0]) / 1920;
	var yscale = camera_get_view_height(view_camera[0]) / 1080;
	draw_text_transformed(middle_x+20,middle_y+20,argument3,xscale, yscale,0);
}