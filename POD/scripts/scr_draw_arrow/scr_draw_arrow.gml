///@param dest
///@param line_width
///@param source

var posSX = argument2.x;
var posSY = argument2.y;

var posDX = argument0.x;
var posDY = argument0.y;

if (posDX >= posSX and posDY >= posSY)
{
	posSX = argument2.x+sprite_width/2;
	posSY = argument2.y-sprite_height/2;
	posDX += argument0.sprite_width/2;
	posDY -= argument0.sprite_height/2;
}
else if (posDX >= posSX and posDY < posSY)
{
	posSX = argument2.x+sprite_width/2;
	posSY = argument2.y+sprite_height/2;
	posDX += argument0.sprite_width/2;
	posDY += argument0.sprite_height/2;
}
else if (posDX < posSX and posDY < posSY)
{
	posSX = argument2.x-sprite_width/2;
	posSY = argument2.y+sprite_height/2;
	posDX -= argument0.sprite_width/2;
	posDY += argument0.sprite_height/2;
}
else if (posDX < posSX and posDY >= posSY)
{
	posSX = argument2.x-sprite_width/2;
	posSY = argument2.y-sprite_height/2;
	posDX -= argument0.sprite_width/2;
	posDY -= argument0.sprite_height/2;
}

draw_line_width(posSX,posSY,posDX,posDY,argument1);
draw_arrow(posSX,posSY,posDX,posDY,40);