///@param amount

var delta = obj_jauge_sang.value_current - argument0;

if delta <= 0
	return -1;
else if obj_jauge_souffrance.value_current > delta
	return room_goto(rm_game_over);
	
obj_jauge_sang.value_current = delta;
return 1;