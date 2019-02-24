///@param amount

obj_jauge_souffrance.value_current += argument0;
if obj_jauge_souffrance.value_current > obj_jauge_sang.value_current
	room_goto(rm_game_over);