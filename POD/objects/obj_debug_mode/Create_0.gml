if display_aa > 12 display_reset(8, true);
full_screen = false;

instruction_list = ds_list_create();
ds_list_add(instruction_list, "ECHAP : switch fullscreen","SUPPR : Leave game","BACKSPACE : restart game",
"A-Q : Add/Del : Souffrance","Z-S : Add/Del : Sang")
//if display_aa > 12 display_reset(8, false);