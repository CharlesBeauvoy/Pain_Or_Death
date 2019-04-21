/// @description Take input

if (ord(keyboard_lastchar) < 48 or ord(keyboard_lastchar) > 57) and keyboard_check_released(vk_anykey) and !keyboard_check_released(vk_backspace)
{
	//keyboard_lastchar = "";
	keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);
}
if keyboard_check_released(vk_backspace) or (string_length(displaytext) < 3 and ord(keyboard_lastchar) >= 48 and ord(keyboard_lastchar) <= 57)
	scr_inputbox_input();
	
keyboard_string = string_copy(keyboard_string,1,3);