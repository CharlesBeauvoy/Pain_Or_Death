if display_aa > 12 display_reset(8, true);
full_screen = false;

instruction_list = ds_list_create();
ds_list_add(instruction_list, "ECHAP : switch fullscreen","SUPPR : Leave game","BACKSPACE : restart game",
"A-Q : Add/Del : Souffrance","Z-S : Add/Del : Sang", "R : Devoiler PNJ", "P : Toggle Panel",
"Shift : Zoom in/out max","G : Day +1","H : Hide interface","D : Hide instructions",
"Arrow : Move camera to border","C : Center camera","R : Reveal all");
//if display_aa > 12 display_reset(8, false);

zoom = false;
draw = true;
reveal = false;