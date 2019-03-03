///@param amount

obj_month.day += argument0;
obj_month.day_left -= argument0;

if obj_month.day > 28
{
	obj_month.day -= 28;
	scr_switch_month();
}