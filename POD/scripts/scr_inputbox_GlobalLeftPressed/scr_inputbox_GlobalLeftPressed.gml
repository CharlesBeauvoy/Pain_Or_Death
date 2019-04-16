///@function scr_inputbox_GlobalLeftPressed();
///@description Set the input box to take or stop taking input with mouse click
if (mouse_x >= left && mouse_y >= top && mouse_x <= right && mouse_y <= bottom)
{
	if (selected == false)
	{
		keyboard_string = text;
		selected = true;
		if (vbarinterval > -1)
		{
			vbar = "|";
			alarm[0] = vbarinterval;
		}
	}
	else
	if (selectall == true)
	{selectall = false;}
}/*
else if (selected == true)
	scr_inputbox_unselect();