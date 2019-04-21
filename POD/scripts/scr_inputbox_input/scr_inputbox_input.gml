///@function scr_inputbox_input();
///@description Take input
///Place in Step event

if (selected == true)
{
	//write over select all
	if keyboard_check_pressed(vk_backspace)
	{
		keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);
		selectall = false;
	}
	if (selectall == true)
	{
		if keyboard_check_pressed(vk_backspace)
		{
			keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);
			selectall = false;
		}
		else
		{
			if (keyboard_check_pressed(vk_anykey)) and string_length(keyboard_string) < 3
			{
				if (string_pos(keyboard_lastchar,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890`~!@#$%^&*()-_=+[{]}\\|;:,<.>/?' \"") != 0)
				{
					keyboard_string = keyboard_lastchar;
					selectall = false;
				}
			}
		}
	}
	
	//select all
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("A")) && string_length(keyboard_string) >= 1)
	{selectall = true;}

	//limit input
	if (hidden == true)
	{
		draw_set_font(hiddenfont);
		if (string_width(string_repeat(hiddensymbol,string_length(keyboard_string))) > maxwidth)
		{keyboard_string = string_copy(keyboard_string,1,string_length(keyboard_string)-1);}
	}
	else
	{
		draw_set_font(font);
		if (string_width(keyboard_string) > maxwidth)
		{keyboard_string = string_copy(keyboard_string,1,string_length(keyboard_string)-1);}
	}

	//take input
	text = keyboard_string;
	
	//hide text
	
	if (hidden == true)
		displaytext = string_repeat(hiddensymbol,string_length(text));
	else
		displaytext = text;
}