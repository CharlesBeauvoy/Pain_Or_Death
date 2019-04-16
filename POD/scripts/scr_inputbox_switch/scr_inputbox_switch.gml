///@function scr_inputbox_switch(targetobject);
///@description Unselect the currently selected input box and select the target input box (useful e.g. when pressing the Tab key)
///Must be used in conjunction with scr_inputbox_switch_Alarm1
///@param targetobject The input box object to select
if (selected == true && alarm[1] < 0)
{
	scr_inputbox_unselect();
	with (argument0)
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
			alarm[1] = 1;
		}
	}
}