///@param amount

obj_jauge_souffrance.value_current += argument0;
if obj_jauge_souffrance.value_current > obj_jauge_sang.value_current
	room_goto(rm_game_over);
scr_info_compteur(argument0, obj_jauge_souffrance, "+");	