///@param amount

var delta = obj_jauge_sang.value_current - argument0;

if delta <= 0
{
	obj_jauge_sang.value_current = 0;
	return scr_display_pop_up_lp();
}
else if obj_jauge_souffrance.value_current >= obj_jauge_sang.value_thresold
	return scr_lose();
	
scr_info_compteur(argument0, obj_jauge_sang, "-");	
obj_jauge_sang.value_current = delta;
return 1;