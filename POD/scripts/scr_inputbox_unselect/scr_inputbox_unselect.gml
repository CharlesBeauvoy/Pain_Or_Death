///@function scr_inputbox_unselect();
///@description Set the input box to stop taking input
if (selected == true)
{
	selected = false;
	selectall = false;
	vbar = "";
	alarm[0] = -1;
}