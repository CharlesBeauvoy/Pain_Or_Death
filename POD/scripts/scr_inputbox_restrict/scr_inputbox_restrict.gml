///@function scr_inputbox_restrict(restrictedcharacter1,...,restrictedcharacter16);
///@description Stop the given characters from being entered in the input box (max of 16 - more than 16 will cause an error as GameMaker only allows argument[0] to argument[15])
///@param restrictedcharacter1 The character (as a string) to stop from being entered in the input box
///@param [...,16] The character (as a string) to stop from being entered in the input box
///PLACE BEFORE scr_inputbox_input in Step event

if (selected == true)
{
	/*if (argument_count >= 1)
	{
		for (var i=0; i<argument_count; i++)
		{
			keyboard_string = string_replace_all(keyboard_string,argument[i],"");
		}
	}*/
	if ord(keyboard_lastchar) < 48 or ord(keyboard_lastchar) > 57
		keyboard_string = string_replace(keyboard_string,keyboard_lastchar,"");
}