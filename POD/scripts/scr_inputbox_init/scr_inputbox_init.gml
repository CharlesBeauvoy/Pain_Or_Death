///@function scr_inputbox_init(left,top,right,bottom,xoffset,yoffset,maxwidth,font,hidden,hiddenfont,hiddensymbol,defaulttext,startselected,vbar);
///@description Initialize the input box variables
///@param left The x coordinate to start drawing the input box
///@param top The y coordinate to start drawing the input box
///@param right The x coordinate to finish drawing the input box
///@param bottom The y coordinate to finish drawing the input box
///@param xoffset The amount of pixels from left to start drawing the input text
///@param yoffset The amount of pixels from top to start drawing the input text
///@param maxwidth The max width in pixels the input text can be
///@param font The font of the input text
///@param hidden Whether the input text is converted to the hiddensymbol
///@param hiddenfont The font to use for the hidden text
///@param hiddensymbol The symbol to use for the hidden text (e.g. *)
///@param defaulttext The default text shown in the input box
///@param startselected Whether the input box will take input as soon as its created or must be clicked first
///@param vbarinterval The amount of steps/frames for the vbar to be shown/hidden (-1 to not show a vbar)
///Place in Create event

left = argument0;
top = argument1;
right = argument2;
bottom = argument3;
xoffset = argument4;
yoffset = argument5;
maxwidth = argument6;
font = argument7;
hidden = argument8;
hiddenfont = argument9;
hiddensymbol = argument10;
text = argument11;
selected = argument12;
vbarinterval = argument13;

displaytext = text;
selectall = false;
if (vbarinterval > -1)
{vbar = "|";}
else
{vbar = "";}

//start selected
if (selected == true)
{
	keyboard_string = text;
	if (vbarinterval > -1)
	{alarm[0] = vbarinterval;}	
}